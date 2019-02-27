# WEB_BOOK_STORE

## DESCRIPTION
"This The Best, Simple Internet Book Store Can Improve You Live!"
Make order the some books just to fill a registration form.

This is not big webapp wich was wrote on the best language - C#

You Can feeling all amazing just do some simple steps/.:

## STEP BY STEP

Install [Vagrant](https://www.vagrantup.com/downloads.html)

Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Instal git

git pull https://github.com/Nimble85/bookstore.git

vagrant init

vagrant up --provision

wait some time

open your web brouser and go to link:

localhost:8080

It`s Done!


## Tech Steck
 Microsoft Visual Build Tools 2017   
 
 Microsoft .NET Frimework.4.7.1 
 
 Microsoft SQL Server 2017   
 
 Microsoft Web Deploy 10.0.1973  
 
 Windows Server 2016 Standart Evalution 
 
 IIS v. 1607 (OS Build 14393.2608)  
 MSBUILD
 C#
 PowerShells scripts
 Chocolatey
 Vagrant v.2.2.3
 Oracle VM VirtualBox v.6.0.4
 
 
## DIAGRAM

![image](https://github.com/Nimble85/bookstore/blob/master/data/Diagram.png)

As base image for deployment environment was taken vagrant box [gusztavvargadr/w16s](https://app.vagrantup.com/gusztavvargadr/boxes/w16s) with pre-installed SSH, WinRM and Chocolatey ver 0.10.11. User - vagrant, Password - vagrant.

Vagrant is configured to deploy VMs with the following services: MS SQL Server 2017 Express server, IIS server v10.0. 
The Git ver 2.20.1 is installed for delivery project's build and SQL script for DB from GitHub repository.
