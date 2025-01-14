sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ticketingform/test/integration/FirstJourney',
		'ticketingform/test/integration/pages/TicketsObjectPage'
    ],
    function(JourneyRunner, opaJourney, TicketsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ticketingform') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTicketsObjectPage: TicketsObjectPage
                }
            },
            opaJourney.run
        );
    }
);