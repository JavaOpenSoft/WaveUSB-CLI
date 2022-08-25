#!/bin/zsh
USB=()
while getopts ":Vh:" opt; do
  case $opt in
    V)
      USB="$OPTARG"
      diskutil --verifyDisk $USB
      exit
      ;;
    h)
      echo "Usage: verify_usb_mac.sh [-V USB DRIVE PATH] [-h]"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;

  esac
done
