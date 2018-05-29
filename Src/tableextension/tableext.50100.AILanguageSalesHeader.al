tableextension 50100 AILanguageSalesHeader extends "Sales Header" //MyTargetTableId
{
    fields
    {
        field(50100; "AI Language"; Code[10])
        {
            Caption = 'AI Language';
            TableRelation = "AI Supported Language".Code;             
            //DataClassification = ToBeClassified;
        }
        modify("Bill-to Customer No.")
        {
            trigger OnAfterValidate()
            var Cust:record Customer; 
                langCode:code[10];           
            begin
              getcustomer(Cust,"Bill-to Customer No.");
              langCode := getLanguageCode(Cust);
               
            end;
        }        
        
    }
    local procedure getcustomer(var lCust:record Customer; lcustCode:code[20])
    begin
      lCust.get(lcustCode);
    end;    
    local procedure getLanguageCode(var lCust:record Customer):code[10]
    var AiLanguages:record "AI Supported Language";
    begin
      IF lcust."Language Code" <> '' then
      begin
          IF AiLanguages.GET(lCust."Language Code") then
            Exit(AiLanguages.Code);
      END;
      Exit('');
    end;    
}