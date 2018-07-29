#!/bin/sh 

# /bin/setdhcpsubnet.sh
# DHCP for Softphone Support
# This script sets the DHCP subnet to be the same as the current subnet for the device IP address

# Get the saved IPs
STARTIP_D=`uci get secn.dhcp.startip | cut -d . -f4`
ENDIP_D=`uci get secn.dhcp.endip     | cut -d . -f4`
ROUTER_D=`uci get secn.dhcp.router   | cut -d . -f4`

# Get current subnet
OCTET_A=`uci get network.lan.ipaddr | cut -d . -f1`
OCTET_B=`uci get network.lan.ipaddr | cut -d . -f2`
OCTET_C=`uci get network.lan.ipaddr | cut -d . -f3`

# Calculate the new IPs
STARTIP=$OCTET_A.$OCTET_B.$OCTET_C.$STARTIP_D
ENDIP=$OCTET_A.$OCTET_B.$OCTET_C.$ENDIP_D
ROUTER=$OCTET_A.$OCTET_B.$OCTET_C.$ROUTER_D

# Save the new settings
uci set secn.dhcp.startip=$STARTIP
uci set secn.dhcp.endip=$ENDIP
uci set secn.dhcp.router=$ROUTER
uci commit secn


