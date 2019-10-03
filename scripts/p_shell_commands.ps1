#Get PWShell version
Get-Host | Select-Object Version

#Test connection
Test-Connection www.google.com

Test-NetConnection www.google.com
Test-NetConnection www.google.com -InformationLevel "Detailed"
Test-NetConnection www.google.com -Port 443

#Check installed application
Get-WmiObject -Class Win32_Product
#If you want to view a more detailed list* of all the installed Microsoft Apps for all the users on a Windows 10 PC
#give the following command in PowerShell (admin)
Get-AppxPackage –AllUsers
Get-AppxPackage -AllUsers | Select Name, PackageFullName

#install Azure CLI 
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'
az login