#!/bin/sh

source ./packages.inc

copy_packages() {
	for I in $PACKAGES
	do
		echo copy file $I
		if [ ! -e packages/$I ];then
			wget -c http://xbox-linux.sourceforge.net/packages/unstable/$I
			mv $I packages/
		fi
		cp packages/$I tmp/packages/
	done
}

WORK=$PWD

rm -rf tmp
mkdir tmp
mkdir tmp/packages

cd $WORK/initrd/tmpfs

tar -czf ../tmpfs.tar.gz *

cd $WORK

rm -f initrd/usr/lib/xbox/packages.inc
cp packages.inc initrd/usr/lib/xbox/

mkcramfs initrd tmp/initrd

cp vmlinuz-23 tmp/vmlinuz
cp linuxboot.cfg.micro tmp/linuxboot.cfg
cp xbeboot.xbe tmp/default.xbe

if [ ! -e packages/basedebs.tar ]; then
	wget -c http://xbox-linux.sourceforge.net/packages/unstable/basedebs.tar
	mv basedebs.tar packages/
fi
cp packages/basedebs.tar tmp/

copy_packages

mkisofs -r -J -udf -o installer.iso tmp/
