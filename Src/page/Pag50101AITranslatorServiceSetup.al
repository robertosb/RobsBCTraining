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
        area(processing)
        {
            action("Supported Languages List")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Language;
    
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        InsertIfNotExists();
    end;
}

