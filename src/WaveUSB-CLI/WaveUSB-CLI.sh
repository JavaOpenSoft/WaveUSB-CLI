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
#Download Links for Installation
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
echo "Welcome to waveUSB writer!"
echo "Let's now begin to create your bootable USB device."
echo "Do You wish to:"
echo "1)Use a image from the local filesystem"
echo "2) Use an image from the internet"
while true; do
    read yn
    case $yn in
        [1]* ) func1; break;;
        [2]* ) exit;;
        * ) echo "Please answer a 1 or a 2.";;
    esac
done

