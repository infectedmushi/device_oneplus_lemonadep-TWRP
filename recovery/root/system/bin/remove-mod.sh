if grep -Fq twrpfastboot /proc/cmdline
then
    rm -r /lib
fi
