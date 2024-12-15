const cds = require('@sap/cds');
const log = cds.log('ticket-service');

class TicketService extends cds.ApplicationService {
    init() {
        const { 
            Tickets, 
            CreateSubaccountTickets,
            AddMembersTickets,
            DeleteSubaccountTickets,
            ChangeUserRoleTickets 
        } = this.entities;

     

        // 1. Vor einer READ-Operation
        this.before('READ', '*', async function beforeRead(request) {
            // Logge die angeforderten Daten und Parameter
            log.info('before READ - request.data:', request.data, '- request.params:', request.params);
        });

        // 2. Während einer READ-Operation
        this.on('READ', '*', async function onRead(request, next) {
            // Logge die angeforderten Daten und Parameter
            log.info('on READ - request.data:', request.data, '- request.params:', request.params);
            // Übergib die Anfrage an die Standard-READ-Logik
            return next();
        });

        // 3. Nach einer READ-Operation
        this.after('READ', '*', async function afterRead(results, request) {
            // Logge die angeforderten Daten und die Anzahl der Ergebnisse
            log.info('after READ - request.data:', request.data, '- request.params:', request.params);
            if (Array.isArray(results)) {
                log.info('got ', results.length, 'results');
            }
        });

        /**
         * Logging für CREATE-Operationen
         * Hier wird protokolliert, welche Daten erstellt werden.
         */
        this.before('CREATE', '*', async request => {
            // Logge die zu erstellenden Daten
            log.info('Creating ticket:', request.data);
        });

        /**
         * Logging für UPDATE-Operationen
         * Hier wird protokolliert, welche Daten aktualisiert werden.
         */
        this.before('UPDATE', '*', async request => {
            // Logge die zu aktualisierenden Daten
            log.info('Updating ticket:', request.data);
        });

        return super.init();
    }
}

module.exports = TicketService;
