<% vendor_name=$(uci get system.vendor.name) %>
  <title><% echo $vendor_name %> LoRa Gateway</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
  <meta http-equiv="Pragma" content="no-cache" />
  <meta http-equiv="Expires" content="0" />

  <link rel="stylesheet" type="text/css" href="/static/resources/LoRaGateway.css">  
  <link rel="stylesheet" href="/static/resources/font-awesome/css/all.css">
  <link rel="shortcut icon" href="/static/resources/favicon.ico">
  
  <script src="/static/resources/jquery.min.js"></script>

  <script>
  	function toggleNavbar() {
	 	var x = document.getElementById("docTopnav");
	 	if (x.className === "topnav") {
	    	x.className += " responsive";
	  	} 
	 	else {
	    	x.className = "topnav";
		}
	}

	/* function to toggle show and hide states of password inputs */
	function toggleVis(clickedElmt) {
	  	var x = document.getElementById(clickedElmt);
  		var tabCell1 = x.parentElement;
  		var tabCell2 = tabCell1.nextElementSibling;
  		var y = tabCell2.firstElementChild;

    	if (x.type === "password") {
    		x.type = "text";
				y.innerHTML = "Hide";
				y.className = "btnHide"; 
	
  		} else {
    		x.type = "password";
				y.innerHTML = "Show";
				y.className = "btnShow"; 
  		}
	} 

	function showPageLoaderIcon() {
		document.getElementById("pageLoader").style.display = "block";
	}

	</script>

