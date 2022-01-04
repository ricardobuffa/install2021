#!/bin/bash
 
#Automatically install softwares on Xubuntu 20.04 (32 and 64 bits)
#Version: 1.1
#Author: Ricardo Buffa Verçosa
#13/09/2021
 
#Software list
<<SOFTWARELIST
SOFTWARELIST
#Learning about if on shell scripts and multi line comment
#Some tips about how to use the if command on shell

<<MULTILINE
Comparisors
-eq    equal to
-ne    not equal to
-lt    less than
-le    less than or equal to
-gt    greater than
-ge    greater than or equal to
 
File Operations:
-s    file exists and is not empty
-f    file exists and is not a directory
-d    directory exists
-x    file is executablerm
-w    file is writable
-r    file is readable
 
Example of usage
if [ -f exists.file ] ; then echo "yes" ; else echo "no" ; fi
MULTILINE

#00 Software Installation: Apt - ubuntu 20 already have apt from clean install
apt-get install apt

#00 Software Installation: Aptitude
apt install --assume-yes -y aptitude

#00 Software Installation:Flatpack
apt install --assume-yes -y flatpak
apt install --assume-yes -y gnome-software
apt install --assume-yes -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#flatpak --user install https://flathub.org/repo/appstream/fr.handbrake.ghb.flatpakref

#00 Software Installation:Snap
apt install --assume-yes -y snapd
snap install hello-world 

#00 Adding repositories
add-apt-repository universe
add-apt-repository multiverse
add-apt-repository restricted

#01 Software Installation: Android Studio
snap install android-studio --classic 

#04 Software Installation: Audacity
snap install audacity

#05 Software Installation: Blender
snap install blender --classic

#06 Software Installation: Bluefish
apt install --assume-yes -y bluefish
apt update

#07 Software Installation: Brasero
apt install --assume-yes -y brasero
apt update

#08 Software Installation: Brave browser
snap install brave

#09 Software Installation: Codeblocks
apt install --assume-yes -y codeblocks
apt update

#10 Software Installation: Codelite
apt install --assume-yes -y codelite
apt update

#11 Software Installation: Deluge
apt install --assume-yes -y deluge
apt update


#12 Software Installation: Discord
snap install discord

#13 Software Installation: Eclipse
snap install eclipse --classic

#14 Software Installation: Filezilla
apt install --assume-yes -y filezilla
apt update

#15 Software Installation: Firefox uncomment for distros that doesnt have
#snap install firefox

#16 Software Installation: G++ uncomment for distros that doesnt have
apt install g++

#17 Software Installation: Geany
apt install --assume-yes -y geany
apt update


If you are using ubuntu 32 then Install Chromium
#If you are using ubuntu 64 then Install Chrome Stable
#18 Software Installation: Chromium or Chrome - version using case

 
ARCHITETURE=$(eval uname -m)
echo $ARCHITETURE

case "$ARCHITETURE" in
	"i686")
	echo "This is a 32 bits version of Linux"
	echo "Installing Chromium"
	sudo apt install --assume-yes -y chromium-browser
	;;
	"x86_64")
	echo "This is a 64 bits version"
	echo "Installing Chrome 64 bits for Linux"
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
	apt update
	apt install --assume-yes -y google-chrome-stable
	;;
	*)
	echo "Your linux was not identified!!!"
	;;
esac
apt update

#19 Software Installation: Gedit - uncomment for distros that doesnt have
#snap install -y gedit

#20 Software Installation: Gimp - uncomment for distros that doesnt have
#snap install gimp

#21 Software Installation: Gparted
apt install --assume-yes -y gparted
apt update

#22 Software Installation: Guake
apt install --assume-yes -y guake
apt update

#23 Software Installation: Handbrake
snap install handbrake-jz

#24 Software Installation: Inkscape
snap install inkscape

#25 Software Installation: kate
snap install kate-jz

#26 Software Installation: Kazam
apt install kazam

#27 Software Installation: Kile and aspeel-portuguese
apt install --assume-yes -y kile
apt install --assume-yes -y aspell-pt
apt update

#28 Software Installation: Libreoofice - uncomment for distros that doesnt have
#sudo apt install libreoffice-gnome libreoffice

#26 Software Installation: latexila
#apt install --assume-yes -y latexila

#27 Software Installation: Lyx
#apt update
#apt install --assume-yes -y lyx
#apt update

#28 Software Installation: Milktracker
apt install --assume-yes -y milkytracker

#29 Software Installation: Mypaint and mypaint extras
apt update
apt install --assume-yes -y mypaint mypaint-data-extras
apt update

#28 Software Installation: obs studio
snap install obs-studio

#29 Software Installation: okular
#snap install okular - uncomment for distros that doesnt have

#30 Software Installation: Openshot via flatpak / update using command on the next line
# flatpak --user update org.openshot.OpenShot
flatpak install --user --assumeyes -y https://flathub.org/repo/appstream/org.openshot.OpenShot.flatpakref

#31 Software Installation: p7zip desktop
#snap install p7zip-desktop
apt install --assume-yes -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark
apt update

#32 Software Installation: qmmp
snap install qmmp

#33 Software Installation: reminna - uncomment for distros that doesnt have
#snap install remina

#34 Software Installation: sc-controller
snap install sc-controller

#35 Software Installation: shutter
snap install shutter

#36 Software Installation: simplescan - uncomment for distros that doesnt have
#aptitude install simple-scan

#37 Software Installation: simplenote
snap install simplenote

#38 Software Installation: snap-store
#snap install snap-store

#39 Software Installation: Soundconverter
apt install --assume-yes -y soundconverter
apt update

#40 Software Installation: Stacer
apt install --assume-yes -y stacer

#41 Software Installation: subtitle editor
snap install --edge subtitle-edit
snap connect subtitle-edit:alsa :alsa
snap connect subtitle-edit:removable-media :removable-media
snap connect subtitle-edit:mount-observe :mount-observe

#42 Software Installation: Synaptic
apt install --assume-yes -y synaptic
apt update

#43 Software Installation: Terminator
apt install --assume-yes -y terminator
apt update

#44 Software Installation: Texmaker
#apt install --assume-yes -y texmaker
#apt update

#45 Software Installation: To Do (para abrir em portugues procure por tarefa)
#flatpak install --assumeyes -y --from https://flathub.org/repo/appstream/org.gnome.Todo.flatpakref

#46 Software Installation: Uget
apt update
apt install --assume-yes -y uget
apt update

#47 Software Installation: Vokoscreen
snap install vokoscreen-ng

 
#48 Software Installation: Vscode 
snap install code --classic

#49 Software Installation: xbox-controller
add-apt-repository -y ppa:rael-gc/ubuntu-xboxdrv
apt-get install --assume-yes -y ubuntu-xboxdrv

 
#Opcionais instale somente se quiser
#XX Software Installation: Flash plugin - Already Installed Maybe (18 or above)
apt install --assume-yes -y flashplugin-installer
apt update
 
#XX Software Installation: Gv
#apt install --assume-yes -y gv
#apt update
 
#XX Software Installation: Gdebi-core
#apt install --assume-yes -y gdebi-core
#apt update
 
#XX Software Installation: Virtualbox
#apt install virtualbox virtualbox-ext-pack

#XX Software Installation: Xpdf
apt install --assume-yes -y xpdf
apt update

#XX Software Installation: Unrar
apt install --assume-yes -y unrar
apt update
 
#XX Software Installation: Cheese
apt install --assume-yes -y cheese
apt update
 
#XX Software Installation: Subtitleeditor
add-apt-repository -y ppa:nilarimogard/webupd8
apt install --assume-yes -y subtitleeditor
apt update
 
#XX Software Installation: Nmap
apt install --assume-yes -y nmap
apt update
 
#XX Software Installation: Chkrootkit
apt install --assume-yes -y chkrootkit
apt update
 
#XX Software Installation: Git
apt install --assume-yes -y git
apt update
 
#XX Software Installation: Minicom - can be used to aid conecting COM ports
#apt install --assume-yes -y minicom
#apt update
 
#XX Software Installation: LXC - for linux containers
#apt install --assume-yes -y lxc
#apt update
 
#XX Software Installation: Putty - SSh client
apt install --assume-yes -y putty
apt update
 
#XX Software Installation: Tftp
apt install --assume-yes -y tftp
apt update
 
#XX Software Installation: Crudini
apt install --assume-yes -y crudini
 
#XX Software Installation: alien
apt install --assume-yes -y alien
apt update
 
#XX Software Installation: vlans
#apt install --assume-yes -y vlan

#XX Software Installation: vlc media player 
sudo snap install vlc

#XX Software Installation: vlc media player 
sudo snap install shotcut

#-----Configurando VLAN-------
#lsmod | grep 8021q
#echo VLAN modules 8021q
#modprobe 8021q
#echo Checking VLAN modules 8021q
#lsmod | grep 8021q
 
#Registering on startup
#sh -c 'grep -q 8021q /etc/modules || echo 8021q >> /etc/modules'
#-----Fim Configurando VLAN-------

echo ***********THE SCRIPT IS NOW OVER\!\!\!**********

