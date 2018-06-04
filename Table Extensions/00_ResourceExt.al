tableextension 123456700 CSD_ResourceExt extends Resource
// CSD1.00 - 2018-01-01 - SHinrup
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();

            begin
                rec.testfield("Unit Cost")
            end;
        }
    
    field(123456701;"CSD_Resource Type";Option)
    {   
        Caption = 'Resource Type';
        OptionMembers = "Internal", "External";
        OptionCaption = 'Internal,External';
    }
    field(123456702;"CSD_Maximum Participants";Integer)
    {
        Caption = 'Maximum Participants';
    }
    field(123456703;"CSD_Quantity Per Day";Decimal)
    {
        Caption = 'Quanitity Per Day';
    }
    }
}