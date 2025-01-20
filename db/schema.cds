namespace projectportfolio.db;

using {
  cuid,
  managed,
  sap.common.CodeList
} from '@sap/cds/common';

// Basis Ticket Entity
entity Ticket : managed, cuid {
  category            : Association to TicketCategory not null @title: 'Category';
  projectManager      : String                                 @title: 'Project Manager';
  description         : String                                 @title: 'Description';
  to_CreateSubaccount : Composition of one CreateSubaccount;
  to_AddMembers       : Composition of one AddMembersToSubaccount;
  to_DeleteSubaccount : Composition of one DeleteSubaccount;
  to_ChangeRole       : Composition of one ChangeUserRoleCollection;

}

entity TicketCategory : CodeList {
      @Common.Label: '{i18n>status}'
  key code : String enum {
        CreateSubaccount         = 'CreateSubaccount';
        AddMembersToSubaccount   = 'AddMembersToSubaccount';
        DeleteSubaccount         = 'DeleteSubaccount';
        ChangeUserRoleCollection = 'ChangeUserRoleCollection';
        Other                    = 'Other'
      };
}

entity CreateSubaccount : managed, cuid {
  subaccountDisplayName : String  @title: 'Subaccount Display Name';
  costApprover          : String  @title: 'Cost Approver';
  businessUnit          : String  @title: 'Business Unit';
  costCenter            : String  @title: 'Cost Center';
  subaccountDescription : String  @title: 'Subaccount Description';
  subaccountRegion      : String  @title: 'Subaccount Region';
  subaccountParent      : String  @title: 'Subaccount Parent';
  subaccountLabels      : String  @title: 'Subaccount Labels';
  forProduction         : Boolean @title: 'For Production';
  betaFeatureEnabled    : Boolean @title: 'Beta Feature Enabled';
}

entity AddMembersToSubaccount : managed, cuid {
  subaccountDisplayName : String @title: 'Subaccount Display Name';
  costApprover          : String @title: 'Cost Approver';
  businessUnit          : String @title: 'Business Unit';
  costCenter            : String @title: 'Cost Center';
  typeOfUser            : String @title: 'Type of User';
  nameOfUserToBeAdded   : String @title: 'Name of user to be added';
  roleCollection        : String @title: 'Role Collection';
}

entity DeleteSubaccount : managed, cuid {
  subaccountDisplayName : String @title: 'Subaccount Display Name';
}

entity ChangeUserRoleCollection : managed, cuid {
  userIdToBeChanged : String @title: 'User ID to be changed';
  emailToBeChanged  : String @title: 'Email to be changed';
  identityProvider  : String @title: 'Identity Provider';
  newRoleCollection : String @title: 'New Role Collection';
}
