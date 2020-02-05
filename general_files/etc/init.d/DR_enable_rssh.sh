#!/bin/sh /etc/rc.common
START=99

start()
{	
	host_id="$(uci -q get rssh.rssh.host_id)"
	host_addr="$(uci -q get rssh.rssh.host_addr)"
	host_port="$(uci -q get rssh.rssh.host_port)"
	
	killall ssh
	
	ssh -y -i /etc/dropbear/id_dropbear -f -N -T -R $host_port:localhost:22 -K 60 $host_id@$host_addr > /dev/null

}

stop()
{	
	killall ssh
}
