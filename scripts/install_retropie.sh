
    
    
    
    rm -rf ~/RetroPie-Setup
    clear
    
    sudo mkdir -p /etc/emulationstation
    sudo chmod -R 777 /etc/emulationstation
    mkdir -p /opt/retropie/emulators
    sudo chmod -R 777 /opt    
		sudo apt install -y p7zip-full
		cd ~
		git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
		sudo chmod -R 777 ~/RetroPie-Setup
		cp -f -R /opt/AmiRock/retropie/system.sh ~/RetroPie-Setup/scriptmodules/
		cp -f -R /opt/AmiRock/retropie/retropie_setup.sh ~/RetroPie-Setup/

		cd RetroPie-Setup
		sudo chmod -R 777 /opt
		sudo __nodialog=1 __platform=rk3588 ./retropie_setup.sh basic_install
		sudo  ./retropie_setup.sh basic_install
