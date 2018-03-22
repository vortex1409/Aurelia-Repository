Add-PrinterPort -Name "\\<PRINTERSHARENAME>"
Add-Printer -Name "<PRINTER_NAME>" -DriverName "<DRIVER_NAME>" -PortName "\\<PRINTERSHARENAME>"
(Get-WmiObject -ComputerName . -Class Win32_Printer -Filter "Name='<PRINTER_NAME>'").SetDefaultPrinter()
