#!/bin/bash
#***********************************************  #AmiRock-OS install script  ***********************************
# Install AmiRock-OS
# B.Titze 2023

      #mkdir /home/$USER/.backup
      BLACK='\033[0;39m'
      BLUE='\033[1;34m'
      GREEN='\033[1;32m'
      RED='\033[1;31m'
      GREY='\033[1;30m'

  clear
  cp -rf /opt/AmiRock/scripts/.bashrc /home/$USER/
  if [ ! -d /opt/Amiga/data/ ]; then
      

       cd /opt/
	     sudo rm -rf /opt/Amiga
             #sudo ln -s /opt/Amiga/ Amiga
	        
             sudo unzip -u  /opt/AmiRock/Amiga/Amiga.zip
       clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  Fix Amiga Folder "
      echo " "
  
      cd 

      sudo cp -rf /opt/Amiga/data/AmigaTopaz.ttf /usr/share/fonts/truetype/amiga/
      
      sudo cp -R /opt/Amiga/data/amiberry.png /usr/share/applications/
      sudo cp -R /opt/Amiga/data/amiberry_dev.png /usr/share/applications/
      sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib/aarch64-linux-gnu/libbcm_host.so.0
      
            clear
      toilet "AmiRock-OS" --metal
      echo " "
 
      
      cd 

fi
	 
      
      sudo chmod -R 775 /opt/
      
      if [ ! -d /opt/Backup/ ]; then
         sudo mkdir /opt/Backup/
      fi
      if [ ! -d /opt/Backup/ ]; then
         sudo mkdir /opt/Backup/
      fi
      
             
      
      sudo cp -rf /opt/AmiRock/config/Desktop/A* /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/config /home/$USER/.worker/
      
   
      sudo unzip -o  /opt/AmiRock/config/up.zip
      
      
      sudo chmod -R 755 /home/$USER/AmiRock
     
      sudo cp -R /home/$USER/AmiRock/scripts/* /usr/local/bin
      sudo rm -rf /usr/share/applications/*Ami*
      sudo cp -R /home/$USER/AmiRock/config/Desktop/* /usr/share/applications/
      sudo cp -rf /opt/AmiRock/config/Logo/* /opt/AmiRock/config/
      sudo cp -rf /opt/AmiRock/config/Logo/boot.jpg /usr/share/backgrounds/armbian-lightdm/armbian03-Dre0x-Minum-dark-blurred-3840x2160.jpg
     
   
    
           
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo " AmiRock-OS Update Linux System ..."
      echo -e "$GREY "
      echo " "
      sudo apt-get update
      sudo apt-get upgrade -y

  
cd /home/$USER/AmiRock/

clear

     
       
       sudo chmod -R 755 /usr/share/plymouth/
       sudo cp -rf  /opt/AmiRock/config/AmiRock-OS.png /usr/share/plymouth/themes/armbian/bgrt-fallback.png

       
      

      # Update allways Routine
      if [ ! -d /opt/AmiRock/ ]; then
 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
       	
	
      echo "Update is running "             
      echo " "
      echo " "      
      else 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo "Update is running "
      echo " "
      echo " System optimized :) "
      echo " "
      echo " " 
fi
   

if [ ! -f /opt/Amiga/data/amiberry_dev.png ]; then
      sudo cp -R /opt/Amiga/amiberry_dev.png /opt/Amiga/data/
      fi
      

cd
	     




if [ -d /opt/Backup/MegaAGS/games/Amiga/ ]; then
   
      sudo cp -rf /opt/AmiRock/Amiga/MegaAGS/MegaAGS.desktop /usr/share/applications/ 
      #sudo cp -rf /opt/AmiRock/Amiga/MegaAGS/MegaAGS.uae /opt/Amiga/Amiga/conf/
fi 

   
    
   sudo cp -rf  $HOME/Amiga/data/amiberry_dev.png /usr/share/applications/

      
   
            if [ ! -f /opt/Amiga/amiberry_old ]; then
            cp -rf  /opt/Amiga/amiberry_old /opt/Backup/
	    fi
	    if [ ! -f /opt/Amiga/amiberry ]; then
            cp -rf  /opt/Amiga/amiberry /opt/Backup/
	    fi
	    if [ ! -f /opt/Amiga/amiberry_dev ]; then
	    cp -rf  /opt/Amiga/amiberry_dev /opt/Backup/
	    fi
	    
	    if [ ! -f /opt/Amiga/kickstarts/A1200.rom ]; then
	    
	             clear
      toilet "AmiRock-OS" --metal
      echo -e "$RED "
      echo "1>Please note that the Kickroms and Workbench files are still under copyright!  "
      echo -e "$BLUE "
      echo "1>So only use this image if you own the original Amigas, Amiga Forever."
      echo "1>CLI: "
      echo -e "$BLACK "
      echo "1>                  Greetings your´s "
      echo "1>Assign >NIL:      Bernd Titze"
      echo " "
  

   cd  
      	git clone --depth=1 https://github.com/archtaurus/RetroPieBIOS.git
      	
      	sudo chmod -R 755 $HOME/RetroPieBIOS
      
         
      	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick34005.A500 /opt/Amiga/kickstarts/A500.rom
      	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick40063.A600 /opt/Amiga/kickstarts/A600.rom
      	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick40068.A1200 /opt/Amiga/kickstarts/A1200.rom
	sudo cp -rf $HOME/RetroPieBIOS/BIOS/kick40068.A1200 /opt/Amiga/kickstarts/kick31a1200.rom
	
      	sudo rm -rf /home/$USER/RetroPieBIOS 
 clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
          
      sudo apt install python3-pip  python3-dev  -y
      sudo python3 -m pip install -U setuptools
      sudo python3 -m pip install -U amitools   
	
 fi
  if [ ! -d /opt/Amiga/dir/Work/ ]; then
      mkdir /opt/Amiga/dir/
      mkdir /opt/Amiga/dir/Work/
      mkdir /opt/Amiga/dir/Software
      mkdir /opt/Amiga/Install/
      mkdir /opt/Amiga/kickstarts
  fi

    clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e "$BLUE"
      echo " "
      echo "  ... repair settings  "  
      
      sudo rm -rf /home/$USER/.bashrc
      cp -rf $HOME/AmiRock/scripts/.bashrc /home/$USER/.bashrc
   
      
      if [ ! -f /home/$USER/Desktop/AmiRock-OS.desktop ]; then
        sudo cp -rf /usr/share/applications/AmiRock-OS.desktop /home/$USER/Desktop/AmiRock-OS.desktop
      fi  
      
      
      if [ ! -f /usr/share/applications/MegaAGS.desktop ]; then
      
      #sudo cp -rf $HOME/AmiRock/config/MegaAGS.desktop /usr/share/applications/ 
     clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      
      fi

     
      
      echo " "
      echo "  ... cleanup Amiga folder  " 
     
      echo " "
      echo "  ... delete unnecessary files  " 
      cd  /opt/
      sudo find . -name "\._*" -type f -print0 | xargs -0 /bin/rm -f
      sudo find . -name "\.DS_*" -type f -print0 | xargs -0 /bin/rm -f
      sudo find . -name "_UAEFSDB.___" -type f -print0 | xargs -0 /bin/rm -f
      cd ~
       sudo rm -rf /opt/Amiga/conf/amiberry.conf
       sudo rm -rf /opt/Amiga/conf/amiberry-osx.conf      
     clear
      
      if [ -d $HOME/AMIGAOSLINUX/ ]; then
         sudo rm -rf $HOME/AMIGAOSLINUX/
      fi
      
      if [ -d $HOME/AmiRock/ ]; then
         sudo rm -rf $HOME/AmiRock/
      fi
      
      if [ -d $HOME/fan-control-rock5b/ ]; then
         sudo rm -rf $HOME/fan-control-rock5b/
      fi
      
      if [ -d $HOME/Schreibtisch/ ]; then
         sudo rm -rf $HOME/Schreibtisch/
	 sudo rm -rf $HOME/.config/user-dirs.dirs
	 mkdir $HOME/Desktop
      fi
      
      if [ -d $HOME/Videos/ ]; then
         sudo rm -rf $HOME/Videos/
      fi
      
      if [ -d $HOME/Bilder/ ]; then
         sudo rm -rf $HOME/Bilder/
      fi
      
      if [ ! -d $HOME/Amiga/data/amiberry_dev.png/ ]; then
      sudo cp -rf  /opt/AmiRock/Amiga/amiberry_dev.png /opt/Amiga/data/
      fi
      
 #***********************************************  #AmiRock-OS Afterburner  ***********************************      
 
 if [  -d /home/$USER/wine/share/wine ]; then
 
                 clear
      toilet "AmiRock-OS" --metal
      echo " "
      echo " "
      echo "  Detect Afterburner Image "
      echo " "
      
      	 sudo rm -rf /home/$USER/Desktop/Amiga.desktop
	 sudo rm -rf /home/$USER/Desktop/AmiRock-OS.desktop
	  if [ ! -d /home/$USER/Videos/ ]; then
	  
	 sudo rm -rf /home/$USER/Videos
	
	  fi 
	 
	 if [ ! -d /home/$USER/Movies/ ]; then
	 
	 mkdir /home/$USER/Movies
	  
	 fi
	    #sudo cp -rf /opt/AmiRock/config/armbianEnv.txt /boot/
	    sudo cp -rf /opt/AmiRock/config/custom.conf /etc/gdm3/
	

	    
	    sudo chmod -R 775 /usr/share/plymouth/
  	    sudo cp -rf /opt/AmiRock/config/plymouth/AmigaKickstart /usr/share/plymouth/themes/
  	    sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/AmigaKickstart/AmigaKickstart.plymouth 500
  	    clear   	 
	 
	 sudo rm -rf /home/$USER/.config/dconf/*
	 sudo cp -rf /opt/AmiRock/config/user /home/$USER/.config/dconf/
	 sudo chmod -R 775 /home/rock/
      fi
	 
#***********************************************  #AmiRock-OS install script  *********************************** 

      echo " "
      echo "  ... repair rights  "  
      
    
    if [  -d /home/$USER/wine/share/wine ]; then    
    
  
      sudo chmod -R 775 /usr/local/bin/
      sudo chmod -R 775 /home/$USER/.config/
      sudo chmod -R 775 /home/$USER/.local/
      sudo chmod -R 777 /opt/
  
      sudo chmod -R 775 /home/$USER/
      sudo chmod -R 775 /usr/share/applications/
      sudo rm -rf ~/AmiRock
      
      else 
      sudo chmod -R 777 /usr/local/bin/
      sudo chmod -R 777 /home/$USER/.config/
      sudo chmod -R 777 /home/$USER/.local/
      sudo chmod -R 777 /opt/
  
      sudo chmod -R 777 /home/$USER/
      sudo chmod -R 777 /usr/share/applications/
     
     fi
      
      sudo rm -rf ~/AmiRock
      
  
cd
	
	    
	    	
 clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo -e "$GREY Version V2.0 2020-2021 AmiRock-OS "
echo " No Rights Reserved.  "
echo -e "$BLACK "
echo " Type 'd' to boot into AmiRock Workbench"
echo ""
echo " 1.>  "
echo -e " 1.>  ( u ) AmiRock-OS Update                     "
echo " 1.>  ( m ) ArmRock-OS Config                       " 
echo -e " 1.>  ( c ) Armbian-Config                       "
echo " 1.>  ( s ) Shutdown                                "  
echo -e "$BLUE "
echo "  ... finished AmiRock setup :-)  " 
echo -e "$BLACK "

m
firefox-esr http://localhost:9090/
