IoT Build for Dragino Devices -- Base on OpenWrt LEDE-18.06
===============
This repository is a generic OpenWrt version from Dragino devices such as:
[MS14](http://www.dragino.com/products/mother-board.html), [HE](http://www.dragino.com/products/linux-module/item/87-he.html), [LG02](http://www.dragino.com/products/lora/item/135-lg02.html),[OLG02](http://www.dragino.com/products/lora/item/136-olg02.html).

<!-- TOC depthFrom:1 -->
 - [How to compile the firmware?](#how-to-compile-the-firmware)
 - [How to customize a build?](#how-to-customize-a-build)
 - [How to develop a C software before build the image?](how-to-develop-a-c-software-before-build-the-image)
<!-- /TOC -->

## How to compile the firmware

``` bash
git clone https://github.com/dragino/openwrt_lede-18.06 dragino-lede-18.06
cd dragino-lede-18.06
./set_up_build_environment.sh
#build default IoT App on openwrt directory
./build_image.sh
```

After complination, the images can be found on **openwrt_lede-18.06/image** folder. The folder includes:

- dragino-xxx--vxxxx-kernel.bin kernel files, for upgrade in u-boot
- dragino-xxx--vxxxx-rootfs-squashfs.bin rootfs file, for upgrade in u-boot
- dragino-xxx--vxxxx-squashfs-sysupgrade.bin sysupgrade file, used for web-ui upgrade
- md5sum md5sum for above files

More build option can be viewed by running:
``` bash
./build_image.sh -h
```

How to debug if build fails?
``` bash
./build_image.sh -s
```
Above commands will enable verbose and build in single thread to get a view of the error during build.

## How to customize a build

As a example, if user want to customize a build named mybuild. mybuild include different packages and default files from the default build. User can do as below: To customize the packages

``` bash
cd openwrt
# run make menuconfig to select the packages and save
make menuconfig
#Copy the new config to TOP dir and rename it to .config.mybuild
cp .config .config.mybuild
```
To customize default files

#create default files in TOP dir
``` bash
mkdir files-mybuild
#put files into this directory. 
#for example, if user want the final build has a default config file /etc/config/network. user can 
#put /etc/config/network into the files-mybuild directory (include directory /etc and /etc/config)
```

Then run the customzied build by running:
``` bash
./build_image.sh -a mybuild
```
The build process will auto overwrite the default files or pacakges with the customized one. User can customize only default files or pacakges. The build will use the default from IoT build if not specify.

## How to develop a C software before build the image
The fastest way is to use the SDK. 
1: Download the [LEDE-SDK](http://www.dragino.com/downloads/index.php?dir=LoRa_Gateway/LG02-OLG02/&file=lede-sdk.tar.gz) 
2: Extra the SDK to Linux OS. 
``` bash
   tar -xzvf lede-sdk.tar.gz
```
3: Download the demo [hello package](http://www.dragino.com/downloads/index.php?dir=LoRa_Gateway/LG02-OLG02/&file=hello.tgz) and put it in the lede-sdk/package
4: Enable hello package by running make menuconfig in lede-sdk. and enable hello package in the utility
``` bash
   make meunconfig
```
5: make the package 
``` bash
   make
```



Have Fun!

Dragino Technology

