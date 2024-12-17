using { projectportfolio.db as db } from '../db/schema';

@path: '/ticket'
service TicketService {
    @odata.draft.enabled
    entity Tickets as projection on db.Ticket {
        *,
        category @mandatory,
        projectManager @mandatory,
        description @mandatory
    };

    @odata.draft.enabled
    entity CreateSubaccountTickets as projection on db.CreateSubaccount {
        *,
        category @mandatory,
        projectManager @mandatory,
        description @mandatory,
        subaccountDisplayName @mandatory,
        costApprover @mandatory,
        businessUnit @mandatory,
        costCenter @mandatory,
        subaccountDescription @mandatory,
        subaccountRegion @mandatory,
        subaccountParent @mandatory
    };

    @odata.draft.enabled
    entity AddMembersTickets as projection on db.AddMembersToSubaccount {
        *,
        category @mandatory,
        projectManager @mandatory,
        description @mandatory,
        subaccountDisplayName @mandatory,
        costApprover @mandatory,
        businessUnit @mandatory,
        costCenter @mandatory,
        typeOfUser @mandatory,
        nameOfUserToBeAdded @mandatory,
        roleCollection @mandatory
    };

    @odata.draft.enabled
    entity DeleteSubaccountTickets as projection on db.DeleteSubaccount {
        *,
        category @mandatory,
        projectManager @mandatory,
        description @mandatory,
        subaccountDisplayName @mandatory
    };

    @odata.draft.enabled
    entity ChangeUserRoleTickets as projection on db.ChangeUserRoleCollection {
        *,
        category @mandatory,
        projectManager @mandatory,
        description @mandatory,
        userIdToBeChanged @mandatory,
        emailToBeChanged @mandatory,
        identityProvider @mandatory,
        newRoleCollection @mandatory
    };
}