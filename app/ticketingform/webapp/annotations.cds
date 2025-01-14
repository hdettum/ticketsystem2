using FormEntries from '../srv/form-service';

annotate FormEntries with @(
    UI.FieldGroup : [
        { Label: 'Form Details', Qualifier: 'MainForm' }
    ]
){
    ID          @UI.Hidden;
    Title       @UI.Label : 'Title';
    Description @UI.Label : 'Description';
    CreatedAt   @UI.Label : 'Created At';
    CreatedBy   @UI.Label : 'Created By';
}
