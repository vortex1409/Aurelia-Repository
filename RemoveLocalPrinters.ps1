$LocalPrinters = Get-WmiObject -Class Win32_Printer | Where-Object{$_.Local -like "*\\<DOMAINSHARE>*"}
If ($LocalPrinters -ne $null)
{
	Try
	{
		Foreach($LP in $LocalPrinters)
		{
			$LP.Delete()	
		}
	}
	Catch
	{
		Write-Warning "There was an error deleting the local printers."
	}
}
Else
{
	Write-Warning "There was an error deleting the local printers."
}
