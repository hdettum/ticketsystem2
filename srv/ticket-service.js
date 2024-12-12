const cds = require('@sap/cds')
const log = cds.log('ticket-service')

class TicketService extends cds.ApplicationService {
    init() {
        const { 
            Tickets, 
            CreateSubaccountTickets,
            AddMembersTickets,
            DeleteSubaccountTickets,
            ChangeUserRoleTickets 
        } = this.entities

        // Logging für READ-Operationen
        this.before('READ', '*', async function beforeRead(request) {
            log.info('before READ - request.data:', request.data, '- request.params:', request.params)
        })

        this.on('READ', '*', async function onRead(request, next) {
            log.info('on READ - request.data:', request.data, '- request.params:', request.params)
            return next() 
        })

        this.after('READ', '*', async function afterRead(results, request) {
            log.info('after READ - request.data:', request.data, '- request.params:', request.params)
            if (Array.isArray(results)) {
                log.info('got ', results.length, 'results')
            }
        })


        this.before('CREATE', '*', async request => {
            log.info('Creating ticket:', request.data)
        })

        this.before('UPDATE', '*', async request => {
            log.info('Updating ticket:', request.data)
        })

        return super.init()
    }
}

module.exports = TicketService