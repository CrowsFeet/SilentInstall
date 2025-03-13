#Invoke-Expression -Command .\C:\Users\ecicloudserviceuser\Downloads\Silent-Install-SSMS.ps1
#Invoke-Item (start powershell ((Split-Path $MyInvocation.InvocationName) + "\Silent-Install-SSMS.ps1")

start-process "powershell.exe" -ArgumentList '-File',"C:\Users\ecicloudserviceuser\Downloads\Silent-Install-SSMS.ps1"

