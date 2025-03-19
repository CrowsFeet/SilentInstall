# Install FMAudit
.\InstallSQLServer.ps1 SQL2019
    -saPwd SuperStr0ngPassword 
    -Instancename MSSQLSERVER
    -AutoMaxMemory 
    -InstanceRootDir D:\ 
    -UserDataRootDir E:\Data\
    -UserTLogRootDir L:\Log\
    -TempdbDataRootDir T:\Tempdb\
    -BackupRootDir E:\Backup\
 