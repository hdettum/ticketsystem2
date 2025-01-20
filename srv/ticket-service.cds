using {projectportfolio.db as db} from '../db/schema';

@path: '/ticket'
service TicketService {

  @odata.draft.enabled
  entity Tickets                 as projection on db.Ticket;

  // Details zu CreateSubaccount
  entity CreateSubaccountDetails as projection on db.CreateSubaccount;
  // Details zu AddMembers
  entity AddMembersDetails       as projection on db.AddMembersToSubaccount;
  // Details zu DeleteSubaccount
  entity DeleteSubaccountDetails as projection on db.DeleteSubaccount;
  // Details zu ChangeUserRoleCollection
  entity ChangeUserRoleDetails   as projection on db.ChangeUserRoleCollection;
  entity TicketCategory          as projection on db.TicketCategory;
}
