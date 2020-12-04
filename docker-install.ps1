Install-WindowsFeature -Name Hyper-V,Containers -IncludeAllSubFeature -IncludeManagementTools
Import-Module -Name DockerMSFTProvider -Force
Import-Packageprovider -Name DockerMSFTProvider -Force
[Environment]::SetEnvironmentVariable(“LCOW_SUPPORTED”, “1”, “Machine”)
$configfile = @”

{

    “experimental”: true

}

“@

$configfile|Out-File -FilePath C:\ProgramData\docker\config\daemon.json -Encoding ascii -Force
Invoke-WebRequest -Uri "https://github.com/linuxkit/lcow/releases/download/v4.14.35-v0.3.9/release.zip" -UseBasicParsing -OutFile release.zip
Expand-Archive release.zip -DestinationPath “$Env:ProgramFiles\Linux Containers\.”
[Environment]::SetEnvironmentVariable(“LCOW_API_PLATFORM_IF_OMITTED”, “linux”, “Machine”)
Restart-Computer
