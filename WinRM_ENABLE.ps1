$winrm = Get-Service -name winrm
if($winrm.Status -ne "running")
{
    Start-Service $winrm
}
Enable-PSRemoting –force
winrm s winrm/config/client '@{TrustedHosts="HOSTNAME"}'
