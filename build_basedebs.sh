#! /bin/sh -e

MIRRORS=http://localhost:9999/main/
if [ -d basedebs ]; then
	rm -rf basedebs
fi
rm -f packages/basedebs.tar

mkdir basedebs
debootstrap --download-only stable basedebs $MIRRORS

cd basedebs

tar -cf ../packages/basedebs.tar *

exit 0
