#!/system/bin/sh

if /system/bin/grep -Fq twrpfastboot /proc/cmdline
then
    /system/bin/mount --bind /vendor/lib /lib
    /system/bin/modprobe -d /lib/modules msm_drm #`/system/bin/cat /proc/cmdline | /system/bin/grep -o -e "msm_drm.*: " | /system/bin/cut -c 9-`
    /system/bin/umount /lib
else
    /system/bin/modprobe -d /lib/modules msm_drm
fi


