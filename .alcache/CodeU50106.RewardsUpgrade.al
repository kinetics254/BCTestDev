codeunit 50106 RewardsUpgradeCode
{
    Subtype = Upgrade;
    trigger OnUpgradePerCompany()
    var
        InstallCode: Codeunit RewardsInstallCode;
        Reward: Record Reward;
        Module: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(Module);
        if Module.DataVersion.Major = 1 then begin
            Reward.GET('BRONZE');
            Reward.Rename('ALUMINIUM');
            Reward.Description := 'Aluminium Level';
            Reward.Modify();
        end;

    end;
}