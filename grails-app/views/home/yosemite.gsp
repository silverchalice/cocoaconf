

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Yosemite, by CocoaConf: The Apple Conference with a View</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta name="layout" content="y2017" />

</head>

<body class="home">
  
<a name="top"></a> 
<div class="header">
  <div class="container">
    <div class="row-fluid">
      <div class="span2"></div>
      <div class="span6">
      <!--<img id="half-dome" src="images/yosemite2017/yosemite_half_dome.png" alt="Half Dome logo">-->
        <h1><i class="kern-tight">Y</i>osemite</h1>
        <p class="byline">by <a href="/">CocoaConf</a></p>
        <hr class="big-red">
        <h2>The Apple Conference with a View <span>/ March 20–23, 2017</span></h2>
        <div class="header-about">
            ${yosemiteMain?.contents}
        </div>
      </div>
      <div class="span2"></div>
    </div>
  </div>
</div>
<div class="about">
  <div class="container">
    <div class="row-fluid">
      <div class="span1"></div>
      <div class="span2"><a href="#venue" class="btn btn-large btn-block btn-flat-gray">Venue</a></div>
      <div class="span2"><a href="#speakers" class="btn btn-large btn-block btn-flat-gray">Speakers</a></div>
      <div class="span2"><a href="#schedule" class="btn btn-large btn-block btn-flat-gray">Schedule</a></div>
      <div class="span2"><a href="#register" class="btn btn-large btn-block btn-flat-gray">Register</a></div>
      <!--<div class="span2"><a href="#share" class="btn btn-large btn-block btn-flat-gray">Share</a></div>-->
      <div class="span1"></div>
    </div>
  </div>
</div>

<!--<div class="about">
</div>
--> 
<a name="venue"></a>
<div class="locations venue">
  <div class="container">
    <h2 class="text-center">Wake up to breathtaking views.</h2>
    <p class="lead text-center">Our conference will be hosted at the Yosemite Lodge at the Falls in the heart of the Yosemite Valley.</p>
    <p>&nbsp;</p>
    <div class="row-fluid">
      <div class="span2"><img class="img-circle center" src="http://www.cocoaconf.com/images/yosemite2016/img_yosemite_lodge_01.jpg" alt="Yosemite Lodge image"></div>
      <div class="span2"><img class="img-circle center" src="http://www.cocoaconf.com/images/yosemite2016/img_yosemite_binoculars.jpg" alt="Binoculars overlooking Glacier Point, Yosemite"></div>
      <div class="span2">
        <p class="lead text-center">9006 Yosemite Lodge Dr Yosemite National Park, CA <br>
        </p>
        <p><a href="#venue" class="btn btn-flat-gray btn-block btn-large" id="expanderVenue"><span id="expanderVenueSign">▾ Room info</span></a></p>
      </div>
      <div class="span2"><img class="img-circle center" src="http://www.cocoaconf.com/images/yosemite2016/img_yosemite_lodge_03.jpg" alt="Yosemite Lodge image"></div>
      <div class="span2"><img class="img-circle center" src="http://www.cocoaconf.com/images/yosemite2016/img_yosemite_lodge_02.jpg" alt="Yosemite Lodge image"></div>
    </div>
    <div id="expanderVenueContent" style="display:none;">
    <p>&nbsp;</p><hr>
      <div class="row-fluid">
        
        <div class="span6">
            ${yosemiteRoom?.contents}
        </div>
      </div>
    </div>
  </div>
</div>
<a name="speakers"></a>
<div class="speakers">
  <div class="container">
      ${yosemiteSpeakers?.contents}
  </div>
</div>
<a name="schedule"></a>
<div class="locations">
  <div class="container">
      ${yosemiteSchedule?.contents}
  </div>
</div>
<!--<a name="share"></a>
<div class="share">
  <div class="container">
    <h2 class="pull-left">Spread the Word</h2>
    <p> <a href="https://twitter.com/intent/tweet?text=Yosemite%2C%20by%20CocoaConf%3A%20The%20Apple%20Conference%20with%20a%20View&amp;url=http://cocoaconf.com/yosemite" class="share twitter text-center"><i class="ion-social-twitter"></i></a> <a href="http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]=http://cocoaconf.com/yosemite&amp;p[images][0]=&amp;p[title]=Yosemite:%20The%20Apple%20Conference%20with%20a%20View" class="share facebook text-center"><i class="ion-social-facebook"></i></a> <a href="https://plus.google.com/share?url=http://cocoaconf.com/yosemite" class="share google text-center"><i class="ion-social-googleplus-outline"></i></a> <a href="https://mail.google.com/mail/?view=cm&amp;fs=1&amp;tf=1&amp;to=&amp;su=Yosemite%2C%20by%20CocoaConf%3A%20The%20Apple%20Conference%20with%20a%20View" class="share email text-center" target="_blank"><i class="ion-ios7-email"></i></a> <a href="https://alpha.app.net/intent/post/?text=Yosemite%2C%20by%20CocoaConf%3A%20The%20Apple%20Conference%20with%20a%20Viewamp;url=http://cocoaconf.com/yosemite" class="share more text-center"><i class="ion-ios7-plus-outline"></i></a>
      <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/follow_button.1404859412.html#_=1406668400431&amp;id=twitter-widget-0&amp;lang=en&amp;screen_name=CocoaConf&amp;show_count=false&amp;show_screen_name=true&amp;size=l" class="twitter-follow-button twitter-follow-button" title="Twitter Follow Button" data-twttr-rendered="true" style="width: 167px; height: 28px;"></iframe>
      <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script> 
    </p>
  </div>
</div>-->
<a name="register"></a>
<div class="sessions">
  <div class="container">
      ${yosemiteRegister?.contents}
  </div>
</div>

<!--<div class="comments">
  <div class="container">
    <h2 class="text-center">Comments</h2>
    <blockquote>
      <p class="quotation">“It was a great conference—<em>well worth the cost of admission and the time spent.</em> There were two days of really great talks put together by developers who really want to share their knowledge.”</p>
      <p class="source"><img src="images/yosemite2016/img_benjamin.jpg" alt="Benjamin photo" class="pull-left img-circle"><cite>Benjamin Turner</cite><br>
        <a href="https://twitter.com/kindjar">@kindjar</a> </p>
    </blockquote>
    <blockquote>
      <p class="quotation">“Going to  cocoa conf... has removed that nagging doubt that maybe this isn’t for me. Now, more than ever, <em>I am determined to release my first two apps</em> into the app store.”</p>
      <p class="source"><img src="images/yosemite2016/img_dennis.jpg" alt="Dennis photo" class="pull-left img-circle"> <cite>Dennis Bowles</cite><br>
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
    <div class="row-fluid">
      <div class="span3"><a href="#"><img class="center" src="images/yosemite2016/logo_wiley_white.png" alt="Wiley logo"></a></div>
      <div class="span4"><a href="#"><img class="center" src="images/yosemite2016/logo_ranch_white.png" alt="logo"></a></div>
      <div class="span3"><a href="#"><img class="center" src="images/yosemite2016/logo_wiley_white.png" alt="Wiley logo"></a></div>
    </div>
  </div>
</div>--> 
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
  <div class="container"> <a class="brand" href="/"><img src="http://www.cocoaconf.com/images/yosemite2016/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo" class="pull-left"></a>
    <p class="text-right">&copy; 2015 Simply Cocoa, LLC. &nbsp;| &nbsp; <a href="/family" title="Learn more about the Kleins">About the Klein family</a> &nbsp; | &nbsp; Site by <a href="http://www.gurrydesign.com" title="Hand-crafted web and graphic design from Peter Gurry" target="_blank">Gurry Design</a></p>
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
/html>
