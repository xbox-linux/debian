#!/bin/sh


rm -f initrd.tar.bz2
tar -cjf initrd.tar.bz2 initrd

rm -f initrd_boot.tar.bz2
tar -cjf initrd_boot.tar.bz2 initrd_boot


