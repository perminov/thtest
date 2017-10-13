<?php
class Address_Row extends Indi_Db_Table_Row {

    /**
     * @return int
     */
    public function save(){

        // Set `title`
        $this->title = $this->postcode .  ' ' . $this->city . ' ' . $this->address;

        // Standard save
        return parent::save();
    }

    public function onBeforeSave() {

        // If `postcode`, `city` and `address` props weren't modified - return
        if (!$this->isModified('title')) return;

        // Setup curl
        curl_setopt_array($curl = curl_init(), array(
            CURLOPT_URL => Indi::ini('dadata')->url,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_SSL_VERIFYPEER => 0,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_encode(array($this->title)),
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json',
                'Authorization: Token ' . Indi::ini('dadata')->token,
                'X-Secret: ' . Indi::ini('dadata')->secret
            )
        ));

        // Make request
        $response = curl_exec($curl);

        // If response is boolean false - flush failure
        if ($response === false)
            $this->mflush('#row', 'Не получается сделать запрос в DaData - curl_exec() === false: ' . curl_error($curl));

        // If response's status code is not 200 flush failure
        if (($code = curl_getinfo($curl, CURLINFO_HTTP_CODE)) != 200)
            $this->mflush('#row', 'Статус ответа от DaData: HTTP ' . $code);

        // Decode json
        if (!$json = json_decode($response, true)) $this->mflush('#row', 'Ответ от DaData не является JSON-ом');

        // If response format is ok, but no result
        if (!$json[0]['house_kladr_id'] && !$json[0]['settlement_kladr_id'] && !$json[0]['house'])
            $this->mflush('#row', 'Ответ от DaData: не удалось распознать адрес ' . $this->title);

        // Set `dadata` prop
        $this->dadata = $response;
    }
}