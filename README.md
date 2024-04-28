IoT Build for Dragino Devices -- Base on OpenWrt LEDE-18.06
===============
This repository is a generic OpenWrt version from Dragino devices such as:
[MS14](http://www.dragino.com/products/mother-board.html), [HE](http://www.dragino.com/products/linux-module/item/87-he.html),[LG-1N](http://www.dragino.com/products/lora/item/143-lg01n.html),[OLG01-N](http://www.dragino.com/products/lora/item/144-olg01n.html),[LG02](http://www.dragino.com/products/lora/item/135-lg02.html),[OLG02](http://www.dragino.com/products/lora/item/136-olg02.html),[LG308](http://www.dragino.com/products/lora/item/140-lg308.html).

<!-- TOC depthFrom:1 -->
 - [How to compile the firmware?](#how-to-compile-the-firmware)
 - [How to customize a build?](#how-to-customize-a-build)
 - [How to develop a C software before build the image?](#how-to-develop-a-c-software-before-build-the-image)
<!-- /TOC -->

## How to compile the firmware

### Method 1 Dragino SDK
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

### Method 2 Dragino Docker images
1. Pull `images`
``` bash
docker pull ghcr.io/mikayong/dragino-gw-os/dragino-wrt-env:latest
```
3. Run `container`
``` bash
docker run \
    -itd \
    --name dragino-wrt-env \
    -h Dragino \
    -p 10022:22 \
    ghcr.io/mikayong/dragino-gw-os/dragino-wrt-env:latest
```
5. Enter `container`
``` bash
docker exec -it dragino-wrt-env /bin/bash
```
7.  Build `OpenWRT-lede-18.06`
``` bash
cd /root/dragino-wrt-build
./build_image.sh
```


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

### Download the [LEDE-SDK](http://www.dragino.com/downloads/downloads/LoRa_Gateway/LG02-OLG02/openwrt-sdk-8-29-Linux-x86_64.tar.bz2) 
``` bash
   wget http://www.dragino.com/downloads/downloads/LoRa_Gateway/LG02-OLG02/openwrt-sdk-8-29-Linux-x86_64.tar.bz2
```

### Extra the SDK to Linux OS. 
``` bash
   tar -xjvf openwrt-sdk-8-29-Linux-x86_64.tar.bz2
```
### Download the demo [hello package](http://www.dragino.com/downloads/downloads/LoRa_Gateway/LG02-OLG02/hello.tgz) and put it in the lede-sdk/package/

### Enable hello package by running make menuconfig in lede-sdk. and enable hello package in the utility
``` bash
   make meunconfig
```
### make the package 
``` bash
[root@dragino lede-sdk]# make
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'r8169-firmware', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'e100-firmware', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'bnx2-firmware', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'ar3k-firmware', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'mwifiex-sdio-firmware', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'kmod-phy-bcm-ns-usb2', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'edgeport-firmware', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'kmod-phy-bcm-ns-usb3', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'prism54-firmware', which does not exist
  WARNING: Makefile 'package/linux/Makefile' has a dependency on 'rtl8192su-firmware', which does not exist
  WARNING: Makefile 'package/tcp_client/Makefile' has a dependency on 'libuci', which does not exist
  tmp/.config-package.in:36:warning: ignoring type redefinition of 'PACKAGE_libc' from 'boolean' to 'tristate'
  tmp/.config-package.in:64:warning: ignoring type redefinition of 'PACKAGE_libgcc' from 'boolean' to 'tristate'
  tmp/.config-package.in:149:warning: ignoring type redefinition of 'PACKAGE_libpthread' from 'boolean' to 'tristate'
  tmp/.config-package.in:177:warning: ignoring type redefinition of 'PACKAGE_librt' from 'boolean' to 'tristate'
  tmp/.config-package.in:416:warning: ignoring type redefinition of 'PACKAGE_tcp_client' from 'boolean' to 'tristate'
  #
  # configuration written to .config
  #
   make[1] world
   make[2] package/compile
   make[3] -C package/toolchain compile
   make[3] -C package/hello compile
   make[3] -C package/linux compile
   make[3] -C package/tcp_client compile
   make[2] package/index
```

### get the execute file and test
The hello package (hello_1.0.0-1_mips_24kc.ipk) is under the bin/packages/mips_24kc/base/ , user can upload this package to the device and install / run it: 
``` bash
root@dragino-1b6fb0:~# opkg install hello_1.0.0-1_mips_24kc.ipk 
Installing hello (1.0.0-1) to root...
Configuring hello.
root@dragino-1b6fb0:~# hello 
Hello world
root@dragino-1b6fb0:~# 
```

### make it faster:
An efficient way to transfer the package from compile server to device is use scp command. below is a script for example: 
``` bash
upload_lora_bin.sh

  #!/bin/sh
  #remove the current bin file
  opkg remove hello
  
  #Get files from build server (replace your build server and compile link here)
  scp   root@120.78.xxx.xxx:/root/work/edwin/lede-sdk/bin/packages/mips_24kc/base/hello_1.0.0-1_mips_24kc.ipk ./
  opkg install hello_1.0.0-1_mips_24kc.ipk
```
Run it 

``` bash
root@dragino-1b6fb0:~# ./update_lora_bin.sh 
Removing package hello from root...

Host '120.78.xxx.xxx' is not in the trusted hosts file.
(ssh-rsa fingerprint sha1!! 00:8f:65:a5:1a:93:13:8f:c4:d2:81:4d:57:ea:14:49:47:54:0e:75)
Do you want to continue connecting? (y/n) y
root@120.78.xxx.xxx's password: 
hello_1.0.0-1_mips_24kc.ipk                100% 1906     1.9KB/s   00:00    
Installing hello (1.0.0-1) to root...
Configuring hello.
root@dragino-1b6fb0:~#
```

### Useful Packages
Below is the LoRa Control packages used in LG01-N, LG02,LG308,LPS8, DLOS8
- [lg01n,lg02_lora_control](https://github.com/dragino/dragino-packages/tree/lg02/lg02-pkt-fwd)
- [lg308，lps8, dlos8 lora control](https://github.com/dragino/dragino-packages/tree/lg02/lora-gateway)

A video instruction can be seen from [LEDE SDK Video](https://youtu.be/SVtAVF93cpw)


## Have problem to download some package from source? 
If fail to download by build_image.sh, developer can download from web and put the package in openwrt/dl directory.

Have Fun!

Dragino Technology

