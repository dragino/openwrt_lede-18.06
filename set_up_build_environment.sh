#!/usr/bin/env bash
#Set up build environment for Dragino v2. Only need to run once on first compile. 

OPENWRT_PATH=openwrt

while getopts 'p:v:sh' OPTION
do
	case $OPTION in
	p)	OPENWRT_PATH="$OPTARG"
		;;
	h|?)	printf "Set Up OpenWrt LEDE build environment for MS14, HE \n\n"
		printf "Usage: %s [-p <openwrt_source_path>]\n" $(basename $0) >&2
		printf "	-p: set up build path, default path = openwrt\n"
		printf "\n"
		exit 1
		;;
	esac
done

shift $(($OPTIND - 1))

REPO_PATH=$(pwd)

#echo "*** Get OpenWrt LEDE source code"
#git clone https://github.com/openwrt/openwrt.git $OPENWRT_PATH
#cd $OPENWRT_PATH 

#echo "*** Switch to Brance openwrt-18.06 and tag v18.06.0-rc2"
#git checkout -b openwrt-18.06_v18.06.0-rc2


cd $REPO_PATH
echo "*** Backup original feeds files if they exist"
[ -f $OPENWRT_PATH/feeds.conf.default ] &&  mv $OPENWRT_PATH/feeds.conf.default $OPENWRT_PATH/feeds.conf.default.bak

echo "*** Copy feeds used in Dragino"
cp feeds.dragino $OPENWRT_PATH/feeds.conf.default

echo " "
echo "*** Update the feeds (See ./feeds-update.log)"
sleep 2
$OPENWRT_PATH/scripts/feeds update
sleep 2
echo " "

#Add new fwd packages
# No need this step, already include in feeds/dragino
#git clone -b lgw-7.0-dev https://github.com/dragino/dragino-packages dragino-packages-lgw-7.0
#cp -r dragino-packages-lgw-6.0/dragino-gw-fwd $OPENWRT_PATH/feeds/dragino/

echo "*** Install OpenWrt extra packages"
sleep 2
$OPENWRT_PATH/scripts/feeds install -a
echo " "

#echo ""
#echo "Patch Dragino2 Platform"
#rsync -avC platform/target/ $OPENWRT_PATH/target/


#Remove tmp directory
if [ -d $OPENWRT_PATH/tmp/ ]; then
    echo "Remove tmp directory"
    rm -rf $OPENWRT_PATH/tmp/
fi

echo "*** Change to build directory"
cd $OPENWRT_PATH
echo " "

#echo "*** Run make defconfig to set up initial .config file (see ./defconfig.log)"
#make defconfig > ./defconfig.log

# Backup the .config file
#cp .config .config.orig
#echo " "

echo "End of script"
