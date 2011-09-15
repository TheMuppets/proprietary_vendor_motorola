#!/system/bin/sh

export PATH=/system/bin:$PATH
export LD_LIBRARY_PATH=/system/lib:$LD_LIBRARY_PATH

################################################
# Start up SMC only if ro.service.start.smc=1  #
################################################
USE_SMC=0
USE_SMC=`getprop ro.service.start.smc`
echo "USE_SMC set to: $USE_SMC "

if [ ! -n "$USE_SMC" ]
then
    echo "USE_SMC is undefined. Script exiting without starting SMC."
    exit
else
    if [ $USE_SMC -ne "1" ]
    then
        echo "USE_SMC[$USE_SMC] is not set to 1. Script exiting without starting SMC."
        exit
    fi
fi

###############################################################
# To start up SMC for TPAPI                                   #
#    - verify /pds/security directory exists                  #
#    - verify /data/tpapi directory exists                    #
#    - start up SMC-Crypto PA                                 #
#    - starup SMC daemon                                      #
###############################################################

# /pds/security should be created by init script
if [ ! -d /pds/security ]
then
    echo "/pds/security does not exist."
    exit
fi

# /data/tpapi/etc/tpa/persistent should be created by init script
if [ ! -d /data/tpapi/etc/tpa/persistent ]
then
    echo "/data/tpapi/etc/tpa/persistent does not exist."
    exit
fi

###########################################
# check if smc_pa_ctrl and tf_daemon exist #
###########################################
if [ ! -f /system/bin/smc_pa_ctrl ] ; then
   echo "SMC PA CTRL /system/bin/smc_pa_ctrl is not found"
   exit
fi

if [ ! -f /system/bin/tf_daemon ] ; then
   echo "SMC Daemon /system/bin/tf_daemon is not found"
   exit
fi

############################################
# Default: start up Motorola signed SMC PA #
# If it fails, start up EMU version        #
############################################
USE_EMU=0
if [ -f /system/etc/smc_pa_pk_4_ipa.bin ] ; then
   echo "Starting Motorola Signed SMC-Crypto PA..."
   /system/bin/smc_pa_ctrl -c /system/etc/smc_android_cfg.ini start /system/etc/smc_pa_pk_4_ipa.bin
   ret=$?
   if [ $ret -eq 0 ]
   then
      echo "Starting Motorola Signed SMC PA: OK"
   else
      echo "Starting Motorola Signed SMC PA: Failed"
      USE_EMU=1
   fi
else
   echo "Motorola Signed SMC PA /system/bin/smc_pa_pk_4_ipa.bin is not found"
   USE_EMU=1
fi

if [ $USE_EMU -eq 1 ]
then
   echo "Try starting SMC PA for EMU..."
   if [ -f /system/etc/smc_pa.ift ] ; then
      /system/bin/smc_pa_ctrl -c /system/etc/smc_android_cfg.ini start /system/etc/smc_pa.ift
      ret=$?
      if [ $ret -eq 0 ]
      then
         echo "Starting EMU SMC PA: OK"
      else
         echo "Starting EMU SMC PA: Failed"
         exit
      fi
   else
      echo "SMC PA for EMU /system/etc/smc_pa.ift does not exist"
      exit
   fi
fi

########################
# Start up SMC daemon  #
########################
echo "Starting TF daemon..."
/system/bin/tf_daemon -c /system/etc/smc_android_cfg.ini &
ret=$?
if [ $ret -eq 0 ]
then
   echo "Starting TF Daemon: OK"
else
   echo "Starting TF Daemon: Failed"
   exit
fi

