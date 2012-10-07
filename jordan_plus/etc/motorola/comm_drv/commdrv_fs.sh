#!/system/bin/sh
pds_path=/pds/comm_drv
data_path=/data/comm_drv
cache_path=/cache/recovery
default_path=/system/etc/motorola/comm_drv

if [ ! -f $pds_path/mmins_settings.cfg ]
then
  cat $default_path/mmins_settings.cfg > $pds_path/mmins_settings.cfg
fi

if [ ! -f $data_path/mmins_user_settings.cfg  ]
then
  cat $default_path/mmins_user_settings.cfg > $data_path/mmins_user_settings.cfg  
fi
#   w30264 03-Nov-2010 IKMUSTANG-6544 SIMPIN not prompted after exiting recovery mode
#   system and cache groups were added to the commdrv process in init.mapphone_umts.rc file
#   for accessing the /cache/recovery directory at powerup.
if [ -f $cache_path/log ]
then
  echo lock > $data_path/recovery
  chmod 0660 $data_path/recovery
fi
#   IKMUSTANG-6544

chmod 0660 $pds_path/mmins_settings.cfg 
chmod 0660 $data_path/mmins_user_settings.cfg

