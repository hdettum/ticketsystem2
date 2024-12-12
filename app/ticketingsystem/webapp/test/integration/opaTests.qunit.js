sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ticketingsystem/test/integration/FirstJourney',
		'ticketingsystem/test/integration/pages/List',
		'ticketingsystem/test/integration/pages/ObjectPage'
    ],
    function(JourneyRunner, opaJourney, List, ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ticketingsystem') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheList: List,
					onTheObjectPage: ObjectPage
                }
            },
            opaJourney.run
        );
    }
);