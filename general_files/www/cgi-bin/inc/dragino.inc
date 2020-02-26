<%
# Include file for populating the home page dragino.has

# Get the board type
board=$(cat /tmp/iot/model.txt)
pic=$(cat /tmp/iot/pic.txt)

# Get base network config data
cable=$(ifconfig | grep -c eth1)
wifi=$(ifconfig  | grep -c wlan0-2)
cell=$(ifconfig  | grep -c 3g-cellular)

# Get default route
route=$(ip route|grep default | cut -d " " -f 5)

# Check Internet connectivity
HOST="1.1.1.1"
ping -c1 $HOST 1>/dev/null 2>/dev/null; SUCCESS=$?
if [ $SUCCESS -eq "0" ]; then
  internet="1"
else
  internet="0"
fi

# Get server type
server_type=$(uci get gateway.general.server_type)

### Test #######
# cable="1"; wifi="0"; 
# cable="0"; wifi="1"; 
# cell="1"
# route="3g-cellular"
# route="eth1"
# route="wlan0-2"
# internet="1"
# server_type="lorawan"
# status="0"
###

# Initialise mouseovers.
# Mouseovers should be set, cleared, and reset if necessary, for any SAT requiring
# a popup, on every reload of the page. Mouseouts never need to be changed.

mouseover1="showInfo('')"
mouseover2="showInfo('')"
mouseover3="showInfo('')"
mouseover4="showInfo('')"
mouseover5="showInfo('')"
mouseover6="showInfo('')"
mouseover7="showInfo('')"
mouseover8="showInfo('')"
mouseover9="showInfo('')"
mouseover10="showInfo('')"
mouseover11="showInfo('')"
mouseover12="showInfo('')"

#Initialise (hide) all SAT images and links
#Visibility should be set to "visible" only if there is a (non-blank) image to display.

satvis1="hidden"
satvis2="hidden"
satvis3="hidden"
satvis4="hidden"
satvis5="hidden"
satvis6="hidden"
satvis7="hidden"
satvis8="hidden"
satvis9="hidden"
satvis10="hidden"
satvis11="hidden"
satvis12="hidden"

################
# Setup SAT1 - Cellular WAN

if [ $cell == "1" ]; then
  ip1=$(ifconfig 3g-cellular|grep "inet addr"|cut -d ":" -f 2|cut -d " " -f 1)
	txb1=$(ifconfig 3g-cellular |grep "TX bytes"|cut -d " " -f 18-20)
	rxb1=$(ifconfig 3g-cellular |grep "RX bytes"|cut -d " " -f 13-15)

  # Get cell status and save to file
  cp /tmp/celltmp.txt /tmp/cell.txt 
  comgt -d /dev/ttyUSB3 > /tmp/celltmp.txt &
  
  # Extract data for Info box
  sim1=$(cat /tmp/cell.txt|grep SIM)
  sig1=$(cat /tmp/cell.txt | grep Signal)
  net1=$(cat /tmp/cell.txt | grep network: | cut -d : -f 2)
  time1=$(date | cut -d " " -f 4-6)
  rm /tmp/cell.txt
  
	info_title1="Cellular Internet"
  satvis1="visible"
  mouseover1="showInfo('info-1')"
else
	sat1="/static/img/SAT-Space-Blank.png" # No Cell image reqd
  mouseover1="hideInfo('info-1')"
  satlink1="#"
  satvis1="hidden"
fi

# Set up the SAT image
if [ $route == "3g-cellular" ] && [ $internet == "1" ]; then
  sat1="/static/img/SAT-Int-Cell-tick.png"
elif [ $route == "3g-cellular" ] && [ $internet == "0" ]; then  
  sat1="/static/img/SAT-Int-Cell-cross.png"
elif [ $cell == "1" ] && [ $route != "3g-cellular" ]; then  
  sat1="/static/img/SAT-Int-Cell-tick-amber.png"
fi

### Test
#  ip1="192.123.45.67"
#sat1="/static/img/SAT-Int-Cell-cross.png"
#sat1="/static/img/SAT-Space-Blank.png"
#mouseover1="showInfo('info-1')"
#mouseover1=" "
###


################
# Setup SAT2 - Eth/WiFi WAN

eth_wan=$(ip route|grep -c eth1)
wifi_wan=$(ip route|grep -c wlan0-2)

sat2="/static/img/SAT-Disabled.png" # Default image

if [ $cable == "1" ]; then
	img2="/static/img/SAT-Int-Cable"
	satlink2="/cgi-bin/system-network.has"
	info_title2="Cable Internet"
  mouseover2="showInfo('info-2')"
	ip2=$(ifconfig eth1|grep "inet addr"|cut -d ":" -f 2|cut -d " " -f 1)
	txb2=$(ifconfig eth1 |grep "TX bytes"|cut -d " " -f 18-20)
	rxb2=$(ifconfig eth1 |grep "RX bytes"|cut -d " " -f 13-15)
elif [ $wifi == "1" ]; then
	img2="/static/img/SAT-Int-Wifi"
	satlink2="/cgi-bin/system-wifi.has"
  info_title2="WiFi Internet"
  mouseover2="showInfo('info-2')"
	ip2=$(ifconfig wlan0-2|grep "inet addr"|cut -d ":" -f 2|cut -d " " -f 1)
	txb2=$(ifconfig wlan0-2 |grep "TX bytes"|cut -d " " -f 18-20)
	rxb2=$(ifconfig wlan0-2 |grep "RX bytes"|cut -d " " -f 13-15)
	signal2=$(iwinfo|grep -A 5 wlan0-2 | grep Signal: | cut -d " " -f 11-13)
	noise2=$(iwinfo|grep -A 5 wlan0-2 | grep Signal: | cut -d " " -f 15-17)
	rate2=$(iwinfo|grep -A 5 wlan0-2 | grep Rate: | cut -d " " -f 11-15)
fi

if [ $internet == "1" ] && [[ $route == "eth1" || $route == "wlan0-2" ]]; then
  sat2=$img2"-tick.png"
elif [[ $eth_wan == "1" || $wifi_wan == "1" ]]; then
  sat2=$img2"-tick-amber.png"
else
  sat2=$img2"-cross.png"
fi
satvis2="visible"

# No valid WAN config
if [ $cable != "1" ] && [ $wifi != "1" ]; then 
  sat2="/static/img/SAT-Disabled.png"   # Default image
  mouseover2="" 
	satlink2=""
	satvis2="visible"
fi

################
# Setup SAT3 - IoT Service

#	For all the conditions below:
	satvis3="visible"	

if [ $server_type == "disabled" ]; then
	satlink3="/cgi-bin/lora.has"
		sat3="/static/img/SAT-Disabled.png"

elif [ $server_type == "lorawan" ]; then
	mouseover3="showInfo('info-3')"
	info_title3="IoT Service LoRaWAN"
	url3=$(uci get gateway.general.platform | cut -d "," -f 2)  
	satlink3="/cgi-bin/lorawan.has"
  status=$(cat /tmp/iot/status)
	if [ $status == "online" ] && [ $internet == "1" ];then
		sat3="/static/img/SAT-LoRaWAN-tick.png"
	else
		sat3="/static/img/SAT-LoRaWAN-cross.png"
	fi

### TBD  Test if IoT platform server can be pinged, as well as process present for status indication
	
elif [ $server_type == "mqtt" ]; then
	satlink3="/cgi-bin/mqtt.has"
	status=$(ps | grep -c mqtt_process)
	if [ $status == "2" ];then
		sat3="/static/img/SAT-MQTT-tick.png"
	else
		sat3="/static/img/SAT-MQTT-cross.png"
	fi
	
elif [ $server_type == "tcpudp" ]; then
	satlink3="/cgi-bin/tcp-client.has"
	status=$(ps | grep -c tcp_client)
	if [ $status == "2" ];then
		sat3="/static/img/SAT-TCP-tick.png"
	else
		sat3="/static/img/SAT-TCP-cross.png"
	fi
	
elif [ $server_type == "http" ]; then
	satlink3="/cgi-bin/http.has"
	status=$(ps | grep -c http_process)
	if [ $status == "2" ];then
		sat3="/static/img/SAT-HTTP-tick.png"
	else
		sat3="/static/img/SAT-HTTP-cross.png"
	fi
	
elif [ $server_type == "customized" ]; then
	satlink3="/cgi-bin/custom.has"
	script_name=$(uci get customized_script.general.script_name)
	status=$(ps | grep -c $script_name)
	if [ $status == "2" ];then
		sat3="/static/img/SAT-Custom-tick.png"
	else
		sat3="/static/img/SAT-Custom-cross.png"
	fi
	
else
	img3=""
  satlink3=""
  mouseover3=""
fi

################
# Setup SAT10 - LoRa Radios

# TBD  Add any other status indicator for LoRa radio operation

ps=$(ps|grep -c pkt_fwd) # Check is process is running
if [ $ps == "2" ];then
 	sat10="/static/img/SAT-LoRa-tick.png"
else
 	sat10="/static/img/SAT-LoRa-cross.png"
fi
 
satlink10="/cgi-bin/lora.has"
satvis10="visible"
info_title10="LoRa Radio"
mouseover10="showInfo('info-10')"
rxfreq10=$(uci get gateway.radio1.RXFREQ)
txfreq10=$(uci get gateway.radio2.TXFREQ)

################
# Setup SAT11 - WiFi Access Point

# Check if WiFi channel is displayed to indicate valid operation of AP, with and without WiFi WAN
iw=$(iw dev wlan0 info | grep -c channel)
if [ $iw == "1" ];then
 	sat11="/static/img/SAT-Wifi-tick.png"
	info_title11="WiFi Access point"
	mouseover11="showInfo('info-11')"
 	ssid11=$(iwinfo wlan0 info | grep ESSID |cut -d : -f 2)
 	chan11=$(iwinfo wlan0 info | grep Channel |cut -d : -f 3)
 	mode11=$(iwinfo wlan0 info | grep "HW Mode" |cut -d : -f 3)
	txb11=$(ifconfig wlan0 |grep "TX bytes"|cut -d " " -f 18-20)
	rxb11=$(ifconfig wlan0 |grep "RX bytes"|cut -d " " -f 13-15)

else
 	sat11="/static/img/SAT-Wifi-cross.png"
 	mouseover11="showInfo('info-11')"
fi

satlink11="/cgi-bin/system-wifi.has"
satvis11="visible"


################
# Get Info bar data

fw_str=$(cat /etc/banner | grep Version | cut -d : -f 2)
date_str=$(date)
up_str=$(uptime | cut -d " " -f4,5 | tr , " ")
host_str=$(echo $HOSTNAME)

%>
