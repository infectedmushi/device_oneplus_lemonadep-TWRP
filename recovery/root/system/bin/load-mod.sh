#!/system/bin/sh

if /system/bin/grep -Fq twrpfastboot /proc/cmdline; then
    /system/bin/modprobe -d /vendor/lib/modules/1.1 msm_drm
fi


