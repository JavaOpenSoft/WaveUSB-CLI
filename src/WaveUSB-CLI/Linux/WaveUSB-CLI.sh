#!/bin/bash
#Version 1.0.0
#Author - Rishon Jonathan.R
#MIT License
<< comment
You have the rights to modify the code with the developers permission. Follow the instructions given by the authors of this software
to claim rights to the software.
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
comment

#Download Links for ISO Images/Installers. As of now macOS Installers are not supported.

    macOS11="https://swcdn.apple.com/content/downloads/44/35/012-22320-A_AOID136T4U/g33x1akyjzjpkpe7z0xn7nguoakljpe3a8/InstallAssistant.pkg";
    macOS12="https://swcdn.apple.com/content/downloads/22/05/012-42714-A_04QVESBZ2P/lnob1ikkx0mi6yz5x339ttchkxri53151v/InstallAssistant.pkg";
    macOS12_MBP="https://swcdn.apple.com/content/downloads/16/08/012-06873-A_636SHHRD4L/528ojpmw00mulgfjsz9k50modkj31a9v0p/InstallAssistant.pkg";
    ubuntu="https://releases.ubuntu.com/22.04/ubuntu-22.04-desktop-amd64.iso?_ga=2.53172328.1937538139.1658218589-1552335834.1657779817";
    debian64="https://cdimage.debian.org/debian-cd/current/amd64/bt-dvd/debian-11.4.0-amd64-DVD-1.iso.torrent";
    debian="https://cdimage.debian.org/debian-cd/current/i386/bt-dvd/debian-11.4.0-i386-DVD-1.iso.torrent";
    debianNet64="https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.4.0-amd64-netinst.iso";
    debianNet="https://cdimage.debian.org/debian-cd/current/i386/iso-cd/debian-11.4.0-i386-netinst.iso";
    ubuntuServer="https://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso";
    arch="http://il.us.mirror.archlinux-br.org/iso/2022.07.01/archlinux-2022.07.01-x86_64.iso";
    fedoraWorkspace64="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-36-1.5.iso";
    fedoraWorkspace="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Workstation/aarch64/iso/Fedora-Workstation-Live-aarch64-36-1.5.iso";
    fedoraServer="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Server/x86_64/iso/Fedora-Server-dvd-x86_64-36-1.5.iso";
    fedoraServer_ARM="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Server/aarch64/iso/Fedora-Server-dvd-aarch64-36-1.5.iso";
    deepin="https://cdimage.deepin.com/releases/20.6/deepin-desktop-community-20.6-amd64.iso";
    manjaroGnome="https://download.manjaro.org/gnome/21.3.4/manjaro-gnome-21.3.4-220718-linux515.iso";
    manjaroXFCE="https://download.manjaro.org/xfce/21.3.4/manjaro-xfce-21.3.4-220718-linux515.iso";
    manjaroKDE="https://download.manjaro.org/kde/21.3.4/manjaro-kde-21.3.4-220718-linux515.iso";
    linuxMintEdge="https://mirrors.kernel.org/linuxmint/stable/20.3/linuxmint-20.3-cinnamon-64bit-edge.iso";
    linuxMintXFCE="https://mirrors.kernel.org/linuxmint/stable/21/linuxmint-21-xfce-64bit.iso";
    linuxMintCinnamon="https://mirrors.kernel.org/linuxmint/stable/21/linuxmint-21-cinnamon-64bit.iso";
    linuxMintMate="https://mirrors.kernel.org/linuxmint/stable/21/linuxmint-21-mate-64bit.iso";
    elementaryOS="https://sgp1.dl.elementary.io/download/MTY1ODIyMTYzMg==/elementaryos-6.1-stable.20211218-rc.iso";
    solusGnome="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-GNOME.iso";
    solusBudgie="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-Budgie.iso";
    solusMATE="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-MATE.iso";
    solusKDE="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-Plasma.iso";
    blackArch="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-full-2021.09.01-x86_64.iso";
    blackArchMinimum="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-slim-2021.09.01-x86_64.iso";
    blackArchNet="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-netinst-2021.09.01-x86_64.iso";
    fedoraServerNet_ARM = "https://mirrors.tuna.tsinghua.edu.cn/fedora/releases/36/Server/aarch64/iso/Fedora-Server-netinst-aarch64-36-1.5.iso";
    fedoraServerNet = "https://download.fedoraproject.org/pub/fedora/linux/releases/36/Server/x86_64/iso/Fedora-Server-netinst-x86_64-36-1.5.iso";
    #appDatamacOS = "/Library/Application Support/WaveUSB/";
    #appDataLinux = System.getProperty("user.home")+"/.WaveUSB/";
    #appDataWindows = System.getProperty("user.home")+"/.WaveUSB/";
    
    macOS1015 = "https://github.com/RishonDev/WaveUSB/releases/download/macOS10.15.7/macOS-Catalina.Installer-10.15.7.tar.xz";
    macOS1014 ="https://github.com/RishonDev/WaveUSB/releases/download/macOS10.14.6/macOS-Mojave-Installer-10.14.6.tar.xz";
    macOS1013 = "https://github.com/RishonDev/WaveUSB/releases/download/macOS10.13.6/macOS-HighSierra-Installer-10.13.6.tar.xz";
    writeTrigger = "0"
    inputTrigger = "0"
    outputTriger = "0"
  #Input file and Output device
    IMAGE=""
    DRIVE=""
    while getopts 'iohaw:' OPTION; do
  case "$OPTION" in
    i)
       IMAGE="$OPTARG"
       exit;;
    o)
     DRIVE="$OPTARG"
     exit;;  
    h)
      echo "-i Input image Like this: -i YOURIMAGEHERE"
      echo "-o Output USB Drive Like this : -o YOURIMAGEHERE"
      echo "-w Writes to the USB drive."
      echo "-a Displays the Software script information"
      echo "-h Displays this exact same help."
      echo "Example uasge: ./WaveUSB.sh -i Your/image/path/here -o /Your/USB/Path/Here -w"
      exit;;
    a)
    
      echo "WaveUSB CLI Version 1.0"
      echo "Build 22.7.19"
      echo "Edition - CLI";
      echo "Build Mode:Staging"
      echo "More information on https://github.com/RishonDev/WaveUSB-CLI"
      exit;;
    
    w)
    exit;;  
    ?)
      echo "script usage: $(basename \$0) [-l] [-h] [-a somevalue]" >&2
      exit 1
      exit;;
  esac

  

done
shift "$(($OPTIND -1))"
if[[writeTrigger="1"]]
then
       sudo dd if="$IMAGE" of="$DRIVE" bs=1M status=progress
fi
if[[inputTrigger="1"]]
then
       sudo dd if="$IMAGE" of="$DRIVE" bs=1M status=progress
fi
if[[outputTrigger="1"]]
then
       sudo dd if="$IMAGE" of="$DRIVE" bs=1M status=progress
fi
echo "Welcome to waveUSB writer!"
echo "Let's now begin to create your bootable USB device."
echo "Do You wish to:"
echo "1)Use a image from the local filesystem"
echo "2) Use an image from the internet"
echo "3)Display the program information"
echo "4)Exit program"
while true; do
    read yn
    case $yn in
        [1]* ) imageFromOnline;;
        [2]* ) read IMAGE -p "Enter the path of the image file"
               lsblk
               read DRIVE -p "Enter the path of the drive"
                clear
                echo "Writing the image to disk..."
                sudo dd if="$IMAGE" of="$DRIVE" bs=1M status=progress;;
        [3]* ) clear;echo "WaveUSB CLI Version 1.0";echo "Build 22.7.19";echo "Edition - CLI";echo "Build Mode:Staging";echo "More information on https://github.com/RishonDev/WaveUSB-CLI";exit;;
        [4]* ) exit;;
    esac
done

welcome(){
  echo "Welcome to waveUSB writer!"
  echo "Let's now begin to create your bootable USB device."
  echo "Do You wish to:"
  echo "1)Use a image from the local filesystem"
  echo "2) Use an image from the internet"
  echo "3)Display the program information"
  echo "4)Exit program"
}
macOS(){
  echo "Enter the OS you would like to use:"
  echo "1)macOS 11(Version 11.6.7, Name:macOS Big Sur)"
  echo "2)macOS 12(Version 12.4, Name:macOS Monterey)"

}

OS_SELECTION(){
  echo "1.Linux"
  echo "2.macOS"
  echo "3.Windows"
  echo "4.Other Image.."
  echo "5.Back.."
  echo "6.Exit.."
  while true; do
    read yn
    case $yn in
        [1]* ) Linux;;
        [2]* ) macOS;;
        [3]* ) Windows;;
        [4]* ) Other;;
        [5]*) welcome;;
        [6]*) exit;;
    esac
done
  
}
Windows(){
  clear
  echo "1.Windows XP 64-bit"
  echo "2. Windows XP 32-bit"
  echo "3.Windows 8 32-bt"
  echo "4.Windows 8 64-bit"
  echo "5.Windows 10 32-bit"
  echo "6.Windows 10 64-bit"
  echo "7.Windows 11(64-bit only)"
  echo "8.Back.."
  echo "9.Exit"
  while true; do
    read yn
    case $yn in
        [1]* ) wget ();;
        [2]* ) wget();;
        [3]* ) wget();;
        [4]*) wget();;
        [5]*) wget();;
        [6]*) wget();;
        [7]*) wget();;
        [8]*) OS_SELECTION;;
        [9]* ) exit;;
    esac
done
}
Linux(){

}
aboutSoftware(){
  echo "WaveUSB CLI Version 1.0"
  echo "Build 22.7.19"
  echo "Edition - CLI"
  echo "Build Mode:Staging"
  echo "More information on https://github.com/RishonDev/WaveUSB-CLI"
  exit
}
Other(){
  read IMAGE -p "Enter the path of the image file"
               lsblk
  read DRIVE -p "Enter the path of the drive"
  clear
  echo "Writing the image to disk..."
  sudo dd if="$IMAGE" of="$DRIVE" bs=1M status=progress
}
write(){
  sudo dd if="$IMAGE" of="$DRIVE" bs=1M status=progress
}

