#!/bin/ash /etc/rc.common

START=99

stop()
{
pid=$(ps | grep get-| grep "/bin/ash"|sed 's/^[ \t]*//' |cut -d " " -f1)
kill -9 $pid
pid=$(ps | grep get-| grep "/bin/ash"|sed 's/^[ \t]*//' |cut -d " " -f1)
kill -9 $pid
}

start()
{

# Initialise mouseovers.
# Mouseovers should be set, cleared, and reset if necessary, for any SAT requiring
# a popup, on every reload of the page. Mouseouts never need to be changed.

mouseover0=''
mouseover1=''
mouseover2=''
mouseover3=''
mouseover4=''
mouseover5=''
mouseover6=''
mouseover7=''
mouseover8=''
mouseover9=''
mouseover10=''
mouseover11=''
mouseover12=''

#Initialise (clear) all SAT images and links

satlink1=""
satlink2=""
satlink3=""
satlink4=""
satlink5=""
satlink6=""
satlink7=""
satlink8=""
satlink9=""
satlink10=""
satlink11=""
satlink12=""

sat1="/static/img/SAT-Space-Blank.png"
sat2="/static/img/SAT-Space-Blank.png"
sat3="/static/img/SAT-Space-Blank.png"
sat4="/static/img/SAT-Space-Blank.png"
sat5="/static/img/SAT-Space-Blank.png"
sat6="/static/img/SAT-Space-Blank.png"
sat7="/static/img/SAT-Space-Blank.png"
sat8="/static/img/SAT-Space-Blank.png"
sat9="/static/img/SAT-Space-Blank.png"
sat10="/static/img/SAT-Space-Blank.png"
sat11="/static/img/SAT-Space-Blank.png"
sat12="/static/img/SAT-Space-Blank.png"


#Hide all SAT images and links - Visibility should be set to "visible" only if there is a (non-blank) image to display.

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


# Generate the txt files every 10 seconds
while (true); do 

# Get base network config data
cable=$(ifconfig | grep -c eth1)
wifi=$(ifconfig  | grep -c wlan0-2)
#cell=$(ifconfig  | grep -c 3g-cellular) # Is interface present
cell=$(uci -q get network.cellular.auto) # Is interface enabled

# Get server type
server_type=$(uci get gateway.general.server_type)

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

##################################
# SAT Display Data

################
# Setup Centre - System
# Nothing to do

################
# Setup SAT1 - Cellular WAN

satlink1="/cgi-bin/system-cellular.has"

if [ $cell == "1" ]; then
  satvis1="visible"
  mouseover1='info-1'
else
	sat1="/static/img/SAT-Space-Blank.png" # No Cell image reqd
  mouseover1=''
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

################
# Setup SAT2 - Eth/WiFi WAN

cable=$(ifconfig | grep -c eth1)
wifi=$(ifconfig  | grep -c wlan0-2)

satvis2="visible"
eth_wan=$(ip route|grep -c eth1)
wifi_wan=$(ip route|grep -c wlan0-2)

mouseover2=''
	
if [ $cable == "1" ]; then
	img2="/static/img/SAT-Int-Cable"
	satlink2="/cgi-bin/system-network.has"
  mouseover2='info-2a'
elif [ $wifi == "1" ]; then
	img2="/static/img/SAT-Int-Wifi"
	satlink2="/cgi-bin/system-wifi.has"
  mouseover2='info-2b'
fi

if [ $internet == "1" ] && [[ $route == "eth1" || $route == "wlan0-2" ]]; then
  sat2=$img2"-tick.png"
elif [[ $eth_wan == "1" || $wifi_wan == "1" ]]; then
  sat2=$img2"-tick-amber.png"
else
  sat2=$img2"-cross.png"
fi

# No valid WAN config
if [ $cable != "1" ] && [ $wifi != "1" ]; then 
  sat2="/static/img/SAT-Disabled.png"
  mouseover2='' 
	satlink2="#"
fi

################
# Setup SAT3 - IoT Service

#	For all the conditions below:
	satvis3="visible"	
	mouseover3='info-3'

if [ $server_type == "disabled" ]; then
	satlink3="/cgi-bin/lora-lora.has"
		sat3="/static/img/SAT-Disabled.png"

elif [ $server_type == "lorawan" ]; then
	satlink3="/cgi-bin/lorawan.has"
  status=$(cat /tmp/iot/status)
	if [ $status == "online" ] && [ $internet == "1" ];then
		sat3="/static/img/SAT-LoRaWAN-tick.png"
	else
		sat3="/static/img/SAT-LoRaWAN-cross.png"
	fi

# TBD  Additional status tests for IoT Service
# Current test is just whether the process is running.
	
elif [ $server_type == "mqtt" ]; then
	satlink3="/cgi-bin/mqtt.has"
	mqttstatus=$(ps | grep -c mqtt_process)
	if [ $mqttstatus == "2" ];then
		sat3="/static/img/SAT-MQTT-tick.png"
	else
		sat3="/static/img/SAT-MQTT-cross.png"
	fi
	
elif [ $server_type == "tcpudp" ]; then
	satlink3="/cgi-bin/tcp-client.has"
	tcpstatus=$(ps | grep -c tcp_client)
	if [ $tcpstatus == "2" ];then
		sat3="/static/img/SAT-TCP-tick.png"
	else
		sat3="/static/img/SAT-TCP-cross.png"
	fi
	
elif [ $server_type == "http" ]; then
	satlink3="/cgi-bin/http.has"
	httpstatus=$(ps | grep -c http_process)
	if [ $httpstatus == "2" ];then
		sat3="/static/img/SAT-HTTP-tick.png"
	else
		sat3="/static/img/SAT-HTTP-cross.png"
	fi
	
elif [ $server_type == "customized" ]; then
	satlink3="/cgi-bin/custom.has"
	script_name=$(uci get customized_script.general.script_name)
	customstatus=$(ps | grep -c $script_name)
	if [ $customstatus == "2" ];then
		sat3="/static/img/SAT-Custom-tick.png"
	else
		sat3="/static/img/SAT-Custom-cross.png"
	fi
	
else
	sat3=""
  satlink3=""
  mouseover3=""
fi

################
# Setup SAT10 - LoRa Radios

# TBD  Other status indicator for LoRa radio operation

pscount=$(ps | grep -c pkt_fwd) # Check is process is running

if [[ "$pscount" == "2" ]];then
 	sat10="/static/img/SAT-LoRa-tick.png"
else
 	sat10="/static/img/SAT-LoRa-cross.png"
fi
 
satlink10="/cgi-bin/lora-lora.has"
satvis10="visible"
mouseover10='info-10'

################
# Setup SAT11 - WiFi Access Point

mouseover11='info-11'
satlink11="/cgi-bin/system-wifi.has"
satvis11="visible"

# Check if WiFi channel is displayed to indicate valid operation of AP, with and without WiFi WAN
iw=$(iw dev | grep -A 10 wlan0 | grep -c channel)
if [ $iw == "1" ] || [ $iw == "2" ];then
 	sat11="/static/img/SAT-Wifi-tick.png"
else
 	sat11="/static/img/SAT-Wifi-cross.png"
fi
wifiap=$(uci -q get wireless.ap_0.disabled)
if [ $wifiap == "1" ]; then
	sat11="/static/img/SAT-Wifi-off.png"
fi
#########################

# Create the temporary txt file

cat > /tmp/sat-data.txt << EOF

" ",
$sat1,$mouseover1,$satlink1,$satvis1 ,
$sat2,$mouseover2,$satlink2,$satvis2 ,
$sat3,$mouseover3,$satlink3,$satvis3 ,
$sat4,$mouseover4,$satlink4,$satvis4 ,
$sat5,$mouseover5,$satlink5,$satvis5 ,
$sat6,$mouseover6,$satlink6,$satvis6 ,
$sat7,$mouseover7,$satlink7,$satvis7 ,
$sat8,$mouseover8,$satlink8,$satvis8 ,
$sat9,$mouseover9,$satlink9,$satvis9 ,
$sat10,$mouseover10,$satlink10,$satvis10 ,
$sat11,$mouseover11,$satlink11,$satvis11 ,
$sat12,$mouseover12,$satlink12,$satvis12 

EOF
##################################################

# Data collection for info boxes

################
# Centre Data - System

model0=$(cat /tmp/iot/model.txt)
firmware0=$(cat /etc/banner | grep Version | cut -d : -f 2)
system0=$(cat /etc/os-release | grep _RELEASE | cut -d = -f2)
load0=$(uptime | sed -n 's/average:/&\n/;s/.*\n//p')
ip0=$(uci -q get network.lan.ipaddr)

################
# SAT1 Data - Cellular WAN

if [ $cell == "1" ]; then
	info_title1="Cellular Internet"

  ip1=$(ifconfig 3g-cellular|grep "inet addr"|cut -d ":" -f 2|cut -d " " -f 1)
	txb1=$(ifconfig 3g-cellular |grep "TX bytes"|cut -d " " -f 18-20)
	rxb1=$(ifconfig 3g-cellular |grep "RX bytes"|cut -d " " -f 13-15)

  # Get cell status and save to file
  cp /tmp/celltmp.txt /tmp/cell1.txt 
  killall comgt
  (comgt -d /dev/ttyUSB3 > /tmp/celltmp.txt) &
  
  # Extract data for Info box
  sim1=$(cat /tmp/cell1.txt|grep SIM)
  sig1=$(cat /tmp/cell1.txt | grep Signal)
  net1=$(cat /tmp/cell1.txt | grep network: | cut -d : -f 2)
  time1=$(date | cut -d " " -f 4-6)
  #rm /tmp/cell1.txt
  
fi

################
# SAT2 Data - Eth/WiFi WAN

if [ $cable == "1" ]; then
	info_title2="Cable Internet"
	ip2=$(ifconfig eth1|grep "inet addr"|cut -d ":" -f 2|cut -d " " -f 1)
	txb2=$(ifconfig eth1 |grep "TX bytes"|cut -d " " -f 18-20)
	rxb2=$(ifconfig eth1 |grep "RX bytes"|cut -d " " -f 13-15)
elif [ $wifi == "1" ]; then
  info_title2="WiFi Internet"
	ip2=$(ifconfig wlan0-2|grep "inet addr"|cut -d ":" -f 2|cut -d " " -f 1)
	txb2=$(ifconfig wlan0-2 |grep "TX bytes"|cut -d " " -f 18-20)
	rxb2=$(ifconfig wlan0-2 |grep "RX bytes"|cut -d " " -f 13-15)
	signal2=$(iwinfo|grep -A 5 wlan0-2 | grep Signal: | cut -d " " -f 11-13)
	noise2=$(iwinfo|grep -A 5 wlan0-2 | grep Signal: | cut -d " " -f 15-17)
	rate2=$(iwinfo|grep -A 5 wlan0-2 | grep Rate: | cut -d " " -f 11-15)
else
	info_title2="No WAN Data"
fi

################
# SAT3 Data - IoT Service

# Get server type
server_type=$(uci get gateway.general.server_type)
# Initialise
status3="0"
server3=" "

if [ $server_type == "lorawan" ]; then
	info_title3="LoRaWAN Service"
	server3=$(uci get gateway.general.platform | cut -d "," -f 2)  
  status3=$(cat /tmp/iot/status)

elif [ $server_type == "mqtt" ]; then
	info_title3="MQTT Service"
	server3=$(uci -q get mqtt.common.server_type)
	if [ $mqttstatus == "2" ];then
		status3="MQTT process running"
	fi

elif [ $server_type == "tcpudp" ]; then
	info_title3="TCP/UDP Service"
	server3=$(uci -q get tcp_client.general.server_address)
	if [ $tcpstatus == "2" ];then
		status3="TCP/UDP process running"
	fi
	
elif [ $server_type == "http" ]; then
	info_title3="HTTP Service"
	server3=$(uci -q get http_iot.general.server_type)
	if [ $httpstatus == "2" ];then
		status3="HTTP process running"
	fi
	
elif [ $server_type == "customized" ]; then
	info_title3="Custom Service"
	if [ $customstatus == "2" ];then
		status3="Process $script_name running"
	fi
fi

################
# SAT10 Data - LoRa Radios

# TBD  Add any other status indicator for LoRa radio operation

info_title10="LoRa Radio"

if [ $board == "LG01" ];then
	rxfreq10=$(uci get gateway.radio1.RFFREQ)
	txfreq10=$(uci get gateway.radio1.RFFREQ)
	rxbw10=$(uci get gateway.radio1.RFBW)
	txbw10=$(uci get gateway.radio1.RFBW)
	rxcr10=$(uci get gateway.radio1.RFCR)
	txcr10=$(uci get gateway.radio1.TFCR)
	rxsf10=$(uci get gateway.radio1.RFSF)
	txsf10=$(uci get gateway.radio1.TFSF)
else
	rxfreq10=$(uci get gateway.radio1.RXFREQ)
	txfreq10=$(uci get gateway.radio2.TXFREQ)
	rxbw10=$(uci get gateway.radio1.RXBW)
	txbw10=$(uci get gateway.radio2.TXBW)
	rxcr10=$(uci get gateway.radio1.RXCR)
	txcr10=$(uci get gateway.radio2.TXCR)
	rxsf10=$(uci get gateway.radio1.RXSF)
	txsf10=$(uci get gateway.radio2.TXSF)
fi

################
# SAT11 Data - WiFi Access Point

info_title11="WiFi Access point"
ssid11=$(iwinfo wlan0 info | grep ESSID |cut -d : -f 2)
chan11=$(iwinfo wlan0 info | grep Channel |cut -d : -f 3)
mode11=$(iwinfo wlan0 info | grep "HW Mode" |cut -d : -f 3)
txb11=$(ifconfig wlan0 |grep "TX bytes"|cut -d " " -f 18-20)
rxb11=$(ifconfig wlan0 |grep "RX bytes"|cut -d " " -f 13-15)

#######################################

# Create the temporay txt file

cat > /tmp/popup-data.txt << EOF


<div class="info" id="info-0">
	<table>
		<tr>	  <th colspan="2">System Info</th></tr>
		<tr>	  <td>Model:</td><td>$model0 </td>	</tr>
		<tr>	  <td>Firmware:</td><td>$firmware0 </td>	</tr>
		<tr>	  <td>System:</td><td>$system0 </td>	</tr>
		<tr>	  <td>LAN IP:</td><td>$ip0 </td>	</tr>
		<tr>	  <td>Load Avg:</td><td>$load0 </td>	</tr>
		</table>
</div>	

<div class="info" id="info-1">
	<table>
	<tr>	  <th colspan="2">$info_title1 </th>	</tr>
	<tr>	  <td>IP Addr:</td><td>$ip1 </td>	</tr>
	<tr>	  <td>TX Bytes:</td><td>$txb1 </td>	</tr>
	<tr>	  <td>RX Bytes:</td><td>$rxb1 </td>	</tr>
	<tr>	  <td>SIM:</td><td>$sim1 </td>	</tr>
	<tr>	  <td>Network:</td><td>$net1 </td>	</tr>
	<tr>	  <td>Signal:</td><td>$sig1 </td>	</tr>
	<tr>	  <td>Time:</td><td>$time1 </td>	</tr>
	</table>
</div>	

<div class="info" id="info-2a">
	<table>
	<tr>	  <th colspan="2">$info_title2 </th>	</tr>
	<tr>	  <td>IP Addr:</td><td>$ip2 </td>	</tr>
	<tr>	  <td>TX Bytes:</td><td>$txb2 </td>	</tr>
	<tr>	  <td>RX Bytes:</td><td>$rxb2 </td>	</tr>
	</table>
</div>	

<div class="info" id="info-2b">
	<table>
	<tr>	  <th colspan="2">$info_title2 </th>	</tr>
	<tr>	  <td>IP Addr:</td><td>$ip2 </td>	</tr>
	<tr>	  <td>TX Bytes:</td><td>$txb2 </td>	</tr>
	<tr>	  <td>RX Bytes:</td><td>$rxb2 </td>	</tr>
	<tr>	  <td>Signal:</td><td>$signal2 </td>	</tr>
	<tr>	  <td>Noise:</td><td>$noise2 </td>	</tr>
	<tr>	  <td>Bit Rate:</td><td>$rate2 </td>	</tr>
	</table>
</div>	

<div class="info" id="info-3">
	<table>
	<tr>	  <th colspan="2">$info_title3 </th>	</tr>
	<tr>	  <td>Server:</td><td>$server3 </td>	</tr>
	<tr>	  <td>Status:</td><td>$status3 </td>	</tr>
	</table>
</div>	

<div class="info" id="info-10">
	<table>
		<tr>	  <th colspan="2">$info_title10 </th>	</tr>
		<tr>	  <td>Rx Freq:</td><td>$rxfreq10 </td>	</tr>
		<tr>	  <td>Tx Freq:</td><td>$txfreq10 </td>	</tr>
		<tr>	  <td>Rx BW / CR / SF:</td><td>$rxbw10 / $rxcr10 / $rxsf10 </td>	</tr>
		<tr>	  <td>Tx BW / CR / SF:</td><td>$txbw10 / $txcr10 / $txsf10 </td>	</tr>
	</table>
	</div>	

<div class="info" id="info-11">
	<table>
	<tr>	  <th colspan="2">$info_title11 </th>	</tr>
	<tr>	  <td>SSID:</td><td>$ssid11 </td>	</tr>
	<tr>	  <td>Channel:</td><td>$chan11 </td>	</tr>
	<tr>	  <td>Mode:</td><td>$mode11 </td>	</tr>
	<tr>	  <td>TX Bytes:</td><td>$txb11 </td>	</tr>
	<tr>	  <td>RX Bytes:</td><td>$rxb11 </td>	</tr>
	</table>
</div>	

EOF
#####################

sleep 9; \
done &
} >/dev/null 2>&1    # dump unwanted output to avoid filling log
