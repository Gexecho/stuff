#!/bin/bash
# control airflow ATI card0 


[ -n "$1" ] || {
echo "Usage:
Run it as root!
 
sudo ./flow.sh [parameter]
 
 Usable parameters:
 
   --low     : low power
   --mid     : mid power
   --high    : high performance
   --default : default value
   --auto    : automatic
   --dynamic : frequency depends on load
     ";
return ;}
 
 
case "$1" in
--low)
 
echo profile > /sys/class/drm/card0/device/power_method
echo low > /sys/class/drm/card0/device/power_profile
 
  ;;
 
--mid)
 
echo profile > /sys/class/drm/card0/device/power_method
echo mid > /sys/class/drm/card0/device/power_profile
 
  ;;
 
--high)
 
echo profile > /sys/class/drm/card0/device/power_method
echo high > /sys/class/drm/card0/device/power_profile
 
  ;;
 
--default)
echo profile > /sys/class/drm/card0/device/power_method
echo default > /sys/class/drm/card0/device/power_profile
 
  ;;
 
--auto)
 
echo profile > /sys/class/drm/card0/device/power_method
echo auto > /sys/class/drm/card0/device/power_profile
 
  ;;
 
--dynamic)

echo dynpm > /sys/class/drm/card0/device/power_method
 
  ;;
 
esac
 
exit 0
