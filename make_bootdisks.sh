#/bin/sh

WORK=$PWD

rm -f tmp/*
cd initrd_boot
mkcramfs initrd ../tmp/initrd
cd $WORK
cp linuxboot.cfg.hdd tmp/linuxboot.cfg
cp xbeboot.xbe tmp/default.xbe
cp vmlinuz tmp/

mkisofs -r -J -udf -o boot_fatx.iso tmp/

rm -f tmp/linuxboot.cfg

cp linuxboot.cfg.fatx tmp/linuxboot.cfg
mkisofs -r -J -udf -o boot_hdd.iso tmp/
