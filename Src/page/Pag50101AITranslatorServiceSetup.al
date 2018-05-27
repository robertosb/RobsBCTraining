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
    trigger OnOpenPage()
    begin
        InsertIfNotExists();
    end;
}