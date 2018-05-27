page 50100 "AI Supported Languages List"
{
    PageType = List;
    SourceTable = "AI Supported Language";
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                    
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
   
}