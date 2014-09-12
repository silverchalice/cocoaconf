<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><g:layoutTitle /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="css/yosemite/bootstrap.css" rel="stylesheet">
<link href="css/yosemite/bootstrap-responsive_yosemite.css" rel="stylesheet">
<link href="css/yosemite/main_yosemite.css" rel="stylesheet">
<link href="css/yosemite/ionicons.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${resource(dir:'css', file: 'YosemiteWebFonts.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir:'css', file: 'YosemiteWebFonts2.css')}">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="js/yosemite/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="ico/favicon.png">

<!-- jQuery expand/collapse -->
<script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.10.0.js" type="text/javascript"></script>
<script src="${resource(dir:'js/yosemite', file:'jquery.modal.js')}" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	!window.jQuery && document.write('<script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text\/javascript"><\/script>');
	!window.jQuery && document.write('<script src="/common/jquery-1.10.2.min.js" type="text\/javascript"><\/script>');
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#expanderHead").click(function(){
		$("#expanderContent").slideToggle();
		if ($("#expanderSign").text() == "More"){
			$("#expanderSign").html("Fewer")
		}
		else {
			$("#expanderSign").text("More")
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
<script src="js/yosemite/jquery.js"></script> 
<script src="js/yosemite/bootstrap-transition.js"></script> 
<script src="js/yosemite/bootstrap-alert.js"></script> 
<script src="js/yosemite/bootstrap-modal.js"></script> 
<script src="js/yosemite/bootstrap-dropdown.js"></script> 
<script src="js/yosemite/bootstrap-scrollspy.js"></script> 
<script src="js/yosemite/bootstrap-tab.js"></script> 
<script src="js/yosemite/bootstrap-tooltip.js"></script> 
<script src="js/yosemite/bootstrap-popover.js"></script> 
<script src="js/yosemite/bootstrap-button.js"></script> 
<script src="js/yosemite/bootstrap-collapse.js"></script> 
<script src="js/yosemite/bootstrap-carousel.js"></script> 
<script src="js/yosemite/bootstrap-typeahead.js"></script>
</body>
</html>
