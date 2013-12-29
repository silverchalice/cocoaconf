<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><g:layoutTitle default="CocoaConf 2014: The conference for iPhone, iPad and Mac developers<" /></title>
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
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="ico/favicon.png">

<g:javascript library="jquery" plugin="jquery"/>
<feed:meta kind="atom" version="1.0" controller="post" action="feed"/>

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

<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-23131242-2']);
    _gaq.push(['_setDomainName', '.cocoaconf.com']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>

<g:layoutHead />

</head>

<body class="home">
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
          <li><g:link controller="speaker" action="speakers">Speakers</g:link></li>
          <li><a href="#sessions">Sessions</a></li>
          <li><a href="#contact">Venues</a></li>
          <li><g:link controller="home" action="partners">Partners</g:link></li>
          <li><g:link controller="post" action="list">Blog</g:link></li>
          <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li>
        </ul>
      </div>
      <!--/.nav-collapse --> 
    </div>
  </div>
</div>
<div class="header">
  <div class="container">
    <h1>The developer conference for those who think different.</h1>
    <h3><span>5 cities / 100+ speakers / one low price</span> &nbsp;
      <button class="btn btn-large btns-flat-gray">Register &nbsp;<i class="ion-ios7-arrow-right"></i></button>
    </h3>
  </div>
</div>
<div class="about">
  <div class="container">
    <div class="media"> <img src="${resource(dir: 'images', file: 'img_imac.png')}" alt="An iPhone 5c" class="pull-right imac"></a>
      <div class="media-body">
        <g:layoutBody />
      </div>
    </div>
  </div>
</div>
<div class="locations">
  <div class="container">
    <h2 class="text-center">When / Where</h2>
    <div class="row">
      <div class="span1">&nbsp;</div>
      <div class="span2">
        <a href="#"><h3>Chicago<br>
          <small>March 7–8</small></h3></a>
        <p><i class="ion-ios7-contact-outline"></i> <a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i> <a href="city_sessions.html">Session Topics</a></p>
        <a href="#" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward"></i></a> </div>
      <div class="span2">
        <a href="#"><h3><em class="dc-title">Washington DC</em><br>
          <small>March 28–29</small></h3></a>
        <p><i class="ion-ios7-contact-outline"></i> <a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i> <a href="city_sessions.html">Session Topics</a></p>
        <a href="#" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward"></i></a> </div>
      <div class="span2">
        <a href="#"><h3>Austin<br>
          <small>April 4–5</small></h3></a>
        <p><i class="ion-ios7-contact-outline"></i> <a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i> <a href="city_sessions.html">Session Topics</a></p>
        <a href="#" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward"></i></a> </div>
      <div class="span2">
        <a href="#"><h3>San Jose<br>
          <small>April 25–26</small></h3></a>
        <p><i class="ion-ios7-contact-outline"></i> <a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i> <a href="city_sessions.html">Session Topics</a></p>
        <a href="#" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward"></i></a> </div>
      <div class="span2">
        <a href="#"><h3>Raleigh<br>
          <small>May 9–10</small></h3></a>
        <p><i class="ion-ios7-contact-outline"></i> <a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i> <a href="city_sessions.html">Session Topics</a></p>
        <a href="#" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward"></i></a> </div>
      <div class="span1">&nbsp;</div>
    </div>
  </div>
</div>
<div class="speakers">
  <div class="container">
    <h2 class="text-center">Speakers</h2>
    <p class="lead text-center">Cocoa Conf speakers are thought leaders, authors, and professional iOS and OS X developers. <a href="#" title="All speakers">Meet them all <i class="ion-ios7-arrow-forward"></i></a></p>
    <p>&nbsp;</p>
    <div class="row">
      <div class="span3"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images', file: 'photo_adamson_chris.jpg')}" alt="Speaker image"></a>
        <h3 class="text-center">Chris Adamson</h3>
        <h4 class="text-center"><span>Writer, Editor, Developer</span></h4>
      </div>
      <div class="span3"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images', file: 'photo_williams_justin.jpg')}" alt="Speaker image"></a>
        <h3 class="text-center">Justin Williams</h3>
        <h4 class="text-center"><span> Chief at Second Gear</span></h4>
      </div>
      <div class="span3"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images', file:'photo_speaker.jpg')}" alt="Speaker image"></a>
        <h3 class="text-center">Speaker Name</h3>
        <h4 class="text-center"><span>Speaker Title</span></h4>
      </div>
      <div class="span3"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images', file: 'photo_speaker.jpg')}" alt="Speaker image"></a>
        <h3 class="text-center">Speaker Name</h3>
        <h4 class="text-center"><span>Speaker Title</span></h4>
      </div>
    </div>
  </div>
</div>
<div class="sessions">
  <div class="container">
    <h2 class="text-center">Sessions</h2>
    <div class="row">
      <div class="span6">
        <div class="media"> <a href="#" title="Learn more" class="pull-left"><img src="${resource(dir: 'images', file: 'img_session_home_01.png')}" alt="Speaker image"></a>
          <div class="media-body">
            <h3><a href="#" class="muted">Designing App Engagement</a></h3>
            <h4><span>by <a href="#" title="Learn more about this speaker">Chris Adamson</a></span></h4>
            <p>With so many apps in the app store, what can you be thinking about to get and keep people interested in your app? Having a great concept is just the beginning. How much thinking goes into the personality and tone of your app? What about writing the error messages, alerts, calls-to-action, app descriptions or release notes?</p>
          </div>
        </div>
      </div>
      <div class="span6">
        <div class="media"> <a href="#" title="Learn more" class="pull-left"><img src="${resource(dir: 'images', file: 'img_session_home_02.png')}" alt="Speaker image"></a>
          <div class="media-body">
            <h3><a href="#" class="muted">Another Session Title</a></h3>
            <h4><span>by <a href="#" title="Learn more about this speaker">Speaker Name</a></span></h4>
            <p>With so many apps in the app store, what can you be thinking about to get and keep people interested in your app? Having a great concept is just the beginning. How much thinking goes into the personality and tone of your app? What about writing the error messages, alerts, calls-to-action, app descriptions or release notes?</p>
          </div>
        </div>
      </div>
    </div>
    <hr>
    <p class="text-center"><strong>Other topics:</strong> &nbsp; <a href="#" class="muted">Workflow best practices</a> &nbsp; / &nbsp; <a href="#" class="muted">Marketing your new app</a> &nbsp; / &nbsp; <a href="#" class="muted">Coding within constraints</a> &nbsp; / &nbsp; <a href="#" class="muted">Lorem ipsum dolor amet consularium</a> &nbsp; / &nbsp; <a href="#" title="View all session topics">View all topics <i class="ion-ios7-arrow-forward"></i></a></p>
  </div>
</div>
<div class="comments">
  <div class="container">
    <h2 class="text-center">Comments</h2>
    <blockquote>
      <p class="quotation">“It was a great conference—<em>well worth the cost of admission and the time spent.</em> There were two days of really great talks put together by developers who really want to share their knowledge.”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'img_benjamin.jpg')}" alt="Benjamin photo" class="pull-left img-circle"><cite>Benjamin Turner</cite><br>
        <a href="https://twitter.com/kindjar">@kindjar</a> </p>
    </blockquote>
    <blockquote>
      <p class="quotation">“Going to  cocoa conf... has removed that nagging doubt that maybe this isn’t for me. Now, more than ever, <em>I am determined to release my first two apps</em> into the app store.”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'img_dennis.jpg')}" alt="Dennis photo" class="pull-left img-circle"> <cite>Dennis Bowles</cite><br>
        <a href="http://www.iphoneappexperiment.com/">iphoneappexperiment.com</a> </p>
    </blockquote>
  </div>
</div>
<div class="share">
  <div class="container">
    <h2 class="pull-left">Spread the Word</h2>
    <p> <a href="#" class="share twitter text-center"><i class="ion-social-twitter"></i></a> <a href="#" class="share facebook text-center"><i class="ion-social-facebook"></i></a> <a href="#" class="share google text-center"><i class="ion-social-googleplus-outline"></i></a> <a href="#" class="share email text-center"><i class="ion-ios7-email"></i></a> <a href="#" class="share more text-center"><i class="ion-ios7-plus-outline"></i></a> <a href="https://twitter.com/CocoaConf" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @CocoaConf</a> 
      <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script> 
    </p>
  </div>
</div>
<div class="sponsors">
  <div class="container">
    <h2 class="text-center">Sponsors</h2>
    <div class="row">
      <div class="span4"><a href="#"><img class="center" src="${resource(dir: 'images', file: 'logo_wiley_white.png')}" alt="Wiley logo"></a></div>
      <div class="span4"><a href="#"><img class="center" src="${resource(dir: 'images', file: 'logo_ranch_white.png')}" alt="logo"></a></div>
      <div class="span4"><a href="#"><img class="center" src="${resource(dir: 'images', file: 'logo_wiley_white.png')}" alt="Wiley logo"></a></div>
    </div>
  </div>
</div>
<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
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
