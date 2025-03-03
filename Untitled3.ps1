$SetupFilesPathUnc = "\\$(([System.Net.Dns]::GetHostByName(($env:COMPUTERNAME))).HostName)\$($SetupFilesPath)\$Version" ## AG commented out


        $SetupFilesPathUnc = "\\$(([System.Net.Dns]::GetHostByName(($env:COMPUTERNAME))).HostName)\$($SetupFilesPath.Replace(':', '$'))\$Version" ## AG commented out
        $SetupFilesPathUnc = $SetupFilesPathUnc.Replace('INFRA-AG-TEST.ecicloud.eu','INFRA-AG-TEST')