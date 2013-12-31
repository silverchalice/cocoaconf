<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CocoaConf 2014: The conference for iPhone, iPad and Mac developers</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet">
<link href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" rel="stylesheet">
<link href="${resource(dir: 'css', file: 'main.css')}" rel="stylesheet">
<link href="${resource(dir: 'css', file: 'ionicons.css')}" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="${resource(dir: 'js', file: 'html5shiv.js')}"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${resource(dir: 'ico', file: 'apple-touch-icon-144-precomposed.png')}">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${resource(dir: 'ico', file: 'apple-touch-icon-114-precomposed.png')}">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${resource(dir: 'ico', file: 'apple-touch-icon-72-precomposed.png')}">
<link rel="apple-touch-icon-precomposed" href="${resource(dir: 'ico', file: 'apple-touch-icon-57-precomposed.png')}">
<link rel="shortcut icon" href="${resource(dir: 'ico', file: 'favicon.png')}">

<!-- MyFonts Avenir Trial -->
<script type="text/javascript">
    (function() {
        var path = '//easy.myfonts.net/v1/js?sid=10336(font-family=Avenir+35+Light)&sid=10338(font-family=Avenir+55+Roman)&sid=10340(font-family=Avenir+85+Heavy)&sid=10344(font-family=Avenir+65+Medium)&key=SNbNMJyrcR',
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
<div class="navbar navbar-inverse navbar-static-top">
  <div class="navbar-inner">
    <div class="container">
      <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="brand" href="#"><img src="${resource(dir: 'images', file: 'img_cocoaconf_logo.png')}" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Choose a City &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
              <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
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
      <!--/.nav-collapse --> 
    </div>
  </div>
</div>
<div class="header">
  <div class="container">
    <h1>The developer conference <br /> for those who think different.</h1>
    <h3><span class="hidden-phone hidden-tablet">5 cities / 100+ speakers / one low price &nbsp; </span>
      <button class="btn btn-large btn-flat-gray">Register &nbsp;<i class="ion-ios7-arrow-right"></i></button>
    </h3>
  </div>
</div>
<g:layoutBody />
<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" href="#top"><i class="ion-ios7-arrow-thin-up"></i>&nbsp;Top </a>
        <!--<a class="brand" href="#"><img src="${resource(dir: 'images', file: 'img_cocoaconf_logo.png')}" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>-->
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Choose a City &nbsp; <i class="ion-ios7-arrow-up"></i></a>
            <ul class="dropdown-menu">
              <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
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
      <!--/.nav-collapse --> 
    </div>
  </div>
</div>
<footer>
  <div class="container">
    <p class="text-right">&copy; 2014 Simply Cocoa, LLC. &nbsp;| &nbsp; About the <a href="#" title="Learn more about the Kleins">Klein Family</a> &nbsp; | &nbsp; Site by <a href="http://www.gurrydesign.com" title="Hand-crafted web and graphic design from Peter Gurry" target="_blank">Gurry Design</a></p>
  </div>
</footer>
</div>
<!-- /container --> 

<!-- Le javascript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${resource(dir: 'js', file: 'jquery.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-transition.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-alert.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-modal.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-dropdown.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-scrollspy.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-tab.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-tooltip.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-popover.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-button.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-collapse.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-carousel.js')}"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap-typeahead.js')}"></script>
</body>
</html>
