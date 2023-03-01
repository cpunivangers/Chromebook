#!/bin/sh
 
# Fabrication paquet deb GB
# 02/2021
# christian.pottier@univ-angers.fr
#

if [ -z $1 ]; then
	exit
fi

REPDEB=$(basename $1)

if [ ! -d "$REPDEB" ]; then
	exit
fi

AAMMJJ=$(date +%y%m%d.%H%M)
sudo sed -i -e "s/^Version: .*$/Version: $AAMMJJ/" $REPDEB/DEBIAN/control 

TAILLE=$(du -s $REPDEB/ | cut -f1)
sudo sed -i -e "s/^Installed-Size:.*$/Installed-Size: $TAILLE/" $REPDEB/DEBIAN/control

fakeroot -- dpkg-deb --build $REPDEB

exit
