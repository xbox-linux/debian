#! /bin/sh -e

MIRRORS=http://localhost:9999/main/
if [ -d basedebs ]; then
	rm -rf basedebs
fi
rm -f basedebs.tar

mkdir basedebs
debootstrap --download-only stable basedebs $MIRRORS

cd basedebs

tar -cf ../basedebs.tar *

exit 0
