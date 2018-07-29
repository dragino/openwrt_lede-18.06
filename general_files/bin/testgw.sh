#!/bin/sh

# Find network details with DHCP Discover request

# Set up a temp iface
ifconfig br-lan:99 1.1.1.1

# Look for a DHCP server and call the script to get the env variables
udhcpc -n -i br-lan:99 -s /bin/savedhcp.sh > /dev/null

# Remove the temp iface
ifconfig br-lan:99 down

# Get the saved gateway address
GW=`cat /tmp/gateway.txt | grep .`
DNS=`cat /tmp/dns.txt | grep .`

# If no Gateway found set to 0.0.0.0 and prepare status message text
if [ $GW ]; then
  if [ $DNS ]; then
    echo "   Gateway found at " $GW "...   DNS Server found at " $DNS > /tmp/gatewaystatus.txt
  else
    echo "   Gateway found at " $GW "   No DNS Server found" > /tmp/gatewaystatus.txt
  fi
else
  GW="0.0.0.0"
  echo No Gateway Found > /tmp/gatewaystatus.txt
fi

# Output message if script run manually
#cat /tmp/gatewaystatus.txt

# Save the Gateway address if reqd
#uci set network.lan.gateway=$GW
#uci commit network

