page 50101 "AI Translator Service Setup"
{
    PageType = Card;
    SourceTable = "AI Translator Service Setup";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field(URL; URL)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(AISupportedLanguageList)
            {
                ApplicationArea = All;
                RunObject = Page 50100;//"AI Supported Language List";
            }
        }
    }
    trigger OnOpenPage()
    begin
        InsertIfNotExists();
    end;
}