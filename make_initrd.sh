#/bin/sh

WORK=$PWD

cd $WORK/initrd/tmpfs

tar -czf ../tmpfs.tar.gz *

cd $WORK

mkcramfs initrd micro/initrd
