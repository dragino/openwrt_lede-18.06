#!/bin/sh
#A test script to check the Internet connection. 

. /lib/functions2.sh
host="`uci get secn.wan.pinghost`"
interval=60

[ -z $host ] && host="8.8.8.8"

HAS_INTERNET=0

debug_str_to_file "###################################################"
debug_str_to_file "Boot Finished"
debug_str_to_file "###################################################"

while [ 1 ]
do
	##Check Net Connection
	if [ -z "`fping -e $host | grep alive`" ]; then
		if [ $HAS_INTERNET = 1 ]; then 
			debug_str_to_file "^^^^^^^^^^logread start^^^^^^^^^^^^^^^^^^^^^^"
			debug_cmd_to_file logread
			debug_str_to_file "^^^^^^^^^^dmesg start^^^^^^^^^^^^^^^^^^^^^^^^"
			debug_cmd_to_file dmesg
			debug_str_to_file "^^^^^^^^^^end logread / dmesg^^^^^^^^^^^^^^^^"
		fi
		result="                                      No Internet Connection to $host"
		HAS_INTERNET=0
	else 
		result="Internet Connection to $host is OK"
		HAS_INTERNET=1
	fi
	now=$(date)
	debug_str_to_file "$now   :   $result"

	sleep $interval
done