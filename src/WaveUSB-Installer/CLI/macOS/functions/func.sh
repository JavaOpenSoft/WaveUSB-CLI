#!/bin/zsh
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
  echo "1)macOS 11(Version 11.6.7, Name:macOS Big Sur)"
  echo "2)macOS 12(Version 12.4, Name:macOS Monterey)"

}
macOS11(){
  wget $MACOS11
  sudo installer -pkg InstallAssistant.pkg

}
macOS12(){}