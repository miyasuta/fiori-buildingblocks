sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'miyasuta/fiorielements/test/integration/pages/MainListReport' ,
        'miyasuta/fiorielements/test/integration/pages/MainObjectPage',
        'miyasuta/fiorielements/test/integration/OpaJourney'
    ],
    function(JourneyRunner, MainListReport, MainObjectPage, Journey) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('miyasuta/fiorielements') + '/index.html'
        });

        JourneyRunner.run(
            {
                pages: { onTheMainPage: MainListReport, onTheDetailPage: MainObjectPage }
            },
            Journey.run
        );
    }
);