pageextension 50100 AILanguageSalesOrder extends "Sales Order" //MyTargetPageId
{
    layout
    {
        addafter("Quote No.")
        {
            field("AI Language";"AI Language")
            {
                ApplicationArea = All;
            }
        }
        
    }
    actions
    {
        addlast("F&unctions")
        {
            group(Translate)
            {
                Action(Translate)
                {
                    ApplicationArea = All;
                    Caption='Translate';
                    ToolTip = 'Translate';
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    Image = Language;
                    

                    trigger OnAction();
                    begin
                        Message('Translate!');
                    end;
                }
            }
        }
    }

}