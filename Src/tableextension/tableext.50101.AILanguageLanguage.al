tableextension 50101 AILanguageLanguage extends Language //MyTargetTableId
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