#Get PWShell version
Get-Host | Select-Object Version

#Test connection
Test-Connection www.google.com

Test-NetConnection www.google.com
Test-NetConnection www.google.com -InformationLevel "Detailed"
Test-NetConnection www.google.com -Port 443
