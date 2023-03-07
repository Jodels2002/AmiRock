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
          
      sudo apt install python3-pip  python3-dev  -y
      sudo python3 -m pip install -U setuptools
      sudo python3 -m pip install -U amitools     

      

 if [ -d /home/$USER/Desktop/Shared/ ]; then
 
          
      sudo rsync -av --ignore-existing /home/$USER/Desktop/Shared/* ~/Amiga 
      sudo chmod -R 777 /home/$USER/Amiga/
      sudo cp  -rf  /home/$USER/Amiga/rom/amiga-os-310-a1200.rom /home/$USER/Amiga/kickstarts/kick31a1200.rom
      sudo mv /home/$USER/Amiga/rom/* /home/$USER/Amiga/kickstarts/
      sudo rm -d /home/$USER/Amiga/rom/
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
	  


      if [ ! -f /home/$USER/Amiga/kickstarts/amiga-os-310-a1200.rom ]; then
      echo "        **** Amiga Forever files found ****"
      echo "        ***   copy files and activate   ***"
             
      sudo rsync -av --ignore-existing /boot/Shared/* ~/Amiga 
      sudo mv /home/$USER/Amiga/rom/* /home/$USER/Amiga/kickstarts/
      sudo cp -R /home/$USER/RetroPie/BIOS/MegaAGS-Kickstart.rom /home/$USER/Amiga/kickstarts/kick31a1200.rom
      sudo rm -d /home/$USER/Amiga/rom/
      sudo rm /home/$USER/Amiga/dir/*.*
      fi
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
  	 
      echo ""   
fi  
      mkdir /home/$USER/Amiga/dir/Work
      mkdir /home/$USER/Amiga/dir/Work/Software
      mkdir /home/$USER/Amiga/Install/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$BLUE AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
  	 
      echo ""   

 if [ ! -d /home/$USER/Amiga/Install/DF0 ]; then
 
     
     
      #CreateDF0
      sudo mkdir /home/$USER/Amiga/Install/DF0
      cd /opt/AmiRock/Amiga/ClassicWB/
      unzip -o -q ./DF0.zip
      sudo mv /opt/AmiRock/Amiga/ClassicWB/DF0/* /home/$USER/Amiga/Install/DF0
      sudo chmod -R 777 /home/$USER/Amiga/Install/DF0
      rm -d -r /opt/AmiRock/Amiga/ClassicWB/DF0/
      rm -d -r /home/$USER/Amiga/Install/DF0/*.info
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
      
      
    if [ ! -f /home/$USER/Amiga/Install/ClassicWB_UAE_v28.zip ]; then
          
    
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e -n "$BLUE Downloading  ClassicWB_UAE_v28..."
      echo ""
      echo -e "$GRAY "
        cd /home/$USER/Amiga/Install
      wget http://download.abime.net/classicwb/ClassicWB_UAE_v28.zip
    
    fi
    
    if [ ! -f /home/$USER/Amiga/Install/ClassicWB_UAE_v28.zip ]; then
    
        
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e -n "$BLUE Downloading  ClassicWB_UAE_v28..."
      echo ""
      echo -e "$GRAY "

      cd /home/$USER/Amiga/Install

      wget http://download.abime.net/classicwb/ClassicWB_LITE_v28.zip
     fi
    
      if [ ! -d /home/$USER/Amiga/Install/ClassicWB_UAE_v28/ ]; then
      

      
      
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo "ClassicWB extracting... "
      cd /home/$USER/Amiga/Install/
      unzip -o -q ./ClassicWB_UAE_v28.zip
      clear
      cp -r -f  "/home/$USER/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/Software/" /home/$USER/Amiga/dir/
      
    else 
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
        echo "ClassicWB already downloaded"
        
      fi
      
if [ ! -d /home/$USER/Amiga/Install/ClassicWB_LITE_v28/ ]; then
      

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

if [ ! -d /home/$USER/Amiga/dir/System_ADVSP ]; then

     rm -d -r /home/$USER/Amiga/dir/System_ADVSP/
     mkdir /home/$USER/Amiga/dir/System_ADVSP

   
     clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo " "
      echo -e -n "$BLUE "
      echo "  Configure System_ADVSP ...   " 
	     
      
      cd "/home/$USER/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/"
      xdftool System_ADVSP.hdf unpack /home/$USER/Amiga/dir/System_ADVSP
     
      cp -rf /opt/AmiRock/Amiga/ClassicWB/CWB3.pac /home/$USER/Amiga/dir/System_ADVSP/System/T/
      cd /home/$USER/Amiga/dir/System_ADVSP/System/T/
      unzip -u /home/$USER/Amiga/dir/System_ADVSP/System/T/CWB3.pac
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Startup-Sequence /home/$USER/Amiga/dir/System_ADVSP/System/S/
      
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Activate /home/$USER/Amiga/dir/System_ADVSP/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Science /home/$USER/Amiga/dir/System_ADVSP/System/S/
      
      cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-ADVSP.uae /home/$USER/Amiga/conf/
      cp -rf /home/$USER/Amiga/dir/Work/Software /home/$USER/Amiga/dir/System_ADVSP/System/
      
      cp -rf /opt/AmiRock/config/ClassicWB-ADVSP.desktop /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/ClassicWB-ADVSP.desktop /usr/share/applications/
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
  	 
      echo ""
      
     ClassicWB-ADVSP_run
       
    fi
      
      if [ ! -d /home/$USER/Amiga/dir/System_P96/ ]; then
	  
      cd /home/$USER/Amiga/hdf
	  rm -d -r /home/$USER/Amiga/dir/System_P96/
      mkdir /home/$USER/Amiga/dir/System_P96
    
     
      
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
      echo -e -n "$BLUE "
      echo "  Configure System_P96 ...   " 
      
      
      cd "/home/$USER/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/"
      xdftool System_P96.hdf unpack /home/$USER/Amiga/dir/System_P96
      cp -rf /opt/AmiRock/Amiga/ClassicWB/CWB3.pac /home/$USER/Amiga/dir/System_P96/System/T/
      cd /home/$USER/Amiga/dir/System_P96/System/T/
      unzip -o -q /home/$USER/Amiga/dir/System_P96/System/T/CWB3.pac
      
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Startup-Sequence /home/$USER/Amiga/dir/System_P96/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Science /home/$USER/Amiga/dir/System_P96/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/Activate /home/$USER/Amiga/dir/System_P96/System/S/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/screenmode.prefs /home/$USER/Amiga/dir/System_P96/System/Prefs/Env-Archive/Sys/
      cp -rf /opt/AmiRock/Amiga/ClassicWB/ClassicWB-P96.uae /home/$USER/Amiga/conf/
      cp -rf "/home/$USER/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/Software" /home/$USER/Amiga/dir/
          
      
      cp -rf /opt/AmiRock/config/ClassicWB-P96.desktop /home/$USER/Desktop/
      sudo cp -rf /opt/AmiRock/config/ClassicWB-P96.desktop /usr/share/applications/
      cp -rf /home/$USER/Amiga/dir/System_P96/System/Prefs/Patterns/Amiga_1024x768.jpg /home/$USER/Amiga/dir/System_P96/System/Prefs/Patterns/bsg_pm2_800x600.png
      clear
      toilet "AmiRock-OS" --metal
      echo -e "$GREY AmiRock-OS ROM Operating System and Libraries" 
      echo " Version V2.0 2020-2021 AmiRock-OS "
      echo " No Rights Reserved.  "
      echo " "
  	ClassicWB-P96_run 
      echo ""   
 fi
 
 if [ ! -d /home/$USER/Amiga/dir/Amiga1000/ ]; then
   cd /home/$USER/Amiga/dir/
   unzip -u /opt/AmiRock/Amiga/Amiga1000.zip
   cp -rf "/opt/AmiRock/Amiga/ClassicWB/Amiga1000.uae" /home/$USER/Amiga/conf/
   cp -rf "/opt/AmiRock/Amiga/ClassicWB/Aros.uae" /home/$USER/Amiga/conf/
   
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
      
if [ ! -f /home/$USER/Amiga/Install/ClassicWB_LITE_v28.zip ]; then
      echo -e -n "$BLUE Downloading  ClassicWB_UAE_v28..."
      echo ""
      echo -e "$GRAY "

      cd /home/$USER/Amiga/Install

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



if [ ! -d /home/$USER/Amiga/dir/Software/ ]; then
cp -r -f  "/home/$USER/Amiga/Install/ClassicWB_UAE_v28/Hard Disk/Software/" /home/$USER/Amiga/dir/


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
	  
	 echo -e "$RED ***  No valid Amiga KickRom found :-( ***"
	  echo " "
	  echo -e "$BLUE - Copie first your  * Shared * folder  "
	  echo -e  "   from your Amiga Forever installation to your AmiRock-OS Desktop "
	  echo -e  " "
	  echo -e  " - Or copy a legal 3.1 Rom as kick31a1200.rom to "
	  echo -e  "   /home/$USER/Amiga/kickstarts/kick31a1200.rom "
	  echo -e "$BLACK "
	  
	  
	  exit
	  
fi
rm -d -r /opt/Amiga/Install/DF0/  
     
      sudo chmod -R 777 /home/$USER/Amiga/
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
