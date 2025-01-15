using TicketService as service from '../../srv/ticket-service';
annotate service.Tickets with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : category,
            },
            {
                $Type : 'UI.DataField',
                Value : projectManager,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.FieldGroup #Test : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.businessUnit,
            },
        ],
    },
    UI.FieldGroup #DeleteSubaccount : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_DeleteSubaccount.modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : to_DeleteSubaccount.modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : to_DeleteSubaccount.subaccountDisplayName,
            },
        ],
    },
    UI.FieldGroup #AddMemberstoSubaccount : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.businessUnit,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.costApprover,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.costCenter,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.nameOfUserToBeAdded,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.roleCollection,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.subaccountDisplayName,
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.to_AddMembers_ID,
                Label : 'to_AddMembers_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.to_ChangeRole_ID,
                Label : 'to_ChangeRole_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.to_CreateSubaccount_ID,
                Label : 'to_CreateSubaccount_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.to_DeleteSubaccount_ID,
                Label : 'to_DeleteSubaccount_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : to_AddMembers.typeOfUser,
            },
        ],
    },
);

annotate service.Tickets with {
    category @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Tickets',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : category,
                    ValueListProperty : 'category',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};

annotate service.Tickets with {
    description @UI.MultiLineText : true
};

