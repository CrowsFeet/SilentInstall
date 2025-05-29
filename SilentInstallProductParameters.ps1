# Install Standard
.\InstallSQLServer.ps1 SQL2019
    -saPwd SuperStr0ngPassword 
    -Instancename MSSQLSERVER
    -AutoMaxMemory 
    -InstanceRootDir D:\ 
    -UserDataRootDir D:\Data\
    -UserTLogRootDir L:\Log\
    -TempdbDataRootDir T:\Tempdb\
    -BackupRootDir D:\Backup\

 # Install FMAudit
.\InstallSQLServer.ps1 SQL2019
    -saPwd SuperStr0ngPassword 
    -Instancename MSSQLSERVER
    -AutoMaxMemory 
    -InstanceRootDir E:\ 
    -UserDataRootDir E:\Data\
    -UserTLogRootDir L:\Log\
    -TempdbDataRootDir T:\Tempdb\
    -BackupRootDir E:\Backup\

 # Install Printanista
.\InstallSQLServer.ps1 SQL2019
    -saPwd SuperStr0ngPassword 
    -Instancename MSSQLSERVER
    -AutoMaxMemory 
    -InstanceRootDir D:\ 
    -UserDataRootDir D:\Data\
    -UserTLogRootDir L:\Log\
    -TempdbDataRootDir F:\Tempdb\
    -BackupRootDir D:\Backup\

# Install ECInteractive
.\InstallSQLServer.ps1 SQL2019
    -saPwd SuperStr0ngPassword 
    -Instancename MSSQLSERVER
    -AutoMaxMemory 
    -InstanceRootDir E:\ 
    -UserDataRootDir E:\Data\
    -UserTLogRootDir L:\Log\
    -TempdbDataRootDir T:\Tempdb\
    -BackupRootDir E:\Backup\

# Install Deacom -  2019
.\InstallSQLServer.ps1 SQL2019
    -saPwd SuperStr0ngPassword 
    -Instancename MSSQLSERVER
    -AutoMaxMemory 
    -InstanceRootDir C:\Program Files\Miscosoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Data\
    -UserDataRootDir F:\Data\
    -UserTLogRootDir G:\Log\
    -TempdbDataRootDir D:\Tempdb\Data\
    -BackupRootDir F:\Backups\

# Install Deacom - 2022
.\InstallSQLServer.ps1 SQL2022_01 -
    saPwd SuperStr0ngPassword 
    -Instancename MSSQLSERVER
    -AutoMaxMemory 
    -InstanceRootDir C:\Program Files\Miscosoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Data\
    -UserDataRootDir F:\Data\
    -UserTLogRootDir G:\Log\
    -TempdbDataRootDir D:\Tempdb\Data\
    -BackupRootDir F:\Backups\
