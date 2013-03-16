#!/system/bin/sh

export PATH=/system/bin:$PATH
export LD_LIBRARY_PATH=/system/lib:$LD_LIBRARY_PATH

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

###########################################
# Backup the SMC keystore and EMT keystore
###########################################
if [ -f /system/bin/mot_sst_state_parser ] ; then
   echo "Running Motorola SST key backup..."
   if [ ! -d /pds/mot_sst ] ; then
      mkdir /pds/mot_sst
   fi
   chmod 700 /pds/mot_sst
   /system/bin/mot_sst_state_parser
fi



############################################
# Default: start up Motorola signed SMC PA #
# If it fails, start up EMU version        #
############################################

# Determine if SMC with 8Mb carve-out (for secure Playready) is needed or not.
CMDLINE=`cat /proc/cmdline`
HS_SMC=/system/etc/smc_pa_pk_4_ipa.bin
for i in ${CMDLINE}
do
  if [ "${i}" = "drmplay=1" ]
  then
      HS_SMC=/system/etc/smc_pa_pk_4_8Mb_ipa.bin
      break
  fi
done

USE_EMU=0
if [ -f ${HS_SMC} ] ; then
   echo "Starting Motorola Signed SMC-Crypto PA..."
   /system/bin/smc_pa_ctrl -c /system/etc/smc_android_cfg.ini start ${HS_SMC}
   ret=$?
   if [ $ret -eq 0 ]
   then
      echo "Starting Motorola Signed SMC PA: OK"
   else
      echo "Starting Motorola Signed SMC PA: Failed"
      USE_EMU=1
   fi
else
   echo "Motorola Signed SMC PA ${HS_SMC} is not found"
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

