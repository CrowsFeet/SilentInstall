$CredEngine = Get-Credential 'ecicloudserviceuser' #,'password'
$CredSa     = Get-Credential 'sa' ,'AGTEST01'
$Params     = @{
    DestinationServer = "INFRA-AG-TEST"
    SetupFilesPath = "D:\Setup"
    Version = 2019
    InstallEngine = $true
    InstallCU = $true
    InstallSSMS = $true
    SqlCollation = "SQL_Latin1_General_CP1_CI_AS"
    InstancePath = "C:\Program Files\Microsoft SQL Server"
    DataPath = "E:\Data"
    LogPath = "F:\Log"
    TempPath = "F:\TempDB"
    BackupPath = "F:\Backup"
    EngineCredential = $CredEngine
    AgentCredential = $CredEngine
    SaCredential = $CredSa
    Credential = $CredEngine
    AdminAccount = "$($env:userdomain)\ecicloudserviceuser"
    Restart = $true
    WhatIf = $false
    VerboseCommand = $false
    EnableException = $true
}
Install-SqlServer @Params 

# sa AGTEST01


