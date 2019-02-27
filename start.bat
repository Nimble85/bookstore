echo Start bat file
mkdir -p "C:/Users/vagrant/Desktop/bash";
choco upgrade chocolatey
echo Install some software!
rem choco install notepadplusplus.install -y
choco install notepadplusplus.install urlrewrite git.install msdeploy3 sql-server-management-studio microsoft-build-tools -y
echo Upgrade some software!
rem choco upgrade notepadplusplus.install -y
choco upgrade notepadplusplus.install urlrewrite git.install msdeploy3 sql-server-management-studio microsoft-build-tools -y
	
choco install webdeploy -y
choco upgrade webdeploy
choco install googlechrome -y
choco upgrade googlechrome


echo "Copy project IIS"

rem c: 
rem cd C:\inetpub\
rem rmdir /s /q C:\inetpub\wwwroot
 		mkdir "C:\inetpub\wwwroot"
rem 		xcopy "C:\vagrant\web\WebApplication1\WebApplication1" "C:\inetpub\wwwroot"  /H /Y /C /R /S 
 		xcopy "C:\vagrant\wwwroot" "C:\inetpub\wwwroot"  /H /Y /C /R /S 


rem echo d | xcopy /f /d /y "C:\vagrant\web\WebApplication1\WebApplication1" "C:\inetpub\wwwroot\"
