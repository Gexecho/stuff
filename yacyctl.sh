#!/bin/bash
# Yacy start stop
# fully decentralized & free search engine http://yacy.net

[ -n "$1" ] || {
echo "Usage:
luncher for yacy luncher's :)
 
./yacyctl.sh [parameter]
 
 Usable parameters:
    -start
   -stop 
   -update
   -kill
   -reconfigure 
     ";
return ;}
 
 
case "$1" in
-start)
 
/home/$USER/yacy/startYACY.sh && echo 'start'
 
  ;;
 
-stop)
 
/home/$USER/yacy/stopYACY.sh && echo 'bye'

  ;;
 
-update)

/home/$USER/yacy/updateYACY.sh && echo 'update'

  ;;
 
-kill)

/home/$USER/yacy/killYACY.sh && echo 'why you kill me?'

  ;;

-reconfigure)

/home/$USER/yacy/reconfigureYACY.sh && echo 'ok for me'

  ;;

esac

exit 0
