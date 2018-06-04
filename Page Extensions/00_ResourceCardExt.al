pageextension 123456700 "CDS_ResourceCardExt" extends "Resource Card"
//CSD1.00 - 2018-06-04 - SHinrup
{
    layout
    {
        addlast(General)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {
            }
            field("Quantity Per Day"; "CSD_Quantity Per Day")
            {
            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {

                field("CSD_Maximum Participants"; "CSD_Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        currpage.Update(false);
    end;

    var
        [InDataSet]
        Showmaxfield: Boolean;

}