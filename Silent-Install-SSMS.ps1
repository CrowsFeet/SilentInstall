Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Push-Location $env:temp
$software = "SQL Server Management Studio"
$installed = (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object DisplayName -eq $software )

If(-Not $installed){
    Write-Verbose "'$software' is NOT installed, installing" -Verbose
}
else{
    Write-Verbose "'$software' is installed, updating" -Verbose
}

Write-Verbose "Downloading SSMS-Setup-ENU.exe" -Verbose

try{
    Invoke-WebRequest https://aka.ms/ssmsfullsetup -OutFile '.\SSMS-Setup-ENU.exe' -ErrorAction Stop
}
catch{
    Write-Warning "Error downloading file: $($_.exception.message)"
    break
}

$arguments = "/install","/quiet","/norestart"

Write-Verbose "Executing 'SSMS-Setup-ENU.exe $arguments'" -Verbose

try{
    $result = Start-Process .\SSMS-Setup-ENU.exe -ArgumentList $arguments -PassThru -Wait
}
catch{
    Write-Warning $_.exception.message
}

switch -Exact($result.ExitCode){
    1603 {
        Write-Verbose "Reboot is required" -Verbose
    }

    0 {
        Write-Verbose "Installation successful" -Verbose
    }

    default{
        Write-Verbose "Installation was not successful" -Verbose
    }
}