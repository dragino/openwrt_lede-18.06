#!/bin/sh
# Copyright (C) 2016 Dragino Technology Co., Limited
local file="/root/inet_reliable_test_report"
local debug=`uci get system.@system[0].debug_inet`
[ -z $debug ] && debug="0"

debug_str_to_file() {
	[ "$debug" = "1" ] && echo $1 >> $file
}

debug_cmd_to_file(){
	[ "$debug" = "1" ] && $1 >> $file
}

control_file_size(){
	local file_size=`du $1 | awk '{print $1}`
	[ $file_size -gt $2 ] && rm $1
	touch $1
}

control_file_size $file 800