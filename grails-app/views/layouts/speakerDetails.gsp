<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><g:layoutTitle default="CocoaConf: The developer conference for those who think different." /></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'new-main.css')}" rel="stylesheet">
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

    <g:javascript library="jquery" plugin="jquery"/>
    <feed:meta kind="atom" version="1.0" controller="post" action="feed"/>
    <g:layoutHead />

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'MyFontsWebfontsKit.css')}">

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-51486442-1', 'cocoaconf.com');
  ga('send', 'pageview');

</script>

</head>



<body class="secondary raleigh sponsors">


<a name="top"></a>



<div class="navbar navbar-inverse navbar-static-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <a class="brand" href="${createLink(uri: '/')}"><img src="${resource(dir:'images', file:'img_cocoaconf_logo.png')}" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pick a City &nbsp; <i class="ion-ios7-arrow-down"></i></a>
                        <ul class="dropdown-menu">
                            <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
                            <li><g:link controller="conference" action="home" params="['tinyName': 'columbus-2014']">Columbus, OH &#8212; <strong>Sold Out!</strong></g:link></li>
                            <li><g:link controller="conference" action="home" params="['tinyName': 'lasvegas-2014']">Las Vegas, NV</g:link></li>
                            <li><g:link controller="conference" action="home" params="['tinyName': 'seattle-2014']">Seattle, WA &#8212; <strong>Sold Out!</strong></g:link></li>
                            <li><g:link controller="conference" action="home" params="['tinyName': 'boston-2014']">Boston, MA</g:link></li>
                            <li><g:link controller="conference" action="home" params="['tinyName': 'atlanta-2014']">Atlanta, GA</g:link></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav pull-right">
                    <li class="active"><g:link controller="speaker" action="speakers">Speakers</g:link></li>
                    <!-- <li><a href="#sessions">Sessions</a></li> -->
                    <!-- <li><a href="#contact">Venues</a></li> -->
                    <li><g:link controller="home" action="partners">Partners</g:link></li>
                    <li><g:link controller="podcast">Podcast</g:link></li>
                    <li><g:link controller="post" action="list">Blog</g:link></li>
                    <!-- <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li> -->
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<g:layoutBody/>
<div class="container">
    <footer>
        <p>&copy; 2014 Simply Cocoa, LLC. |  About the <a href="${createLink(controller: 'home', action: 'kleinfamily')}" title="Learn more about the Kleins">Klein Family</a> |  <a href="${createLink(controller: 'home', action: 'credits')}">Credits</a> |  Site by <a href="http://www.gurrydesign.com" title="Hand-crafted web and graphic design from Peter Gurry" target="_blank">Gurry Design</a></p>
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

<!-- Start of StatCounter Code for Default Guide -->
<script type="text/javascript">
var sc_project=9835782; 
var sc_invisible=1; 
var sc_security="71e210b1"; 
var scJsHost = (("https:" == document.location.protocol) ?
"https://secure." : "http://www.");
document.write("<sc"+"ript type='text/javascript' src='" +
scJsHost+
"statcounter.com/counter/counter.js'></"+"script>");
</script>
<noscript><div class="statcounter"><a title="web analytics"
href="http://statcounter.com/" target="_blank"><img
class="statcounter"
src="http://c.statcounter.com/9835782/0/71e210b1/1/"
alt="web analytics"></a></div></noscript>
<!-- End of StatCounter Code for Default Guide -->

</body>
</html>
