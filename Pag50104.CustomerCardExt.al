pageextension 50104 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID"; "Reward ID")
            {
                ApplicationArea = All;
                Lookup = true;
                ToolTip = 'Specifies the level of reward that the customer has at this point.';
            }
        }
    }

    actions
    {
        addfirst(navigation)
        {
            action("Rewards")
            {
                ApplicationArea = all;
                RunObject = page "Reward List";
            }
        }
    }

}
