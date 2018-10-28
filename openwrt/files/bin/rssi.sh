#!/bin/sh

# /bin/rssi.sh
# This script generates MAC addr and SNR values for neighbor nodes for use with the RSSI IVR command

# Set the max number of entries to announce
NUM=4

# Create directory for temp files
mkdir /tmp/rssi
# Remove any old files
rm /tmp/rssi/macaddr?
rm /tmp/rssi/snr?
# Create blank files
echo "0" > /tmp/rssi/macaddr1
echo "0" > /tmp/rssi/snr1
echo "0" > /tmp/rssi/macaddr2
echo "0" > /tmp/rssi/snr2
echo "0" > /tmp/rssi/macaddr3
echo "0" > /tmp/rssi/snr3
echo "0" > /tmp/rssi/macaddr4
echo "0" > /tmp/rssi/snr4

# Get the list of mesh neighbours with SNR values (sorted by MAC address)
iwinfo wlan0-1 assoclist > /tmp/rssi/iwinfo.txt

# Select just the 'n' entries with the best SNR values  
# Sort by SNR, select 'n' records, sort by MAC address
sort -k8 -r /tmp/rssi/iwinfo.txt | head -n$NUM | sort -k1 > /tmp/rssi/iwinfo-sel.txt

# Build the SNR list
cat /tmp/rssi/iwinfo-sel.txt | grep SNR | cut -d R -f2 | cut -d ")" -f1 > /tmp/rssi/snr.txt

# Build the MAC address list
cat /tmp/rssi/iwinfo-sel.txt | grep SNR | cut -d : -f5,6 | cut -d " " -f1 | sed -e 's/://'  > /tmp/rssi/macaddr.txt

# Count how many entries are actually there
wc -l /tmp/rssi/snr.txt | cut -d " " -f1 > /tmp/rssi/counter.txt

# Generate the individual maccadr and snr files

COUNTER=1
for n in `cat /tmp/rssi/macaddr.txt`; do cat /tmp/rssi/macaddr.txt | grep -m 1 $n > /tmp/rssi/macaddr$COUNTER && COUNTER=$((COUNTER+1)); done

COUNTER=1
for n in `cat /tmp/rssi/snr.txt`; do cat /tmp/rssi/snr.txt | grep -m 1 $n > /tmp/rssi/snr$COUNTER && COUNTER=$((COUNTER+1)); done

