<div class="topnav" id="docTopnav" onmouseover="stoprefresh()" onmouseout="resrefresh()">

  <div style="background-color: white; padding-right: 15px">
    <a href="http://www.dragino.com">
    <img class="toplogo" src="/static/img/DRAGINO_logo_transparent.png">
    </a>
  </div>

  <div><a href="/cgi-bin/lora.has">LoRa</a></div>
  
  <div><a href="/cgi-bin/lorawan.has">LoRaWAN</a></div>

  <div class="dropdown"> <!-- MQTT -->
	<button class="dropbtn">MQTT</button>
    <div class="dropdown-content">
      <a href="/cgi-bin/mqtt.has">MQTT Client</a>
      <a href="/cgi-bin/mqtt-chan.has">Channels</a>
      <a href="/cgi-bin/mqtt-cert.has">Certificates</a>
    </div>
  </div> 

  <div class="dropdown"> <!-- TCP -->
    <button class="dropbtn">TCP</button>
    <div class="dropdown-content">
      <a href="/cgi-bin/tcp-client.has">TCP Client</a>
      <a href="/cgi-bin/tcp-chan.has">Channels</a>
    </div>
  </div> 

  <div><a href="/cgi-bin/http-client.has">HTTP</a></div>

  <div class="dropdown"> <!-- Custom -->
    <button class="dropbtn">Custom</button>
    <div class="dropdown-content">
      <a href="/cgi-bin/custom.has">Custom Script</a>
      <a href="/cgi-bin/custom-script.has">Script Management</a>
    </div>
  </div> 
  
 <div class="dropdown"> <!-- System -->
    <button class="dropbtn">System</button>
    <div class="dropdown-content">
      <a href="/cgi-bin/system-overview.has"><font size="4">System Overview</font></a>
      <a href="/cgi-bin/system-network.has"><font size="4">Network</font></a>
      <a href="/cgi-bin/system-wifi.has"><font size="4">WiFi</font></a>
      <a href="/cgi-bin/system-cellular.has"><font size="4">Cellular</font></a>
      <a href="/cgi-bin/system-status.has"><font size="4">Network Status</font></a>
      <a href="/cgi-bin/system-rssh.has"><font size="4">Remote Mgmt</font></a>
      <a href="/cgi-bin/system-firmware.has"><font size="4">Firmware Upgrade</font></a>
    </div>
  </div> 
  
 <div class="dropdown"> <!-- Logread -->
    <button class="dropbtn">Log</button>
    <div class="dropdown-content">
	  <a href="/cgi-bin/log-sys.has"><font size="4">System Log</font></a>
      <a href="/cgi-bin/log-lora.has"><font size="4">LoRa Log</font></a>
    </div>
  </div> 

  <div><a href="/cgi-bin/luci">LuCI</a></div>

  <div><a href="/cgi-bin/dragino.has">Home</a></div>

  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="toggleNavbar()">&#9776;</a>
  
</div>

