#!/bin/sh

./make_initrd.sh
rm -f tmp/*
rm -f xbeboot/initrd
rm -f xbeboot/vmlinuz
rm -f xbeboot/linuxboot.cfg
rm -f tmp/basedebs.tar
rm -f cd/default.xbe
cp micro/initrd tmp/
cp micro/vmlinuz tmp/
cp micro/linuxboot.cfg tmp/
cp xbeboot.xbe tmp/default.xbe
cp basedebs.tar tmp/
cp kernel-image-*.deb tmp/
cp modutils*.deb tmp/
mkisofs -r -J -udf -o cd.iso tmp/
