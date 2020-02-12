pageextension 50104 "Customer Card Exr" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID"; "Reward ID")
            {
                ApplicationArea = All;
                Lookup = true;
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
