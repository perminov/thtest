Ext.define('Indi.controller.addresses', {
    extend: 'Indi.lib.controller.Controller',
    actionsConfig: {
        index: {
            gridColumn$LlcQty: {displayZeroes: false},
            gridColumn$CaptchaCode: {displayZeroes: false}
        },
        form: {

        }
    }
});