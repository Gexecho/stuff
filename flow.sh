#!/bin/bash
# control airflow ATI card0 


[ -n "$1" ] || {
echo "Usage:
Run it as root!
 
sudo ./flow.sh [parameter]
 
 Usable parameters:
 
   -l      : low power
   -m      : mid power
   -h      : high performance
   -d      : default value
   -auto   : automatic
   -dyn    : frequency depends on load
     ";
return ;}
 
 
case "$1" in
-l)
 
echo profile > /sys/class/drm/card0/device/power_method
echo low > /sys/class/drm/card0/device/power_profile
 
  ;;
 
-m)
 
echo profile > /sys/class/drm/card0/device/power_method
echo mid > /sys/class/drm/card0/device/power_profile
 
  ;;
 
-h)
 
echo profile > /sys/class/drm/card0/device/power_method
echo high > /sys/class/drm/card0/device/power_profile
 
  ;;
 
-d)
echo profile > /sys/class/drm/card0/device/power_method
echo default > /sys/class/drm/card0/device/power_profile
 
  ;;
 
-a)
 
echo profile > /sys/class/drm/card0/device/power_method
echo auto > /sys/class/drm/card0/device/power_profile
 
  ;;
 
-dyn)

echo dynpm > /sys/class/drm/card0/device/power_method
 
  ;;
 
esac
 
exit 0
