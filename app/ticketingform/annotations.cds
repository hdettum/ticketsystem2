using TicketService as service from '../../srv/ticket-service';

annotate service.Tickets with @(
  UI.FieldGroup #GeneratedGroup        : {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: ID,
        Label: 'ID',
      },
       {
        $Type: 'UI.DataField',
        Value: modifiedAt,
      },
       {
        $Type: 'UI.DataField',
        Value: modifiedBy,
      },
      {
        $Type: 'UI.DataField',
        Value: category_code,
      },
      {
        $Type: 'UI.DataField',
        Value: projectManager,
      },
      {
        $Type: 'UI.DataField',
        Value: description,
      },
  
    ],
  },
  UI.Facets                            : [
    {
      $Type        : 'UI.ReferenceFacet',
      ID           : 'GeneratedFacet1',
      Label        : 'General Information',
      Target       : '@UI.FieldGroup#GeneratedGroup',
      ![@UI.Hidden]: false,
    },
    {
      $Type        : 'UI.ReferenceFacet',
      ID           : 'AddMemberstoSubaccount',
      Label        : 'Add Members to Subaccount',
      Target       : '@UI.FieldGroup#AddMemberstoSubaccount',
      ![@UI.Hidden]: {$edmJson: {$If: [
        {$Eq: [
          {$Path: 'category_code'},
          'AddMembersToSubaccount'
        ]},
        false,
        true
      ]}},
    },
    {
      $Type        : 'UI.ReferenceFacet',
      ID           : 'DeleteSubaccount',
      Label        : 'Delete Subaccount',
      Target       : '@UI.FieldGroup#DeleteSubaccount',
      ![@UI.Hidden]: {$edmJson: {$If: [
        {$Eq: [
          {$Path: 'category_code'},
          'DeleteSubaccount'
        ]},
        false,
        true
      ]}},
    },
    {
      $Type        : 'UI.ReferenceFacet',
      ID           : 'CreateSubaccount',
      Label        : 'Create Subaccount',
      Target       : '@UI.FieldGroup#CreateSubaccount',
      ![@UI.Hidden]: {$edmJson: {$If: [
        {$Eq: [
          {$Path: 'category_code'},
          'CreateSubaccount'
        ]},
        false,
        true
      ]}},
    },

     {
      $Type        : 'UI.ReferenceFacet',
      ID           : 'ChangeUserRoleCollection',
      Label        : 'Change user role collection',
      Target       : '@UI.FieldGroup#ChangeUserRoleCollection',
      ![@UI.Hidden]: {$edmJson: {$If: [
        {$Eq: [
          {$Path: 'category_code'},
          'ChangeUserRoleCollection'
        ]},
        false,
        true
      ]}},
    },

  ],
  UI.FieldGroup #Test                  : {
    $Type: 'UI.FieldGroupType',
    Data : [{
      $Type: 'UI.DataField',
      Value: to_AddMembers.businessUnit,
    }, ],
  },
   UI.FieldGroup #CreateSubaccount                 : {
    $Type: 'UI.FieldGroupType',
    Data : [
    {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.subaccountDisplayName,
    },
    {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.costApprover,
    },
    {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.businessUnit,
    },
    {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.costCenter,
    },
     {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.subaccountDescription,
    }, 
     {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.subaccountRegion,
    }, 
     {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.subaccountParent,
    }, 
     {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.subaccountLabels,
    }, 
    {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.forProduction,
    }, 
    {
      $Type: 'UI.DataField',
      Value: to_CreateSubaccount.betaFeatureEnabled,
    }, ],
  },
  UI.FieldGroup #DeleteSubaccount      : {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: to_DeleteSubaccount.subaccountDisplayName,
      },
    ],
  },
  UI.FieldGroup #ChangeUserRoleCollection     : {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: to_ChangeRole.userIdToBeChanged,
      },
       {
        $Type: 'UI.DataField',
        Value: to_ChangeRole.emailToBeChanged,
      },
       {
        $Type: 'UI.DataField',
        Value: to_ChangeRole.identityProvider,
      },
       {
        $Type: 'UI.DataField',
        Value: to_ChangeRole.newRoleCollection,
      },
    ],
  },
  UI.FieldGroup #AddMemberstoSubaccount: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.businessUnit,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.costApprover,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.costCenter,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.nameOfUserToBeAdded,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.roleCollection,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.subaccountDisplayName,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.typeOfUser,
      },
    ],
  },
);

annotate service.Tickets with {
  category       @Common.FieldControl: 7; //For reference: https://sap.github.io/odata-vocabularies/vocabularies/Common.html#FieldControlType
  projectManager @Common.FieldControl: 7;
  description    @Common.FieldControl: 7;
};

annotate service.CreateSubaccountDetails with {
  subaccountDisplayName @Common.FieldControl: 7;
  costApprover          @Common.FieldControl: 7;
  businessUnit          @Common.FieldControl: 7;
  costCenter            @Common.FieldControl: 7;
};

annotate service.AddMembersDetails with {
  subaccountDisplayName @Common.FieldControl: 7;
  typeOfUser            @Common.FieldControl: 7;
  nameOfUserToBeAdded   @Common.FieldControl: 7;
  roleCollection        @Common.FieldControl: 7;
};

annotate service.DeleteSubaccountDetails with {
  subaccountDisplayName @Common.FieldControl: 7;
};

annotate service.ChangeUserRoleDetails with {
  userIdToBeChanged @Common.FieldControl: 7;
  newRoleCollection @Common.FieldControl: 7;
};

annotate service.Tickets with {
  category @(
    Common.ValueListWithFixedValues: true
  )
};

annotate service.Tickets with {
  description @UI.MultiLineText: true
};
annotate service.TicketCategory with {
    code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};

