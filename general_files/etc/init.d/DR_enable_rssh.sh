#!/bin/sh /etc/rc.common
START=99

start()
{	
	host_id="$(uci -q get rssh.rssh.host_id)"
	host_addr="$(uci -q get rssh.rssh.host_addr)"
	host_port="$(uci -q get rssh.rssh.host_port)"

	killall ssh
	sleep 2

	# Connect to server
	ssh -y -i /etc/dropbear/id_dropbear -o "ExitOnForwardFailure yes" -f -N -T -R $host_port:localhost:22 -K 60 $host_id@$host_addr > /dev/null

	# Check for successful connection
	sleep 2
	check_connect=$(ps | grep -c -e "ssh -y -i /etc/dropbear/id_dropbear")
	manual_connect=$(uci get rssh.rssh.manual_connect)
	
	# If connect failed, and it is an auto connect, start background task to
	# wait for server to drop prior connection, then connect.
	if [ $check_connect != "2" ] && [ $manual_connect == "0" ]; then
		(sleep 300; \
		ssh -y -i /etc/dropbear/id_dropbear -o "ExitOnForwardFailure yes" -f -N -T -R $host_port:localhost:22 -K 60 $host_id@$host_addr > /dev/null) &
	fi

	# Reset manual connect flag
	uci set rssh.rssh.manual_connect="0"
	uci commit rssh
}

stop()
{	
echo "Manual disconnect" > /tmp/date.txt
	uci set rssh.rssh.manual_connect="0"
	uci commit rssh
	killall ssh
}


