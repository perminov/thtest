<?php
class Admin_AddressesController extends Indi_Controller_Admin {

    /**
     *
     */
    public function checkAction() {

        // Set no time limit and ignore user abort
        set_time_limit(0); ignore_user_abort(1);

        // Curl options, shared for all curl requests
        $optA = array(
            CURLOPT_TIMEOUT => 30,
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_SSL_VERIFYPEER => 0
        );

        // Headers, same for all curl requests
        $hdrA = array(
            'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'Accept-Encoding: gzip, deflate, br',
            'Accept-Language: ru-RU,en-US;q=0.8,ru;q=0.6,en;q=0.4,bg;q=0.2,la;q=0.2',
            'Cache-Control: no-cache',
            'Connection: keep-alive',
            'Pragma: no-cache',
            'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',
            'Host: service.nalog.ru'
        );

        // Obtain cookies
        $url = 'https://service.nalog.ru/addrfind.do';
        $cur = curl_init($url);
        curl_setopt_array($cur, $optA);
        curl_setopt($cur, CURLOPT_HTTPHEADER, array_merge($hdrA, array(
            'Upgrade-Insecure-Requests: 1',
            'Referer: https://www.google.ru/'
        )));
        $response = curl_exec($cur);

        // If response is boolean false - flush failure
        if ($response === false) jflush($response, '[step1] curl_exec() === false: ' . curl_error($cur));

        // If response's status code is not 200 flush failure
        if (($code = curl_getinfo($cur, CURLINFO_HTTP_CODE)) != 200)
            jflush(false, '[step1] Страница ' . $url . ' ответила HTTP кодом ' . $code);

        // If it is not possible to detect captcha token - flush failure
        if (!$token = Indi::rexm('~<input\s+type="hidden"\s+name="captchaToken"\s+value="([^"]+)"/>~', $response, 1))
            jflush(false, '[step1] Не удалось найти токен капчи в HTML-коде страницы ' . $url);

        // Prepare for picking image binary
        $url = 'https://service.nalog.ru/static/captcha.html?a=' . $token;
        curl_setopt($cur, CURLOPT_URL, $url);
        curl_setopt($cur, CURLOPT_HTTPHEADER, array_merge($hdrA, array(
            'Referer: https://service.nalog.ru/addrfind.do'
        )));
        $response = curl_exec($cur);

        // If response is boolean false - flush failure
        if ($response === false) jflush($response, '[step2] curl_exec() === false: ' . curl_error($cur));

        // If response's status code is not 200 flush failure
        if (($code = curl_getinfo($cur, CURLINFO_HTTP_CODE)) != 200)
            jflush(false, '[step2] Страница ' . $url . ' ответила HTTP кодом ' . $code);

        // Save captcha as a file
        $this->row->file('captchaImg', 'gif', $response);

        // Include Anti-captha lib
        include("anticaptcha/anticaptcha.php");
        include("anticaptcha/imagetotext.php");

        // Setup Anti-captcha instance
        $api = new ImageToText();
        $api->setVerboseMode(true);
        $api->setKey(Indi::ini('anticaptcha')->key);
        $api->setFile($this->row->abs('captchaImg'));

        // Try to create imageToText captcha task, and if no success - flush error
        ob_start(); $task = $api->createTask(); $out = ob_get_clean();
        if (!$task) jflush(false, '[step3] Не удалось создать задание: ' . $out . ' ' . $api->getErrorMessage());

        // Save captcha task id
        $this->row->captchaTask = $api->getTaskId();
        $this->row->save();

        // Wait for result
        ob_start(); $wait = $api->waitForResult(); $out = ob_get_clean();
        if (!$wait) jflush(false, '[step4] Не удалось разгадать капчу: ' . $out . ' ' . $api->getErrorMessage());

        // Check if $api->getTaskSolution() call returned error code instead of captcha value, and if so - flush error
        if (!Indi::rexm('int11', $code = $api->getTaskSolution()))
            jflush(false, '[step4] Не удалось разгадать капчу: ' . $code);

        // Save captcha solution
        $this->row->captchaCode = $code;
        $this->row->save();

        // Prepare for picking image binary
        $url = 'https://service.nalog.ru/addr-find-proc.do';

        // Get normalized address data
        $dadataO = array_pop(json_decode($this->row->dadata));

        // Prepare request data
        $data = array(
            'queryId' => '',
            'regionName' => '',
            'districtName' => '',
            'cityName' => '',
            'localityName' => '',
            'streetName' => '',
            'houseName' => '',
            'region' => '',
            'district' => '',
            'city' => '',
            'locality' => '',
            'street' => $dadataO->street_kladr_id ?: $dadataO->settlement_kladr_id,
            'house' => $dadataO->house,
            'captcha' => $this->row->captchaCode,
            'captchaToken' => $token
        );

        curl_setopt($cur, CURLOPT_URL, $url);
        curl_setopt($cur, CURLOPT_CUSTOMREQUEST, 'POST');
        curl_setopt($cur, CURLOPT_POST, 1);
        curl_setopt($cur, CURLOPT_POSTFIELDS, $body = http_build_query($data));
        array_shift($hdrA);
        curl_setopt($cur, CURLOPT_HTTPHEADER, array_merge($hdrA, array(
            'Content-Length: ' . strlen($body),
            'Accept: application/json, text/javascript, */*; q=0.01',
            'Origin: https://service.nalog.ru',
            'X-Requested-With: XMLHttpRequest',
            'Content-Type: application/x-www-form-urlencoded',
            'Referer: https://service.nalog.ru/addrfind.do'
        )));
        $response = curl_exec($cur);

        // If response is boolean false - flush failure
        if ($response === false) jflush($response, '[step5] curl_exec() === false: ' . curl_error($cur));

        // If response is a json-encoded string, convert it back to array
        if (Indi::rexm('json', $response)) $json = json_decode($response, true);

        // If response's status code is not 200 flush failure
        if (($code = curl_getinfo($cur, CURLINFO_HTTP_CODE)) != 200) {

            // Build errors to display
            if ($json['ERRORS'])
                foreach ($json['ERRORS'] as $prop => $propErrorA)
                    $mismatch[] = '<br> &raquo; ' . $prop . ': ' . im($propErrorA);

            // Flush failure
            jflush(false, '[step5] Страница ' . $url . ' ответила HTTP кодом ' . $code .
                ($json['ERRORS'] ? '<br>' . im($mismatch, '') : ''));
        }

        // Set `updated` date
        $this->row->updated = date('Y-m-d', strtotime($json['loadDate']));
        $this->row->status = 'done';
        $this->row->save();

        // If no LLCs found - flush ok
        if (!$json['rowsFound']) jflush(true, 'В налоговой отсутствует информация о юрлицах, зарегистрирванных по данному адресу');

        // Set LLCs qty
        $this->row->llcQty = $json['rows'][0]['REG_COUNT'];
        $this->row->save();

        // Flush ok
        jflush(true, 'По данному адресу зарегистрировано ' . tbq($this->row->llcQty, 'юрлиц,юрлицо,юрлиц'));
    }
}