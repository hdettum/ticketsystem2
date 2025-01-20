using TicketService as service from '../../srv/ticket-service';

annotate service.Tickets with @(
  UI.FieldGroup #GeneratedGroup        : {
    $Type: 'UI.FieldGroupType',
    Data : [
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
      }
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

  ],
  UI.FieldGroup #Test                  : {
    $Type: 'UI.FieldGroupType',
    Data : [{
      $Type: 'UI.DataField',
      Value: to_AddMembers.businessUnit,
    }, ],
  },
  UI.FieldGroup #DeleteSubaccount      : {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: to_DeleteSubaccount.modifiedAt,
      },
      {
        $Type: 'UI.DataField',
        Value: to_DeleteSubaccount.modifiedBy,
      },
      {
        $Type: 'UI.DataField',
        Value: to_DeleteSubaccount.subaccountDisplayName,
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
        Value: to_AddMembers.createdAt,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.createdBy,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.ID,
        Label: 'ID',
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.modifiedAt,
      },
      {
        $Type: 'UI.DataField',
        Value: to_AddMembers.modifiedBy,
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

