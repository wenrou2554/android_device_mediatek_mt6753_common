#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="build frameworks/av frameworks/base frameworks/opt/telephony hardware/libhardware hardware/libhardware_legacy packages/apps/Settings packages/services/telephony system/core system/netd"

VENDOR=meizu
DEVICE=m2note

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "Cleaning $dir patches...\n"
	git reset --hard && git clean -df
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

