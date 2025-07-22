#!/bin/sh
type=$(uci -q get network.wg0.type)

if [ "$type" == "default" ]; then
	privatekey=$(uci get network.wg0.private_key)
	publickey=$(uci get network.wgserver.public_key)
	allowedips=$(uci get network.wgserver.allowed_ips)
	serveraddress=$(uci get network.wgserver.endpoint_host)
	port=$(uci get network.wgserver.endpoint_port)

cat > /etc/wireguard/wireguard.conf << EOF
[Interface]
PrivateKey = $privatekey
[Peer]
PublicKey = $publickey
AllowedIPs = $allowedips
Endpoint = $serveraddress:$port
EOF
elif [ "$type" == "import" ]; then
	privatekey=$(cat /etc/wireguard/wireguard.conf |grep PrivateKey|awk '{print $3}')
	address=$(cat /etc/wireguard/wireguard.conf |grep Address|awk '{print $3}')
	publickey=$(cat /etc/wireguard/wireguard.conf |grep PublicKey|awk '{print $3}')
	allowedips=$(cat /etc/wireguard/wireguard.conf |grep AllowedIPs|awk '{print $3}')
	serveraddress=$(cat /etc/wireguard/wireguard.conf |grep Endpoint|awk '{print $3}'|awk -F':' '{print $1}')
	port=$(cat /etc/wireguard/wireguard.conf |grep Endpoint|awk '{print $3}'|awk -F':' '{print $2}')
	PresharedKey=$(cat /etc/wireguard/wireguard.conf |grep PresharedKey|awk '{print $3}')

	uci set network.wg0.private_key=$privatekey
	uci set network.wg0.addresses=$address
	uci set network.wgserver.public_key=$publickey
	uci set network.wgserver.allowed_ips=$allowedips
	uci set network.wgserver.endpoint_host=$serveraddress
	uci set network.wgserver.endpoint_port=$port
	if [ ! -z "$PresharedKey" ]; then
		uci set network.wgserver.preshared_key=$PresharedKey	
	else
	   if [ ! -z "$(uci -q get network.wgserver.preshared_key)" ]; then
		uci delete network.wgserver.preshared_key
	   fi
	fi
	uci commit network
	sed -i '/Address/d' /etc/wireguard/wireguard.conf
fi
ifup wg0                                    
sleep 2;
wg setconf wg0 /etc/wireguard/wireguard.conf
ifdown wg0
ifup wg0

