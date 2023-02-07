#!/system/bin/sh

if /system/bin/grep -Fq twrpfastboot /proc/cmdline; then
    /system/bin/modprobe -d /vendor/lib/modules/1.1 aw8697
    /system/bin/modprobe -d /vendor/lib/modules/1.1 haptic
    /system/bin/setprop custom.aw8697.loaded true
else
    if [ -b /dev/block/bootdevice/by-name/vendor_dlkm ]; then
        /system/bin/mount /dev/block/bootdevice/by-name/vendor_dlkm /vendor_dlkm
        /system/bin/modprobe -d /vendor_dlkm/lib/modules aw8697
        /system/bin/modprobe -d /vendor_dlkm/lib/modules haptic
        /system/bin/umount /vendor_dlkm
        if lsmod | grep -Fq aw8697; then
            /system/bin/setprop custom.aw8697.loaded true
        fi
    else
        if [ -b /dev/block/bootdevice/by-name/vendor ]; then
            /system/bin/mount /dev/block/bootdevice/by-name/vendor /vendor
            /system/bin/modprobe -d /vendor/lib/modules aw8697
            /system/bin/modprobe -d /vendor/lib/modules haptic
            /system/bin/umount /vendor
            if lsmod | grep -Fq aw8697; then
                /system/bin/setprop custom.aw8697.loaded true
            fi
        fi
    fi
fi

