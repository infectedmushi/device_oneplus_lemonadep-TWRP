#!/system/bin/sh
if ! lsmod | grep -Fq aw8697
then
    if /system/bin/grep -Fq twrpfastboot /proc/cmdline
    then
        #/system/bin/umount /vendor
        /system/bin/modprobe -d /vendor/lib/modules/1.1 aw8697
        /system/bin/modprobe -d /vendor/lib/modules/1.1 haptic
    else
        #/system/bin/umount /vendor_dlkm
        if [ -b /dev/block/bootdevice/by-name/vendor_dlkm ]; then
            /system/bin/mount /dev/block/bootdevice/by-name/vendor_dlkm /vendor_dlkm
            /system/bin/modprobe -d /vendor_dlkm/lib/modules aw8697
            /system/bin/modprobe -d /vendor_dlkm/lib/modules haptic
            /system/bin/umount /vendor_dlkm
        else
            if [ -b /dev/block/bootdevice/by-name/vendor ]; then
                /system/bin/mount /dev/block/bootdevice/by-name/vendor /vendor
                /system/bin/modprobe -d /vendor/lib/modules aw8697
                /system/bin/modprobe -d /vendor/lib/modules haptic
                /system/bin/umount /vendor
            fi
        fi
    fi
fi

