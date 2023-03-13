#!/bin/bash
#***********************************************  #AmiRock install script  ***********************************
# Install AmiRock
# B.Titze 2023

#************************************************************************************************************


BLACK='\033[0;39m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
GREY='\033[1;30m'

 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
          
      #sudo apt install python3-pip  python3-dev  -y
      #sudo python3 -m pip install -U setuptools
      #sudo python3 -m pip install -U amitools     

      

 if [ -d /home/$USER/Desktop/Shared/ ]; then
 
          
      sudo rsync -av --ignore-existing /home/$USER/Desktop/Shared/* ~/Amiga 
      sudo chmod -R 777 /opt/Amiga/
      sudo cp  -rf  /opt/Amiga/rom/amiga-os-310-a1200.rom /opt/Amiga/kickstarts/kick31a1200.rom
      sudo mv /opt/Amiga/rom/* /opt/Amiga/kickstarts/
      sudo rm -d /opt/Amiga/rom/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
  	 
      echo ""   
      
fi
      
if [  -d "/boot/Shared/" ]; then
	
  
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "      
	  echo -e "$BLACK  "
	  echo -e "$BLUE             AmigaForever * by Cloanto "
	  echo -e "$BLACK  "
	  echo -e "$BLACK 1>Please note that the Kickroms and Workbench"
	  echo -e "$BLACK 1>are still under copyright!" 
      echo -e "$BLACK 1>  "   
	  echo -e "$BLACK 1>Assign >NIL: Greetings your´s B. Titze "
	  echo -e "$GREEN "
	  


  
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
  	 
      echo ""   
fi  
      mkdir /opt/Amiga/dir/Work
      mkdir /opt/Amiga/dir/Work/Software
      mkdir /opt/Amiga/Install/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
  	 
      echo ""   

 if [ ! -d /opt/Amiga/Install/DF0 ]; then
 
     
     
      #CreateDF0
      sudo mkdir /opt/Amiga/Install/DF0
      cd /opt/AmiRock/Amiga/ClassicWB/
      unzip -o -q ./DF0.zip
      sudo mv /opt/AmiRock/Amiga/ClassicWB/DF0/* /opt/Amiga/Install/DF0
      sudo chmod -R 777 /opt/Amiga/Install/DF0
      rm -d -r /opt/AmiRock/Amiga/ClassicWB/DF0/
      rm -d -r /opt/Amiga/Install/DF0/*.info
 fi 

ClassicWB()
{
     
      clear
      toilet "AmiRock-OS" --metal
      echo "AmiRock-OS ROM Operating System and Libraries" 
      echo "Version V1.5 2020-2021 AmiRock-OS "
      echo "No Rights Reserved.  "
      echo ""
      echo -e -n "$GREEN Found Amiga Files ..."
      echo -e -n "$BLUE "
      sleep 3
      
      
    if [ ! -f /opt/Amiga/Install/ClassicWB_UAE_v28.zip ]; then
          
    
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e -n "$BLUE Downloading  ClassicWB_UAE_v28..."
      echo ""
      echo -e "$GRAY "
        cd /opt/Amiga/Install
      wget http://download.abime.net/classicwb/ClassicWB_UAE_v28.zip
    
    fi
    
    if [ ! -f /opt/Amiga/Install/ClassicWB_UAE_v28.zip ]; then
    
        
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e -n "$BLUE Downloading  ClassicWB_UAE_v28..."
      echo ""
      echo -e "$GRAY "

      cd /opt/Amiga/Install

      wget http://download.abime.net/classicwb/ClassicWB_LITE_v28.zip
     fi
    
      if [ ! -d /opt/Amiga/Install/ClassicWB_UAE_v28/ ]; then
      

      
      
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo "ClassicWB extracting... "
      cd /opt/Amiga/Install/
      unzip -o -q ./ClassicWB_UAE_v28.zip
      clear
      cp -r -f  "/opt/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/Software/" /opt/Amiga/dir/
      
    else 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
        echo "ClassicWB already downloaded"
        
      fi
      
if [ ! -d /opt/Amiga/Install/ClassicWB_LITE_v28/ ]; then
      

      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo "ClassicWB_LITE_v28 extracting... "
      unzip -o -q ./ClassicWB_LITE_v28.zip
      clear
fi 

if [ ! -d /opt/Amiga/dir/System_ADVSP ]; then

     rm -d -r /opt/Amiga/dir/System_ADVSP/
     mkdir /opt/Amiga/dir/System_ADVSP

   
     clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo " "
      echo -e -n "$BLUE "
      echo "  Configure System_ADVSP ...   " 
	     
      
      cd "/opt/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/"
      xdftool System_ADVSP.hdf unpack /opt/Amiga/dir/System_ADVSP
     
      cp -rf /opt/AmiRock/Amiga/ClassicWB/CWB3.pac /opt/Amiga/dir/System_ADVSP/System/T/
      cd /opt/Amiga/dir/System_ADVSP/System/T/
      unzip -u /opt/Amiga/dir/System_ADVSP/System/T/CWB3.pac
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Startup-Sequence /opt/Amiga/dir/System_ADVSP/System/S/
      
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Activate /opt/Amiga/dir/System_ADVSP/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Science /opt/Amiga/dir/System_ADVSP/System/S/
      
      cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-ADVSP.uae /opt/Amiga/conf/
      cp -rf /opt/Amiga/dir/Work/Software /opt/Amiga/dir/System_ADVSP/System/
      
      cp -rf /opt/AmiRock/config/ClassicWB-ADVSP.desktop /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/ClassicWB-ADVSP.desktop /usr/share/applications/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
  	 
      echo ""
      
     #ClassicWB-ADVSP_run
       
    fi
      
      if [ ! -d /opt/Amiga/dir/System_P96/ ]; then
	  
      cd /opt/Amiga/hdf
	  rm -d -r /opt/Amiga/dir/System_P96/
      mkdir /opt/Amiga/dir/System_P96
    
     
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e -n "$BLUE "
      echo "  Configure System_P96 ...   " 
      
      
      cd "/opt/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/"
      xdftool System_P96.hdf unpack /opt/Amiga/dir/System_P96
      cp -rf /opt/AmiRock/Amiga/ClassicWB/CWB3.pac /opt/Amiga/dir/System_P96/System/T/
      cd /opt/Amiga/dir/System_P96/System/T/
      unzip -o -q /opt/Amiga/dir/System_P96/System/T/CWB3.pac
      
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Startup-Sequence /opt/Amiga/dir/System_P96/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Science /opt/Amiga/dir/System_P96/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Activate /opt/Amiga/dir/System_P96/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/screenmode.prefs /opt/Amiga/dir/System_P96/System/Prefs/Env-Archive/Sys/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-P96.uae /opt/Amiga/conf/
      cp -rf "/opt/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/Software" /opt/Amiga/dir/
          
      
      cp -rf /opt/AmiRock/config/ClassicWB-P96.desktop /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/ClassicWB-P96.desktop /usr/share/applications/
      cp -rf /opt/Amiga/dir/System_P96/System/Prefs/Patterns/Amiga_1024x768.jpg /opt/Amiga/dir/System_P96/System/Prefs/Patterns/bsg_pm2_800x600.png
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
  	#ClassicWB-P96_run 
      echo ""   
 fi
 
 if [ ! -d /opt/Amiga/dir/Amiga1000/ ]; then
   cd /opt/Amiga/dir/
   unzip -u /opt/AmiRock/Amiga/Amiga1000.zip
   cp -rf "/opt/AmiRock/Amiga/ClassicWB/Amiga1000.uae" /opt/Amiga/conf/
   
   
 fi  
}
   
ClassicWB13()
{


      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      
if [ ! -f /opt/Amiga/Install/ClassicWB_LITE_v28.zip ]; then
      echo -e -n "$BLUE Downloading  ClassicWB_UAE_v28..."
      echo ""
      echo -e "$GRAY "

      cd /opt/Amiga/Install

      wget http://download.abime.net/classicwb/ClassicWB_LITE_v28.zip

      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo "ClassicWB extracting... "
      unzip -o -q ./ClassicWB_LITE_v28.zip
      clear
fi 


}




cp -r -f  "/opt/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/Software/" /opt/Amiga/dir/


ClassicWB
ClassicWB13



else
clear
          toilet "AmiRock-OS" --metal
          echo " "
	  echo " "
	  whiptail --msgbox "Information: AmigaForever * by Cloanto 
	  \n 1>Please note that the Kickroms and Workbench
	  files are still under copyright! 
	  \n 1>So only use this image if you own  
	  original Amiga(s) or Amiga Forever. 
	  \n 1>CLI:               
	  \n 1>Assign >NIL: Greetings your´s B. Titze
     
	  \n " 20 50 1
	  
	 rm -d -r /opt/Amiga/Install/DF0/  
     
      sudo chmod -R 777 /opt/Amiga/
      cd
	  
	  exit
	  
fi

if [ -d /opt/Amiga/dir/System_P96/ ]; then

      sudo cp -rf /opt/AmiRock/config/ClassicWB-P96.desktop /usr/share/applications/
      sudo cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-P96.uae /opt/Amiga/conf
      cd /opt/Amiga/dir/System_P96/System/Devs
      unzip -u  /opt/AmiRock/Amiga/ks.zip
      cd

fi

if [ -d /opt/Amiga/dir/System_ADVSP/ ]; then
    
 
      sudo cp -rf /opt/AmiRock/config/ClassicWB-ADVSP.desktop /usr/share/applications/
      sudo cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-ADVSP.uae /opt/Amiga/conf
      cd /opt/Amiga/dir/System_ADVSP/System/Devs
      unzip -u  /opt/AmiRock/Amiga/ks.zip
      cd
fi 
       rm -d -r /opt/Amiga/Install/DF0/  
     
      sudo chmod -R 777 /opt/Amiga/
      cd
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "      
      echo -e "$BLACK  "
      echo -e "$BLUE ClassicWBs createt "
      echo -e "$BLACK  "
      ClassicWB-P96_run
