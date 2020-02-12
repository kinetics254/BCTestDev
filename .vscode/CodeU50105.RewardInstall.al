codeunit 50105 RewardsInstallCode
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        Reward: Record Reward;
    begin
        if Reward.IsEmpty() then begin
            InsertDefaultRewards();
        end;
    end;

    procedure InsertDefaultRewards()
    begin
        InsertRewardLevel('GOLD', 'Gold Level', 20);
        InsertRewardLevel('SILVER', 'Silver Level', 20);
        InsertRewardLevel('BRONZE', 'Bronze Level', 20);
    end;

    procedure InsertRewardLevel(ID: Code[30]; Description: Text[250]; Discount: Decimal)
    var
        Reward: Record Reward;
    begin
        Reward.Init();
        Reward."Reward ID" := ID;
        Reward.Description := Description;
        Reward."Discount Percentage" := Discount;
        Reward.Insert();
    end;

}
