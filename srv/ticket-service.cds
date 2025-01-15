using { projectportfolio.db as db } from '../db/schema';

@path: '/ticket'
service TicketService {

    @odata.draft.enabled
    entity Tickets as projection on db.Ticket {
        ID,                           // Primärschlüssel der Ticket-Entität
        category @mandatory,          // Kategorie des Tickets
        projectManager @mandatory,    // Projektmanager
        description @mandatory,       // Beschreibung
        to_CreateSubaccount,          // Navigation zur CreateSubaccount-Entität
        to_AddMembers,                // Navigation zur AddMembersToSubaccount-Entität
        to_DeleteSubaccount,          // Navigation zur DeleteSubaccount-Entität
        to_ChangeRole                 // Navigation zur ChangeUserRoleCollection-Entität
    };

    // Details zu CreateSubaccount
    entity CreateSubaccountDetails as projection on db.CreateSubaccount {
        ID,                             // Primärschlüssel der Sub-Entität
        subaccountDisplayName @mandatory,
        costApprover @mandatory,
        businessUnit @mandatory,
        costCenter @mandatory,
        subaccountDescription,
        subaccountRegion,
        subaccountParent,
        subaccountLabels,
        forProduction,
        betaFeatureEnabled
    };

    // Details zu AddMembers
    entity AddMembersDetails as projection on db.AddMembersToSubaccount {
        ID,                             // Primärschlüssel der Sub-Entität
        subaccountDisplayName @mandatory,
        costApprover,
        businessUnit,
        costCenter,
        typeOfUser @mandatory,
        nameOfUserToBeAdded @mandatory,
        roleCollection @mandatory
    };

    // Details zu DeleteSubaccount
    entity DeleteSubaccountDetails as projection on db.DeleteSubaccount {
        ID,                             // Primärschlüssel der Sub-Entität
        subaccountDisplayName @mandatory
    };

    // Details zu ChangeUserRoleCollection
    entity ChangeUserRoleDetails as projection on db.ChangeUserRoleCollection {
        ID,                             // Primärschlüssel der Sub-Entität
        userIdToBeChanged @mandatory,
        emailToBeChanged,
        identityProvider,
        newRoleCollection @mandatory
    };
}
