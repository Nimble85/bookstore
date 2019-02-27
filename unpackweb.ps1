Add-PSSnapin WDeploySnapin3.0
$package = "C:\Done\WebApplication5.zip"
Restore-WDPackage $package -Parameters @{"IIS Web Application Name"="appstore"}