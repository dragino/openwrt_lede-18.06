<div id="pageLoader" class="pageLoader">
  Please wait...<br><br>
  <div class="loaderSpinner"><span class="fas fa-spinner fa-spin"></span></div>
</div>

<% vendor_url=$(uci get system.vendor.company_url) %>

<div class="logo-container">
  <a href="<% echo $vendor_url %>">  <!-- Set the URL link for the logo -->
    <img class="logoImage" src="/static/img/logo.png">
  </a>
</div>

<div class="topnav" id="docTopnav">

  <div></div> <!-- Space for the logo -->

	<% # Set up LoRa menu for board type
	board=$(cat /var/iot/board)
	if [ $board == "LG08" ]; then
	%>
  <div class="dropdown"> <!-- LoRa Parameter -->
    <button class="dropbtn">LoRa <span class="fas fa-caret-down"></span></button>
    <div class="dropdown-content">
      <a href="/cgi-bin/lora-lora.has">LoRa</a>
      <a href="/cgi-bin/lora-abp.has">ABP Decryption</a>
    </div>
  </div>
  <% else %>
  <a href="/cgi-bin/lora-lora.has">LoRa</a>
  <% fi %>
  
  
	<% # Set up LoRaWAN menu for board type
	model=$(cat /tmp/iot/model.txt)
	if [ $model == "LG308" ] || [ $model == "LPS8" ] || [ $model == "DLOS8" ]; then
	%>
  <div class="dropdown"> <!-- LoRa Parameter -->
    <button class="dropbtn">LoRaWAN <span class="fas fa-caret-down"></span></button>
    <div class="dropdown-content">
      <a href="/cgi-bin/lorawan.has">LoRaWAN</a>
      <a href="/cgi-bin/loriot.has">LORIOT</a>
    </div>
  </div>
  <% else %>  
    <a href="/cgi-bin/lorawan.has">LoRaWAN</a>
  <% fi %>


  <div class="dropdown"> <!-- MQTT -->
	<button class="dropbtn">MQTT <span class="fas fa-caret-down"></span></button>
    <div class="dropdown-content">
      <a href="/cgi-bin/mqtt.has">MQTT Client</a>
      <a href="/cgi-bin/mqtt-chan.has">Channels</a>
      <a href="/cgi-bin/iot-cert.has">Certificates</a>
    </div>
  </div> 

  <div class="dropdown"> <!-- TCP -->
    <button class="dropbtn">TCP <span class="fas fa-caret-down"></span></button>
    <div class="dropdown-content">
      <a href="/cgi-bin/tcp-client.has">TCP Client</a>
      <a href="/cgi-bin/tcp-chan.has">Channels</a>
    </div>
  </div> 

  <a href="/cgi-bin/http-client.has">HTTP</a>

  <a href="/cgi-bin/custom.has">Custom</a>
  
 <div class="dropdown"> <!-- System -->
    <button class="dropbtn">System <span class="fas fa-caret-down"></span></button>
    <div class="dropdown-content">
		<a href="/cgi-bin/system-overview.has">System Overview</a>
		<a href="/cgi-bin/system-general.has">General</a>
		<a href="/cgi-bin/system-network.has">Network</a>
		<a href="/cgi-bin/system-wifi.has">WiFi</a>
		<a href="/cgi-bin/system-cellular.has">Cellular</a>
		<a href="/cgi-bin/system-status.has">Network Status</a>
		<a href="/cgi-bin/system-rssh.has">Remote Mgmt</a>
		<a href="/cgi-bin/system-firmware.has">Firmware Upgrade</a>
		<a href="/cgi-bin/system-reboot.has">Reboot / Reset</a>
		<a href="/cgi-bin/system-package.has">Package Maintain</a>
    </div>
  </div> 
 
 <div class="dropdown"> <!-- LogRead -->
    <button class="dropbtn">LogRead<span class="fas fa-caret-down"></span></button>
    <div class="dropdown-content">
      <a href="/cgi-bin/log-lora.has">LoRa Log</a>
      <a href="/cgi-bin/log-sys.has">System Log</a>
      <a href="/cgi-bin/log-record.has">Record Log</a>
    </div>
  </div> 

  <a href="/cgi-bin/home.has">Home</a>

  <a href="/cgi-bin/logout.has">Logout</a>

  <div id="refreshIndicate" style="display: none;">AUTO<br>REFRESH</div>

  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="toggleNavbar()">&#9776;</a>
  
</div>

