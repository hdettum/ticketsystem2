using TicketService as service from '../../srv/ticket-service';

annotate service.Tickets with @(UI.LineItem: [
  {
    $Type                : 'UI.DataField',
    Value                : ID,
    ![@UI.Importance]    : #Medium,
    ![@HTML5.CssDefaults]: {width: '5em'}
  },
   {
    $Type                : 'UI.DataField',
    Value                :  modifiedBy,
    ![@UI.Importance]    : #Medium,
    ![@HTML5.CssDefaults]: {width: '5em'}
  },
  {
    $Type                : 'UI.DataField',
    Value                :  modifiedAt,
    ![@UI.Importance]    : #Medium,
    ![@HTML5.CssDefaults]: {width: '5em'}
  }
  ,   {
    $Type                : 'UI.DataField',
    Value                : category_code,
    ![@UI.Importance]    : #Medium,
    ![@HTML5.CssDefaults]: {width: '5em'}
  },
    {
    $Type                : 'UI.DataField',
    Value                : projectManager,
    ![@UI.Importance]    : #Medium,
    ![@HTML5.CssDefaults]: {width: '5em'}
  },   {
    $Type                : 'UI.DataField',
    Value                : description,
    ![@UI.Importance]    : #Medium,
    ![@HTML5.CssDefaults]: {width: '5em'}
  }

  ]);