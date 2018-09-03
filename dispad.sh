#!/bin/bash


##################################################
#
# Script disabling laptop touchpad
#
##################################################

echo -e "Enter 0 to disable touchpad or 1 to enable it."
read -p "option : " CHOICE 
if [ "$CHOICE" == 0 ] || [ "$CHOICE" == 1 ]; then
  ID="$(xinput list --id-only "SynPS/2 Synaptics TouchPad")"
  xinput set-prop $ID "Device Enabled" $CHOICE
else
  echo -e "Invalid option.\nExit script."
fi

