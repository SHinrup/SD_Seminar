table 123456701 Seminar
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"No.";Code[20])
        {
            Caption = 'No.';
        }
        field(20;Name;Text[50])
        {
            Caption = 'Name';
        }
        field(30;"Seminar Duration";Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0:1;
        }
        field(40;"Minimum Participants";Integer)
        {
            Caption = 'Minimum Participants';
        }
        field(50;"Maximum Participants";integer)
        {
            caption = 'Maximum Participants';
        }
        field(60;"Search Name";Code[50])
        {
            Caption = 'Search Name';
        }
        field(70;Blocked;Boolean)
        {
            Caption = 'Blocked';
        }
        field(80;"Last Date Modified";Date)
        {
            Editable = false;
            Caption = 'Last Date Modified';
        }
        field(90;Comment;Boolean)
        {
            Editable = false;
            Caption = 'Comment';
            FieldClass = FlowField;
            CalcFormula=exist("Seminar Comment Line" where("Table Name"=const("Seminar"),"No."=field("No.")));
        }
        field(100;"Seminar Price";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Seminar Price';
        }
        field(110;"Gen. Prod. Posting Group";code[10])
        {
            TableRelation = "Gen. Product Posting Group";
            Caption = 'Gen. Prod. Posting Group';
        }
        field(120;"Vat Prod. Posting Group";Code[10])
        {
            TableRelation = "VAT Product Posting Group";
            Caption = 'Vat Prod. Posting Group';
        }
        field(130;"No. Series";Code[10])
        {
            TableRelation = "No. Series";
            Caption = 'No. Series';
        }
    }

    keys
    {
        key(PK;"No.")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}