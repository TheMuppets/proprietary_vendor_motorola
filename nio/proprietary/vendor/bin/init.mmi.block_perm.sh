#!/vendor/bin/sh

block_by_name=/dev/block/bootdevice/by-name
utags=${block_by_name}/utags
utags_backup=${block_by_name}/utagsBackup

# Set correct permissions for UTAGS
/vendor/bin/chown -L root:system $utags
/vendor/bin/chown -L root:system $utags_backup
/vendor/bin/chmod -L 0660 $utags
/vendor/bin/chmod -L 0660 $utags_backup

# HOB/DHOB
hob=${block_by_name}/hob
dhob=${block_by_name}/dhob
/vendor/bin/chown -L radio:radio $hob
/vendor/bin/chown -L radio:radio $dhob
/vendor/bin/chmod -L 0660 $hob
/vendor/bin/chmod -L 0660 $dhob

# CLOGO
clogo=${block_by_name}/clogo
/vendor/bin/chown -L root:vendor_tcmd $clogo
/vendor/bin/chmod -L 0660 $clogo

#CID
cid=${block_by_name}/cid
/vendor/bin/chown -L root:vendor_tcmd $cid
/vendor/bin/chmod -L 0660 $cid

#BL logs
logs=${block_by_name}/logs
if [ -f $logs ]; then
/vendor/bin/chown -L root:system $logs
/vendor/bin/chmod -L 0640 $logs
fi
