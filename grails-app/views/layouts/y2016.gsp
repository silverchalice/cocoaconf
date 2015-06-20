
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Yosemite, by CocoaConf: The Apple Conference with a View</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="${resource(dir: 'css/yosemite2016', file: 'bootstrap.css')}" rel="stylesheet">
<link href="${resource(dir: 'css/yosemite2016', file: 'bootstrap-responsive_yosemite.css')}" rel="stylesheet">
<link href="${resource(dir: 'css/yosemite2016', file: 'main_yosemite_2.css')}" rel="stylesheet">
<link href="${resource(dir: 'css/yosemite2016', file: 'ionicons.css')}" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${resource(dir:'css', file: 'YosemiteWebFonts.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir:'css', file: 'YosemiteWebFonts2.css')}">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="js/yosemite2016/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="ico/favicon.png">

<!-- jQuery expand/collapse -->
<script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.10.0.js" type="text/javascript"></script>
<script src="js/yosemite2016/jquery.modal.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	!window.jQuery && document.write('<script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text\/javascript"><\/script>');
	!window.jQuery && document.write('<script src="/common/jquery-1.10.2.min.js" type="text\/javascript"><\/script>');
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#expanderHead").click(function(){
		$("#expanderContent").slideToggle();
		if ($("#expanderSign").text() == "▾ See all"){
			$("#expanderSign").html("▴ Close")
		}
		else {
			$("#expanderSign").text("▾ See all")
		}
	});
	$("#expanderVenue").click(function(){
		$("#expanderVenueContent").slideToggle();
		if ($("#expanderVenueSign").text() == "▾ Room info"){
			$("#expanderVenueSign").html("▴ Close")
		}
		else {
			$("#expanderVenueSign").text("▾ Room info")
		}
	});
});
</script>

</head>

<body class="home">

  <g:layoutBody />

<!-- Le javascript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="js/yosemite2016/jquery.js"></script> 
<script src="js/yosemite2016/bootstrap-transition.js"></script> 
<script src="js/yosemite2016/bootstrap-alert.js"></script> 
<script src="js/yosemite2016/bootstrap-modal.js"></script> 
<script src="js/yosemite2016/bootstrap-dropdown.js"></script> 
<script src="js/yosemite2016/bootstrap-scrollspy.js"></script> 
<script src="js/yosemite2016/bootstrap-tab.js"></script> 
<script src="js/yosemite2016/bootstrap-tooltip.js"></script> 
<script src="js/yosemite2016/bootstrap-popover.js"></script> 
<script src="js/yosemite2016/bootstrap-button.js"></script> 
<script src="js/yosemite2016/bootstrap-collapse.js"></script> 
<script src="js/yosemite2016/bootstrap-carousel.js"></script> 
<script src="js/yosemite2016/bootstrap-typeahead.js"></script>
</body>
</html>
