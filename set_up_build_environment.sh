#!/usr/bin/env bash
#Set up build environment for Dragino v2. Only need to run once on first compile. 

OPENWRT_PATH=openwrt

while getopts 'p:v:sh' OPTION
do
	case $OPTION in
	p)	OPENWRT_PATH="$OPTARG"
		;;
	h|?)	printf "Set Up build environment for MS14, HE \n\n"
		printf "Usage: %s [-p <openwrt_source_path>]\n" $(basename $0) >&2
		printf "	-p: set up build path, default path = dragino\n"
		printf "\n"
		exit 1
		;;
	esac
done

shift $(($OPTIND - 1))

REPO_PATH=$(pwd)

echo "*** Backup original feeds files if they exist"
[ -f $OPENWRT_PATH/feeds.conf.default ] &&  mv $OPENWRT_PATH/feeds.conf.default  $OPENWRT_PATH/feeds.conf.default.bak

echo "*** Copy feeds used in Dragino"
cp feeds.dragino $OPENWRT_PATH/feeds.conf.default

echo " "
echo "*** Update the feeds (See ./feeds-update.log)"
sleep 2
$OPENWRT_PATH/scripts/feeds update
sleep 2
echo " "

echo "*** Install OpenWrt extra packages"
sleep 2
$OPENWRT_PATH/scripts/feeds install -a
echo " "

echo ""
echo "Patch Dragino2 Platform"
rsync -avC platform/target/ $OPENWRT_PATH/target/


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
