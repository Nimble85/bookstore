# Module for work with IIS
Import-Module WebAdministration

# Create folder for WebSite
# New-Item -ItemType directory -Path C:\inetpub\wwwroot\MyWebMVC

# Copy data to default IIS folder
###$sourceRoot = "C:\srv\share\website"
$sourceRoot = "C:\vagrant\data\WebApplication5\WebApplication5\bin"
$destinationRoot = "C:\inetpub\wwwroot\MyWebMVC"

Copy-Item -Path $sourceRoot -Recurse -Destination $destinationRoot -Container

#Remove default WebSite&WebAppPool
Get-WebSite -Name "Default Web Site" | Remove-WebSite -Confirm:$false -Verbose
Remove-WebAppPool -Name "DefaultAppPoll" -Confirm:$false -Verbose

#Create new WebSite&WebAppPool
New-Item IIS:\Sites\MyWebMVC -Bindings @{protocol="http";bindingInformation="*:80:"} -PhysicalPath C:\inetpub\wwwroot\MyWebMVC
cd IIS:\
New-Item AppPools\MyWebMVCPool
Set-ItemProperty IIS:\Sites\MyWebMVC -Name applicationPool -Value MyWebMVCPool