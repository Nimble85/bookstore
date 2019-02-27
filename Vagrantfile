$script = <<SCRIPT
	netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
SCRIPT


Vagrant.configure("2") do |config|
	
	config.vm.provider "virtualbox" do |v|
        v.memory = 4096
        v.cpus = 2
    end

	config.vm.define "test" do |test|

		test.vm.box = "gusztavvargadr/w16s-sql17d"

		config.vm.synced_folder "./data", "/vagrant_data"

		test.vm.network "public_network", type: "dhcp"
        test.vm.network "forwarded_port", guest: 80, host: 8080
		# test.vm.network "private_network", ip: "192.168.10.24"
		test.vm.hostname = "WS2016"
#		test.vm.synced_folder "C:/vagrant/share", "C:/Users/vagrant/Desktop"
#		test.vm.provision "shell", inline: $script
	
		test.vm.provision "shell", privileged: "true", powershell_elevated_interactive: "true", inline: <<-SHELL

##Create folders. two methods		
#		New-Item -ItemType directory -Path "C:/Users/vagrant/Desktop/newDir"
#		new-item "C:/Users/vagrant/Desktop/mynewdir" -itemtype directory
#		echo "Hello It`s Me!!!"
## Enable ping. Two methods
#		netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
#		Import-Module NetSecurity
#		New-NetFirewallRule -Name Allow_Ping -DisplayName "Allow Ping"  -Description "Packet Internet Groper ICMPv4" -Protocol ICMPv4 -IcmpType 8 -Enabled True -Profile Any -Action Allow
Install Chokolatey:
		Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
##Install IIS with PowerShell:		
	#	Install-WindowsFeature -name Web-Server -IncludeManagementTools
Install MsBuild
		Install-Module -Name Invoke-MsBuild -RequiredVersion 2.6.1

		SHELL
	config.vm.provision :shell, :path => "instIIS.ps1"
	config.vm.provision :shell, :path => "start.bat"
###	config.vm.provision :shell, :path => "configIIS.ps1"
	config.vm.provision :shell, :path => "install_msbuild.ps1"
	
		
	end
end	

###>    vagrant reload  --provision


### ============================================================
### Two ways to run scripts
#$infoScript = <<SCRIPT
#  echo 'IP-addresses of the vm ...'
#  ifconfig
#SCRIPT

# config.vm.provision "shell", inline: <<-SHELL
#    apt-get update
#    apt-get install -y apache2 php5 libapache2-mod-php5#
#  SHELL
  
  
#  config.vm.provision "shell", inline: $infoScript,
#      run: "always"




#____________________________________________________
#Install IIS


# Install-WindowsFeature -name Web-Server -IncludeManagementTools



  #config.vm.provision :shell, :path => "test.sh"
  #config.vm.provision_run :once  
  ## :once or :always with :once being the default
  
  
  
  
  