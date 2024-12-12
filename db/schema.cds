namespace projectportfolio.db;
using { cuid, managed} from '@sap/cds/common';

// Basis Ticket Entity
entity Ticket : cuid, managed {
    category : TicketCategory not null @title: 'Category';
    projectManager : String @title: 'Project Manager';
    description : String @title: 'Description';
}

type TicketCategory : String enum {
    CreateSubaccount = 'CreateSubaccount';
    AddMembersToSubaccount = Als Datenmodell angelegt basieren auf wie es in der Präsentation'AddMembersToSubaccount';
    DeleteSubaccount = 'DeleteSubaccount';
    ChangeUserRoleCollection = 'ChangeUserRoleCollection';
    Other = 'Other'; Ja
}

entity CreateSubaccount : Ticket {
    subaccountDisplayName : String @title: 'Subaccount Display Name';
    costApprover : String @title: 'Cost Approver';
    businessUnit : String @title: 'Business Unit';
    costCenter : String @title: 'Cost Center';
    subaccountDescription : String @title: 'Subaccount Description';
    subaccountRegion : String @title: 'Subaccount Region';
    subaccountParent : String @title: 'Subaccount Parent';
    subaccountLabels : String @title: 'Subaccount Labels';
    forProduction : Boolean @title: 'For Production';
    betaFeatureEnabled : Boolean @title: 'Beta Feature Enabled';
}

entity AddMembersToSubaccount : Ticket {
    subaccountDisplayName : String @title: 'Subaccount Display Name';
    costApprover : String @title: 'Cost Approver';
    businessUnit : String @title: 'Business Unit';
    costCenter : String @title: 'Cost Center';
    typeOfUser : String @title: 'Type of User';
    nameOfUserToBeAdded : String @title: 'Name of user to be added';
    roleCollection : String @title: 'Role Collection';
}

entity DeleteSubaccount : Ticket {
    subaccountDisplayName : String @title: 'Subaccount Display Name';
}

entity ChangeUserRoleCollection : Ticket {
    userIdToBeChanged : String @title: 'User ID to be changed';
    emailToBeChanged : String @title: 'Email to be changed';
    identityProvider : String @title: 'Identity Provider';
    newRoleCollection : String @title: 'New Role Collection';
}