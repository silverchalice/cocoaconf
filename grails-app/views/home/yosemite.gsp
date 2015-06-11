
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
      <img id="half-dome" src="${resource(dir: 'images/yosemite2016', file: 'yosemite_half_dome.png')}" alt="Half Dome logo">
        <h1><i class="kern-tight">Y</i>osemite</h1>
        <p class="byline">by <a href="cocoaconf.com">CocoaConf</a></p>
        <hr class="big-red">
        <h2>The Apple Conference with a View <span>/ April 20–23, 2015</span></h2>
        <div class="header-about">
          <p class="lead"><span class="yosemite-name">Yosemite</span> is a conference for Apple developers, designers, and enthusiasts, held in the heart of Yosemite National Park. We will have presentations by some of the most loved members of this awesome community separated by long breaks to get out and enjoy the beauty and grandeur of the park.</p>
          <p class="lead">There will be guided hikes and a photo walk led by TED photographer, James Duncan Davidson, and a Breakpoint Jam with James Dempsey.</p>
          <p class="lead">This is a once-in-a-lifetime event that will be talked about for years to come—don't miss it! </p>
        </div>
      </div>
      <div class="span2"></div>
    </div>
  </div>
</div>
<div class="about">
  <div class="container">
    <div class="row-fluid">
      <div class="span2"><a href="#venue" class="btn btn-large btn-block btn-flat-gray">Venue</a></div>
      <div class="span2"><a href="#speakers" class="btn btn-large btn-block btn-flat-gray">Speakers</a></div>
      <div class="span2"><a href="#schedule" class="btn btn-large btn-block btn-flat-gray">Schedule</a></div>
      <div class="span2"><a href="#register" class="btn btn-large btn-block btn-flat-gray">Register</a></div>
      <div class="span2"><a href="#share" class="btn btn-large btn-block btn-flat-gray">Share</a></div>
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
      <div class="span2"><img class="img-circle center" src="images/yosemite2016/img_yosemite_lodge_01.jpg" alt="Yosemite Lodge image"></div>
      <div class="span2"><img class="img-circle center" src="images/yosemite2016/img_yosemite_binoculars.jpg" alt="Binoculars overlooking Glacier Point, Yosemite"></div>
      <div class="span2">
        <p class="lead text-center">9006 Yosemite Lodge Dr Yosemite National Park, CA <br>
        </p>
        <p><a href="#venue" class="btn btn-flat-gray btn-block btn-large" id="expanderVenue"><span id="expanderVenueSign">▾ Room info</span></a></p>
      </div>
      <div class="span2"><img class="img-circle center" src="images/yosemite2016/img_yosemite_lodge_03.jpg" alt="Yosemite Lodge image"></div>
      <div class="span2"><img class="img-circle center" src="images/yosemite2016/img_yosemite_lodge_02.jpg" alt="Yosemite Lodge image"></div>
    </div>
    <div id="expanderVenueContent" style="display:none;">
    <p>&nbsp;</p><hr>
      <div class="row-fluid">
        
        <div class="span6">
          <h2>Reservations</h2>
          <p>Rooms can be reserved at <a href="www.yosemitepark.com" title="Visit the website">www.yosemitepark.com</a> or by calling 801-559-4935. When registering, use the group code: <span class="yosemite-name">14K5VG</span>. We have group rates for different types and locations of rooms. All rooms are limited.</p><hr>
          <p>There is a shuttle that runs between Curry Village and Yosemite Lodge every half hour.</p>
        </div>
        <div class="span4">
        <h2>Prices</h2>
          <table cellpadding="0" cellspacing="0">
            <tr>
              <td>Yosemite Lodge Room</td>
              <td>$237 / night</td>
            </tr>
            <tr>
              <td>Yosemite Lodge Family Bunk Room</td>
              <td>$228 / night</td>
            </tr>
            <tr>
              <td>Curry Village Cabin with Bathroom</td>
              <td>$203 / night</td>
            </tr>
            <tr>
              <td>Curry Village Heated Tent</td>
              <td>$134 / night</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<a name="speakers"></a>
<div class="speakers">
  <div class="container">
    <h2 class="text-center">Learn from the best in the business.</h2>
    <p class="lead text-center">Yosemite speakers are thought leaders, authors, and professional Apple developers and designers.</p>
    <p>&nbsp;</p>
    <div class="row-fluid">
      <div class="span2"> <a href="#ex1" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Serenity Caldwell.jpg" alt="Speaker image"></a>
        <h3 class="text-center">Serenity Caldwell</h3>
        <h4 class="text-center"><span>Title</span></h4>
        <div id="ex1" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite2016/speakers/Serenity Caldwell.jpg" alt="Speaker image">
          <h3>Serenity Caldwell</h3>
          <h4><span>Title</span></h4>
          <p><span class="twitter"><a href="#" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@handle</a></span> / <span class="blog"><a href="#" title="Visit this speaker's blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;website.com/blog</a></span></p>
          <hr>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor tincidunt vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam ornare varius dolor. In mattis dolor sit amet rhoncus lacinia. Sed a consectetur diam. Vivamus vitae metus fringilla, vulputate elit eget, viverra massa. Suspendisse potenti. Donec elit sapien, fringilla vel purus at, pellentesque malesuada nisi.</p>
        </div>
      </div>
      <div class="span2"> <a href="#ex2" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Neven Mrgan.jpg" alt="Speaker image"></a>
        <h3 class="text-center">Neven Morgan</h3>
        <h4 class="text-center"><span>Title</span></h4>
        <div id="ex2" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite2016/speakers/Neven Mrgan.jpg" alt="Speaker image">
          <h3>Neven Morgan</h3>
          <h4><span>Title</span></h4>
          <p><span class="twitter"><a href="#" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@handle</a></span> / <span class="blog"><a href="#" title="Visit this speaker's blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;website.com/blog</a></span></p>
          <hr>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor tincidunt vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam ornare varius dolor. In mattis dolor sit amet rhoncus lacinia. Sed a consectetur diam. Vivamus vitae metus fringilla, vulputate elit eget, viverra massa. Suspendisse potenti. Donec elit sapien, fringilla vel purus at, pellentesque malesuada nisi.</p>
        </div>
      </div>
      <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Michael Lopp.jpg" alt="Speaker image"></a>
        <h3 class="text-center">Michael Lopp</h3>
        <h4 class="text-center"><span>Speaker Title</span></h4>
      </div>
      <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Matt Drance.jpg" alt="Speaker image"></a>
        <h3 class="text-center">Matt Drance</h3>
        <h4 class="text-center"><span>Speaker Title</span></h4>
      </div>
      <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/laura Savino.jpg" alt="Speaker image"></a>
        <h3 class="text-center">Laura Savino</h3>
        <h4 class="text-center"><span>Speaker Title</span></h4>
      </div>
    </div>
    <p>&nbsp;</p>
    <a name="speakersMore"></a>
    <div id="expanderContent" style="display:none;">
      <div class="row-fluid">
        <div class="span2"> <a href="#ex6" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Jason-Snell.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Jason Snell</h3>
          <h4 class="text-center"><span>Title</span></h4>
          <div id="ex6" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite2016/speakers/Jason-Snell.jpg" alt="Speaker image">
            <h3>Jason Snell</h3>
            <h4><span>Title</span></h4>
            <p><span class="twitter"><a href="#" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@handle</a></span> / <span class="blog"><a href="#" title="Visit this speaker's blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;website.com/blog</a></span></p>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor tincidunt vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam ornare varius dolor. In mattis dolor sit amet rhoncus lacinia. Sed a consectetur diam. Vivamus vitae metus fringilla, vulputate elit eget, viverra massa. Suspendisse potenti. Donec elit sapien, fringilla vel purus at, pellentesque malesuada nisi.</p>
          </div>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/James Duncan Davidson.jpg" alt="Speaker image"></a>
          <h3 class="text-center">James Duncan Davidson</h3>
          <h4 class="text-center"><span>Title</span></h4>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/James Dempsey.jpg" alt="Speaker image"></a>
          <h3 class="text-center">James Dempsey</h3>
          <h4 class="text-center"><span>Speaker Title</span></h4>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Jaimee Newberry.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Jaimee Newberry</h3>
          <h4 class="text-center"><span>Speaker Title</span></h4>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Guy English.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Guy English</h3>
          <h4 class="text-center"><span>Speaker Title</span></h4>
        </div>
      </div>
      <p>&nbsp;</p>
      <div class="row-fluid">
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Dave Wiskus.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Dave Wiskus</h3>
          <h4 class="text-center"><span>Writer, Editor, Developer</span></h4>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Daniel Steinberg.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Daniel Steinberg</h3>
          <h4 class="text-center"><span> Chief at Second Gear</span></h4>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Brent Simmons.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Brent Simmons</h3>
          <h4 class="text-center"><span>Speaker Title</span></h4>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Andy Ihnatko.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Andy Ihnatko</h3>
          <h4 class="text-center"><span>Speaker Title</span></h4>
        </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Andrew_Stone.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Andrew_Stone</h3>
          <h4 class="text-center"><span>Speaker Title</span></h4>
        </div>
      </div>
      <p>&nbsp;</p>
      <div class="row-fluid">
        <div class="span2"> </div>
        <div class="span2"> </div>
        <div class="span2"> <a href="#" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/photo_speaker.jpg" alt="Speaker image"></a>
          <h3 class="text-center">Speaker Name</h3>
          <h4 class="text-center"><span>Speaker Title</span></h4>
        </div>
        <div class="span2"> </div>
        <div class="span2"> </div>
      </div>
    </div>
    <p>&nbsp;</p>
    <div class="row-fluid">
      <div class="span4"> </div>
      <div class="span2">
        <p><a href="#speakersMore" class="btn btn-flat btn-block btn-large" id="expanderHead"><span id="expanderSign">▾ More</span> speakers </a></p>
      </div>
      <div class="span4"> </div>
    </div>
  </div>
</div>
<a name="schedule"></a>
<div class="locations">
  <div class="container">
    <h2 class="text-center">A schedule with room to explore.</h2>
    <div class="row-fluid">
      <div class="span2">
        <h3>Monday<br>
          <small>April 20</small></h3>
        <p>Check-in from 5:00 pm - 9:00 pm</p>
      </div>
      <div class="span2">
        <h3>Tuesday<br>
          <small>April 21</small></h3>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<a href="city_sessions.html">Session Topics</a></p>
      </div>
      <div class="span2"> <img class="img-circle center" src="http://cdn1.stocksy.com/a/pt5000/z5/22681.jpg" alt="Yosemite Valley"> </div>
      <div class="span2">
        <h3>Wednesday<br>
          <small>April 22</small></h3>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<a href="city_sessions.html">Session Topics</a></p>
      </div>
      <div class="span2">
        <h3>Thursday<br>
          <small>April 23</small></h3>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<a href="city_speakers.html">Speakers</a></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<a href="city_sessions.html">Session Topics</a></p>
      </div>
    </div>
  </div>
</div>
<a name="share"></a>
<div class="share">
  <div class="container">
    <h2 class="pull-left">Spread the Word</h2>
    <p> <a href="https://twitter.com/intent/tweet?text=CocoaConf%3A%20The%20developer%20conference%20for%20those%20who%20think%20different&amp;url=http://cocoaconf.com" class="share twitter text-center"><i class="ion-social-twitter"></i></a> <a href="http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]=http://cocoaconf.com&amp;p[images][0]=&amp;p[title]=CocoaConf:%20The%20developer%20conference%20for%20those%20who%20think%20different&amp;p[summary]=%E2%80%9CCocoaConf%20is%20a%20touring%20training%20conference%20for%20iPhone,%20iPad,%20and%20Mac%20developers.%20We%20bring%20some%20of%20the%20best%20authors,%20trainers,%20and%20speakers%20to%20the%20most%20passionate,%20engaged%20developers%20in%20a%20region%E2%80%94together,%20they%20make%20magic!%E2%80%9D" class="share facebook text-center"><i class="ion-social-facebook"></i></a> <a href="https://plus.google.com/share?url=http://cocoaconf.com" class="share google text-center"><i class="ion-social-googleplus-outline"></i></a> <a href="https://mail.google.com/mail/?view=cm&amp;fs=1&amp;tf=1&amp;to=&amp;su=CocoaConf%3A%20The%20developer%20conference%20for%20those%20who%20think%20different&amp;body=%22CocoaConf%20is%20a%20touring%20training%20conference%20for%20iPhone%2C%20iPad%2C%20and%20Mac%20developers.%20We%20bring%20some%20of%20the%20best%20authors%2C%20trainers%2C%20and%20speakers%20to%20the%20most%20passionate%2C%20engaged%20developers%20in%20a%20region--together%2C%20they%20make%20magic%21%22%0A%0Ahttp%3A//cocoaconf.com" class="share email text-center" target="_blank"><i class="ion-ios7-email"></i></a> <a href="https://alpha.app.net/intent/post/?text=CocoaConf%3A%20The%20developer%20conference%20for%20those%20who%20think%20different&amp;url=http://cocoaconf.com" class="share more text-center"><i class="ion-ios7-plus-outline"></i></a>
      <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/follow_button.1404859412.html#_=1406668400431&amp;id=twitter-widget-0&amp;lang=en&amp;screen_name=CocoaConf&amp;show_count=false&amp;show_screen_name=true&amp;size=l" class="twitter-follow-button twitter-follow-button" title="Twitter Follow Button" data-twttr-rendered="true" style="width: 167px; height: 28px;"></iframe>
      <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script> 
    </p>
  </div>
</div>
<a name="register"></a>
<div class="sessions">
  <div class="container">
    <h2 class="text-center">What you get when you register now.</h2>
    <div class="row-fluid">
      <div class="span10">
        <h3></h3>
        <p>The Yosemite conference includes general sessions, keynote presentations, and three breakout tracks covering a variety of iOS and OS X development topics. Also included in your registration are all meals, snacks and beverages, so you can keep your mind on all the new stuff you’re learning and not have to go forage for sustenance. But wait, there’s more… you will also receive a collection of some of the best conference swag in the industry. All that, and the opportunity to spend the weekend with a bunch of awesome iPhone, iPad, and Mac developers.</p>
        <p>Group discounts are also available. Contact us at <a href="https://mail.google.com/mail/?view=cm&amp;fs=1&amp;tf=1&amp;to=info@cocoaconf.com" target="_blank">info@cocoaconf.com</a> for details.</p>
        <br>
        <div style="width:100%; text-align:left;">
          <iframe src="https://www.eventbrite.com/tickets-external?eid=11276380959&amp;ref=etckt" frameborder="0" height="400" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe>
        </div>
      </div>
    </div>
    <hr>
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
  <div class="container"> <a class="brand" href="#"><img src="images/yosemite2016/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo" class="pull-left"></a>
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
