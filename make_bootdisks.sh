#/bin/sh

WORK=$PWD

rm -rf tmp
mkdir tmp

mkcramfs initrd_boot/initrd tmp/initrd

cp linuxboot.cfg.hdd_xbe tmp/linuxboot.cfg
cp xbeboot.xbe tmp/default.xbe
cp vmlinuz-24 tmp/vmlinuz

mkisofs -r -J -udf -o boot_hdd.iso tmp/

rm -f tmp/linuxboot.cfg

cp linuxboot.cfg.fatx tmp/linuxboot.cfg

mkisofs -r -J -udf -o boot_fatx.iso tmp/
