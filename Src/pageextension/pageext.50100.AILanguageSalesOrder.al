pageextension 50100 AIExtension extends "Sales Order" //MyTargetPageId
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

}