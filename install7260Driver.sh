# NVIDIA Jetson TK1#!/bin/sh
# Install Driver for Intel 7260 miniPCIE wireless card
sudo cp -rv iwlwifi /lib/modules/3.10.40-g8c4516e/kernel/drivers/net/wireless
# Supplied mac80211.ko does not export __ieee80211_get_radio_led_name symbol; Newly built one does
sudo cp -v mac80211.ko /lib/modules/3.10.40-g8c4516e/kernel/net/mac80211
# Update wireless module - cfg80211.ko
sudo cp -v cfg80211.ko /lib/modules/3.10.40-g8c4516e/kernel/net/wireless
# Place the firmware for the 7260 into the firmware directory
# As an alternative, you can:
# sudo apt-get install linux-firmware
sudo cp -v iwlwifi-7260-7.ucode /lib/firmware
# Add the GPIO 191 modification and reload iwlwifi on boot
sudo cp -v rc.local /etc
# Generate modules.dep and map files; Tell modules how they all relate
sudo depmod -a
echo 'Please reboot for Intel 7260 module initalization'

