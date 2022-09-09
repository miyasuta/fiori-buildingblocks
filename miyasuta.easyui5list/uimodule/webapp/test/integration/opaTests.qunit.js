/* global QUnit */

QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
    "use strict";

    sap.ui.require(["miyasuta/easyui5list/test/integration/AllJourneys"], function () {
        QUnit.start();
    });
});
