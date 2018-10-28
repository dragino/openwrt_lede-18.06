#!/bin/sh
# savedhcp.sh

# Save the Gateway and DNS Server addresses
echo $router > /tmp/gateway.txt
echo $dns > /tmp/dns.txt


