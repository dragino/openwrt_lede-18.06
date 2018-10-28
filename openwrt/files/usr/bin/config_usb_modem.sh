#!/bin/sh
#A script to configure USB modem
## Copyright (c) 2016 Dragino Tech <support@dragino.com>

USB_INFO="/etc/cellular/usb-cellular-info"

#If the wan port is not set to USB modem,exit
[ "`uci get secn.wan.wanport`" != "USB-Modem" ] && logger "dragino:wan not set to cellular" && exit 0

#Get Current PID and VID
vidpid=`lsusb | awk '{print $6}'`

#check match cellular info,get pid
for i in $vidpid 
do
	info=`cat $USB_INFO | grep $i`
	[ ! -z $info ] && cellular_info=$info 
done

#can't find match modem, exit
[ -z "$cellular_info" ] && logger "dragino: no match cellular" && exit 0

vid=`echo ${cellular_info}|awk -F '[:|=|,]' '{print $1}'`
pid=`echo ${cellular_info}|awk -F '[:|=|,]' '{print $2}'`
tty=`echo ${cellular_info}|awk -F '[:|=|,]' '{print $3}'`
script=`echo ${cellular_info}|awk -F '[:|=|,]' '{print $4}'` 

reboot_flag=0
#check if current settings is the same as before, if not, set reboot_flag=1
if [ "`uci get secn.modem.vendor`" != "$vid" ]; then
	uci set secn.modem.vendor=$vid
	reboot_flag=1
fi 
if [ "`uci get secn.modem.product`" != "$pid" ]; then
	uci set secn.modem.product=$pid
	reboot_flag=1
fi

if [ "`uci get secn.modem.modemport`" != "$tty" ]; then
	uci set secn.modem.modemport=$tty
fi

uci set secn.modem.script=$script
uci commit secn

if [ $reboot_flag -eq 1 ];then
	/usr/bin/config_secn
	reboot
fi 








