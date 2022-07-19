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

#Download Links for ISO Images/Installers

    MACOS11="https://swcdn.apple.com/content/downloads/44/35/012-22320-A_AOID136T4U/g33x1akyjzjpkpe7z0xn7nguoakljpe3a8/InstallAssistant.pkg"
    MACOS12="https://swcdn.apple.com/content/downloads/16/08/012-06873-A_636SHHRD4L/528ojpmw00mulgfjsz9k50modkj31a9v0p/InstallAssistant.pkg"
    MACOS12MBP="https://swcdn.apple.com/content/downloads/16/08/012-06873-A_636SHHRD4L/528ojpmw00mulgfjsz9k50modkj31a9v0p/InstallAssistant.pkg"
    UBUNTU="https://releases.ubuntu.com/22.04/ubuntu-22.04-desktop-amd64.iso?_ga=2.53172328.1937538139.1658218589-1552335834.1657779817"
    DEB64="https://cdimage.debian.org/debian-cd/current/amd64/bt-dvd/debian-11.4.0-amd64-DVD-1.iso.torrent"
    DEB="https://cdimage.debian.org/debian-cd/current/i386/bt-dvd/debian-11.4.0-i386-DVD-1.iso.torrent"
    DEBNET64="https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.4.0-amd64-netinst.iso"
    DEBNET="https://cdimage.debian.org/debian-cd/current/i386/iso-cd/debian-11.4.0-i386-netinst.iso"
    UBUNTUSERVERDOWNLOAD="https://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso"
    ARCH="http://il.us.mirror.archlinux-br.org/iso/2022.07.01/archlinux-2022.07.01-x86_64.iso"
    FEDORAWS64="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-36-1.5.iso"
    FEDORAWS="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Workstation/aarch64/iso/Fedora-Workstation-Live-aarch64-36-1.5.iso"
    FEDORASERV="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Server/x86_64/iso/Fedora-Server-dvd-x86_64-36-1.5.iso"
    FEDORASERVARM="https://download.fedoraproject.org/pub/fedora/linux/releases/36/Server/aarch64/iso/Fedora-Server-dvd-aarch64-36-1.5.iso"
    DEEPIN="https://cdimage.deepin.com/releases/20.6/deepin-desktop-community-20.6-amd64.iso"
    MANJAROGNOME="https://download.manjaro.org/gnome/21.3.4/manjaro-gnome-21.3.4-220718-linux515.iso"
    MANJAROXFCE="https://download.manjaro.org/xfce/21.3.4/manjaro-xfce-21.3.4-220718-linux515.iso"
    MANJAROKDE="https://download.manjaro.org/kde/21.3.4/manjaro-kde-21.3.4-220718-linux515.iso"
    LINUXMINTEDGE="https://mirrors.kernel.org/linuxmint/stable/20.3/linuxmint-20.3-cinnamon-64bit-edge.iso"
    LINUXMINTXFCE="https://mirrors.kernel.org/linuxmint/stable/20.3/linuxmint-20.3-xfce-64bit.iso"
    LINUXMINTCINN="https://mirrors.kernel.org/linuxmint/stable/20.3/linuxmint-20.3-cinnamon-64bit.iso"
    LINUXMINTMATE="https://mirrors.kernel.org/linuxmint/stable/20.3/linuxmint-20.3-mate-64bit.iso"
    ELEMENTARYOS="https://sgp1.dl.elementary.io/download/MTY1ODIyMTYzMg==/elementaryos-6.1-stable.20211218-rc.iso"
    SOLUSGNOME="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-GNOME.iso"
    SOLUSBUD="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-Budgie.iso"
    SOLUSMATE="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-MATE.iso"
    SOLUSKDE="https://mirrors.rit.edu/solus/images/4.3/Solus-4.3-Plasma.iso"
    BLACKARCH="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-full-2021.09.01-x86_64.iso"
    BLACKARCHMINIMUM="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-slim-2021.09.01-x86_64.iso"
    BLACKARCHNET="https://ftp.halifax.rwth-aachen.de/blackarch/iso/blackarch-linux-netinst-2021.09.01-x86_64.iso"
  #Input file and Output device
    IMAGE=""
    DRIVE=""
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
        [2]* ) localMachine;;
        [3]* ) clear;echo "WaveUSB CLI Version 1.0";echo "Build 22.7.19";echo "Edition - CLI";echo "Build Mode:Staging";echo "More information on https://github.com/RishonDev/WaveUSB-CLI";exit;;
        [4]* ) exit;;
    esac
done
localMachine(){
  read IMAGE -p "Enter the path of the image file"
  lsblk
  read DRIVE -p "Enter the path of the drive"
  clear
  echo "Writing the image to disk..."
  sudo dd if="$IMAGE" of="$DRIVE" bs=1M status=progress

}
welcome(){

}
imageFromOnline(){
  echo "Enter the OS you would like to use:"
  echo "macOS 11(Version 11.6.7, Name:macOS Big Sur)"
  echo ""
}
macOS11(){
  echo "Mac OS X"
}
macOS12(){}

