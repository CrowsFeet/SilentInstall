#Invoke-Expression -Command .\C:\Users\ecicloudserviceuser\Downloads\Silent-Install-SSMS.ps1
#Invoke-Item (start powershell ((Split-Path $MyInvocation.InvocationName) + "\Silent-Install-SSMS.ps1")

$proc = start-process "powershell.exe" -ArgumentList '-File',"C:\Users\ecicloudserviceuser\Downloads\InstallSQLServer.ps1 -saPwd AGTest01 -InstanceName MSSQLSERVER" -wait

$proc.waitforexit()

#Start-Sleep -s 120

start-process "powershell.exe" -ArgumentList '-File',"C:\Users\ecicloudserviceuser\Downloads\Silent-Install-SSMS.ps1"



#start-process "powershell.exe" -ArgumentList '-File',"C:\Users\ecicloudserviceuser\Downloads\Silent-Install-SSMS.ps1"

