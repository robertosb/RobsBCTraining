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
            var
                Cust: record Customer;
                langCode: code[10];
            begin
                getcustomer(Cust, "Bill-to Customer No.");
                getCustomerLanguageCode(Cust, langCode);
                updateAILanguageOnCustomer(langCode);
            end;
        }

    }
    local procedure getcustomer(var lCust: record Customer; lcustCode: code[20])
    begin
        lCust.get(lcustCode);
    end;

    local procedure getCustomerLanguageCode(var lCust: record Customer; var AIlanguage : Code [20])
    var
        AiLanguages: record "AI Supported Language";
    begin
        IF lcust."Language Code" <> '' then begin
            IF AiLanguages.GET(lCust."Language Code") then
                AIlanguage :=  AiLanguages.Code;
        END;
    end;

    local procedure updateAILanguageOnCustomer(lLangCode: code[10])
    begin
        if lLangCode <> '' then begin
            Rec."AI Language" := lLangCode;
            Rec.Modify();
        end;
    end;
}