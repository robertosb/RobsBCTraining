table 50100 "AI Supported Language"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Code; Code[10])
        {
            CaptionML = ENU = 'AI Language';

        }
        field(2; Description; Text[50])
        {
            CaptionML = ENU = 'Description';            
        }        
    }
    
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
    
}