# Import AD PowerShell Module
Import-Module ActiveDirectory

# Get User Groups
echo "Username"
echo "======================="
(Get-ADUser <USERNAME> -Properties MemberOf | Select-Object MemberOf).MemberOf
