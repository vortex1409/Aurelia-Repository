cls
echo "Mount Drive"
net use g: \\<UNCPATH>
pause

cls
echo "Copy LGPO"
robocopy g:\config c:\config /COPYALL /E
pause

cls
echo "Import LGPO"
g:\lgpo.exe /g c:\config
pause
shutdown -r -t 00
