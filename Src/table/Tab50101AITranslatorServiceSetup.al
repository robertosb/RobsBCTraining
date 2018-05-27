table 50101 "AI Translator Service Setup"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Primary Key"; Code[10])
        {
            Caption = 'Primary Key';           
            DataClassification = ToBeClassified;
        }
        field(2; URL; Text[250])
        {
            Caption = 'URL';
            
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    
}