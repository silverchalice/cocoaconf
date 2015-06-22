
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CocoaConf 2014: The conference for iPhone, iPad and Mac developers</title>
<meta name="layout" content="y2016" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive_yosemite.css" rel="stylesheet">
<link href="css/main_yosemite_2.css" rel="stylesheet">
<link href="css/ionicons.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="ico/favicon.png">

<g:javascript library="jquery" plugin="jquery"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<!-- jQuery expand/collapse -->
<script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.10.0.js" type="text/javascript"></script>
<script src="js/jquery.modal.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	!window.jQuery && document.write('<script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text\/javascript"><\/script>');
	!window.jQuery && document.write('<script src="/common/jquery-1.10.2.min.js" type="text\/javascript"><\/script>');
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#expanderHead").click(function(){
		$("#expanderContent").slideToggle();
		if ($("#expanderSign").text() == "▾ More"){
			$("#expanderSign").html("▴ Fewer")
		}
		else {
			$("#expanderSign").text("▾ More")
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

<!-- myFonts code -->
<script type="text/javascript">
    (function() {
        var path = '//easy.myfonts.net/v2/js?sid=4125(font-family=URW+Clarendon+Light)&sid=4126(font-family=URW+Clarendon+Regular)&sid=4127(font-family=URW+Clarendon+Medium)&sid=4128(font-family=URW+Clarendon+Bold)&key=OCOoBy3r4p',
            protocol = ('https:' == document.location.protocol ? 'https:' : 'http:'),
            trial = document.createElement('script');
        trial.type = 'text/javascript';
        trial.async = true;
        trial.src = protocol + path;
        var head = document.getElementsByTagName("head")[0];
        head.appendChild(trial);
    })();
</script>
<script type="text/javascript">
    (function() {
        var path = '//easy.myfonts.net/v2/js?sid=211064(font-family=PMN+Caecilia+Pro+75+Bold)&sid=217996(font-family=PMN+Caecilia+Pro+45+Light)&sid=217997(font-family=PMN+Caecilia+Pro+55+Roman)&key=BaI6HHaF5m',
            protocol = ('https:' == document.location.protocol ? 'https:' : 'http:'),
            trial = document.createElement('script');
        trial.type = 'text/javascript';
        trial.async = true;
        trial.src = protocol + path;
        var head = document.getElementsByTagName("head")[0];
        head.appendChild(trial);
    })();
</script>
</head>

<body class="home">
<a name="top"></a> 
<!--<div class="navbar navbar-inverse navbar-static-top">
  <div class="navbar-inner">
    <div class="container">
      <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="brand" href="#"><img src="images/yosemite2016/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a> 
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Choose a City &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
              <li class="nav-header">Choose a City</li>
              <li class="divider"></li>
              <li><a href="chicago.html">Chicago, IL</a></li>
              <li><a href="#">Washington D.C.</a></li>
              <li><a href="#">Austin, TX</a></li>
              <li><a href="#">San Jose, CA</a></li>
              <li><a href="#">Raleigh, NC</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav pull-right">
          <li><a href="#">Speakers</a></li>
          <li><a href="#sessions">Sessions</a></li>
          <li><a href="#contact">Venues</a></li>
          <li><a href="#contact">Partners</a></li>
          <li><a href="#contact">Blog</a></li>
          <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li>
        </ul>
      </div>--> 
<!--/.nav-collapse 
    </div>
  </div>
</div>-->
<div class="header">
  <div class="container">
    <div class="row-fluid">
      <div class="span2"></div>
      <div class="span6">
        <div class="header-about">
          <p class="lead">We are so excited to be returning to Yosemite on March 14-17, 2016.</p>
          <p class="lead">We&#8217;re still hammering out some of the details of the conference, but already it&#8217;s shaping up to be an amazing four days in the heart of Yosemite Valley. If you&#8217;d like to be one of the first to hear when tickets go on sale, please leave us your contact info.</p>
          <br />
          <div id="yE">
            <g:render template="ySignup" />
          </div>
        </div>
      </div>
      <div class="span2"></div>
    </div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<br />
<p>&nbsp;</p>
  </div>
</div>
<!--<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" href="#top"><i class="ion-ios7-arrow-thin-up"></i>&nbsp;Top </a> 
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Choose a City &nbsp; <i class="ion-ios7-arrow-up"></i></a>
            <ul class="dropdown-menu">
              <li><a href="chicago.html">Chicago, IL</a></li>
              <li><a href="#">Washington D.C.</a></li>
              <li><a href="#">Austin, TX</a></li>
              <li><a href="#">San Jose, CA</a></li>
              <li><a href="#">Raleigh, NC</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav pull-right">
          <li><a href="#">Speakers</a></li>
          <li><a href="#sessions">Sessions</a></li>
          <li><a href="#contact">Venues</a></li>
          <li><a href="#contact">Partners</a></li>
          <li><a href="#contact">Blog</a></li>
          <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</div>-->
<footer>
  <div class="container"> <a class="brand" href="#"><img src="images/yosemite2016/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo" class="pull-left"></a>
    <p class="text-right">&copy; 2015 Simply Cocoa, LLC. &nbsp;| &nbsp; About the <a href="#" title="Learn more about the Kleins">Klein Family</a> &nbsp; | &nbsp; Site by <a href="http://www.gurrydesign.com" title="Hand-crafted web and graphic design from Peter Gurry" target="_blank">Gurry Design</a></p>
  </div>
</footer>
</div>
<!-- /container --> 


<!-- Le javascript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="js/jquery.js"></script> 
<script src="js/bootstrap-transition.js"></script> 
<script src="js/bootstrap-alert.js"></script> 
<script src="js/bootstrap-modal.js"></script> 
<script src="js/bootstrap-dropdown.js"></script> 
<script src="js/bootstrap-scrollspy.js"></script> 
<script src="js/bootstrap-tab.js"></script> 
<script src="js/bootstrap-tooltip.js"></script> 
<script src="js/bootstrap-popover.js"></script> 
<script src="js/bootstrap-button.js"></script> 
<script src="js/bootstrap-collapse.js"></script> 
<script src="js/bootstrap-carousel.js"></script> 
<script src="js/bootstrap-typeahead.js"></script>
</body>
</html>
