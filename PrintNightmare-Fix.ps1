Stop-Service -Name Spooler -Force
Set-Service -Name Spooler -StartupType Disabled
New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint' -Force
New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint' -Name NoWarningNoElevationOnInstall -Value 0 -Force
New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint' -Name NoWarningNoElevationOnUpdate -Value 0 -Force
