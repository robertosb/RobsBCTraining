tableextension 50100 AILanguage extends "Sales Header" //MyTargetTableId
{
    fields
    {
        field(50100; "AI Language"; Code[10])
        {
            Caption = 'AI Language';
            TableRelation = "AI Supported Language".Code;             
            //DataClassification = ToBeClassified;
        }
        
    }
    
}