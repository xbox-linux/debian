#!/bin/sh

if [ -d initrd ]; then
	rm -rf initrd/*
fi

tar -xpjf initrd.tar.bz2


if [ -d initrd_boot ]; then
	rm -rf initrd_boot/*
fi

tar -xpjf initrd_boot.tar.bz2


