$regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\Triple DES 168"
$regName = "Enabled"
$regValue = 0
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}
Set-ItemProperty -Path $regPath -Name $regName -Value $regValue
Write-Host "Triple DES 168 cipher has been disabled."
