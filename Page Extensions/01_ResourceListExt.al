pageextension 123456701 CSD_ResourceListExt extends "Resource List"
// CSD1.00 - 2018.06.04 - SHinrup
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter("Type")
        {
            Field("CSD_Resource Type"; "CSD_Resource Type")
            {

            }
            field("CSD_Maximum Participants";"CSD_Maximum Participants")
            {
                Visible = ShowMaxField;

            }
        }

    }



    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) =
                        format(Type::machine));
        FilterGroup(0);
    end;
       
    var
        myInt: Integer;
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;
}
