//Component.js does not need to be changed - loads manifest.json-->
sap.ui.define(
    ["sap/fe/core/AppComponent"],
    function (Component) {
        "use strict";

        return Component.extend("ticketingsystem.Component", {
            metadata: {
                manifest: "json"
            }
        });
    }
);