#!/bin/bash
# Dynamic power management for ATI card

[ -n "$1" ] || {
echo "Usage:
Run it as root!
 
sudo ./dpm.sh [parameter]
 
 Usable parameters:
 
   -eco    : low performance
   -mid    : midle performance
   -hig    : high performance 
     ";
return ;}
 
 
case "$1" in
-eco)
 
echo battery > /sys/class/drm/card0/device/power_dpm_state
 
  ;;
 
-mid)
 
echo balanced > /sys/class/drm/card0/device/power_dpm_state 

  ;;
 
-hig)

echo performance > /sys/class/drm/card0/device/power_dpm_state

  ;;
 
esac

exit 0
