$domain = "DOMAIN HERE"
$password = PASSWORD HERE" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\USERNAME HERE" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
Restart-Computer -Force
