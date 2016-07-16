
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
        <p class="byline">by <a href="/">CocoaConf</a></p>
        <hr class="big-red">
        <h2>The Apple Conference with a View <span>/ March 14–17, 2016</span></h2>
        <div class="header-about">
          <p class="lead"><span class="yosemite-name">Once in a lifetime just wasn&#8217;t enough.</span></p>
          <p class="lead">Join us next Spring as we return to Yosemite National Park for this unique and awe-inspiring conference for Apple enthusiasts.</p>
          <p class="lead">You&#8217;ll hear from some of the most-loved members of this awesome community &#8212; people such as <strong>Andy Ihnatko</strong>, <strong>Jim Dalrymple</strong>, <strong>Serenity Caldwell</strong>, and <strong>Brent Simmons</strong>. You&#8217;ll also have opportunities to get out and enjoy the beauty and grandeur of the park. There will be guided hikes, a photo walk with TED photographer <strong>James Duncan Davidson</strong>, a Breakpoint Jam with <strong>James Dempsey</strong>, and song summaries by <strong>Jonathan</strong> &#8220;Song a Day&#8221; <strong>Mann</strong>!</p>
          <p class="lead">This is guaranteed to be the high point of your year, and the memories (and photos) will last a lifetime.</p>
          <p class="lead"><span style="style="font-size: larger;"><strong>Join us at Yosemite!</strong></span></p>
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
<a name="speakers"></a>
<div class="speakers">
  <div class="container">
<style type="text/css"> p.bio, span.twitter, span.blog { font-size: smaller; } </style> <h2 class="text-center">Be inspired.</h2> <p class="lead text-center">Joining us at Yosemite are 16 of the most respected leaders in the Apple community. </p> <p>&nbsp;</p> <div class="row-fluid"> <div class="span2"> <a href="#ex1" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/brent simmons.jpg" alt="Speaker image"></a> <h3 class="text-center">Brent Simmons</h3> <div id="ex1" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/brent simmons.jpg" alt="Speaker image"> <h3>Brent Simmons</h3> <h4><span><a href="http://www.omnigroup.com/">The Omni Group</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/brentsimmons" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@brentsimmons</a></span> <br /> <span class="blog"><a href="http://inessential.com/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;inessential.com</a></span></small></p> <hr> <p class="bio">Brent Simmons has been writing apps for Apple computers for over 30 years, since his first Apple II Plus in 1980. His professional apprenticeship was at UserLand Software where he worked on Frontier and on Manila, an early blog platform. Later he created apps such as NetNewsWire, TapLynx, Glassboard, and MarsEdit &#8212; and he currently writes <a href="http://vesperapp.co/">Vesper</a>. Brent lives in Seattle with his wife Sheila and his cat Papa, who&#8217;s named for both Ernest Hemingway and the great designated hitter Edgar Martinez.</p> </div> </div> <div class="span2"> <a href="#ex2" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/laura savino.jpg" alt="Speaker image"></a> <h3 class="text-center">Laura Savino</h3> <div id="ex2" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/laura savino.jpg" alt="Speaker image"> <h3>Laura Savino</h3> <h4><span><a href="https://www.khanacademy.org/">Khan Academy</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/savinola" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@savinola</a></span></small></p> <hr> <p class="bio">Laura is an iOS developer with a penchant for languages, travel, and education. She taught English in rural Korea and French in the environs of Microsoft before cutting her teeth as a mobile developer at &#220;bermind, making awesome apps for big-name clients. She&#8217;s now working to transform learning by building iOS apps at <a href="http://khanacademy.org/">Khan Academy</a>.</p> </div> </div> <div class="span2"> <a href="#ex3" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/Jonathan-Mann-2.png" alt="Speaker image"></a> <h3 class="text-center">Jonathan Mann</h3> <div id="ex3" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite2016/speakers/Jonathan-Mann-2.png" alt="Speaker image"> <h3>Jonathan Mann</h3> <h4><span><a href="http://jonathanmann.net/">jonathanmann.net</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/songadaymann" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@songadaymann</a></span><br /><span class="blog"><a href="http://jonathanmann.tumblr.com/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;jonathanmann.tumblr.com</a></span></small></p> <hr> <p class="bio">Jonathan Mann has been writing a song a day for 2,300 days and counting. One time, he made Steve Jobs dance. This other time Steve Wozniak&#8217;s wife hired him to write Woz a 60th birthday song.</p> </div> </div> <div class="span2"> <a href="#ex4" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/jean-macdonald.png" alt="Speaker image"></a> <h3 class="text-center">Jean MacDonald</h3> <div id="ex4" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/jean-macdonald.png" alt="Speaker image"> <h3>Jean MacDonald</h3> <h4><span><a href="http://appcamp4girls.com/">App Camp For Girls</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/macgenie" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@macgenie</a></span></small></p> <hr> <p class="bio">Jean MacDonald is the founder of <a href="http://appcamp4girls.com">App Camp For Girls</a>, a nonprofit program whose mission is to inspire girls to pursue app development as a career and to promote gender balance in the industry. She was a partner at Smile, where she managed marketing and PR for nearly a decade. She also volunteers at the Rock 'n' Roll Camp for Girls in Portland and plays guitar with her band <a href="https://itunes.apple.com/us/album/ignite-ep/id651316137">Ruby Calling</a>. She lives in Portland, Oregon, where she aspires to be the favorite aunt of her three nephews and one niece.</p> </div> </div> <div class="span2"> <a href="#ex5" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/Jim_Dalrymple.jpg" alt="Speaker image"></a> <h3 class="text-center">Jim Dalrymple</h3> <div id="ex5" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/Jim_Dalrymple.jpg" alt="Speaker image"> <h3>Jim Dalrymple</h3> <h4><span><a href="http://www.loopinsight.com/">The Loop</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/jdalrymple" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@jdalrymple</a></span> / <span class="blog"><a href="http://www.loopinsight.com" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;loopinsight.com</a></span></small></p> <hr> <p class="bio">Jim has been following Apple and its products for the last 17 years, first as one of the original members of MacCentral, then at <i>Macworld</i>. He held several positions at <i>Macworld</i> over the 10 years, including his final job as Editor at Large, before leaving in May 2009.</p> <p class="bio">Jim&#8217;s work has been in many publications including <i>Macworld</i>, <i>PC World</i>, <i>Computerworld</i>, <i>Macworld UK</i> and many others. He&#8217;s also appeared as an expert on several television stations including CNN, Fox, CBS and ABC.</p> <p class="bio">He continues to do radio show interviews, both Internet-based like Your Mac Life and MacNotables and traditional radio.</p> <p class="bio">Jim has been a guitar player for 20 years and records music on his Mac using GarageBand, Logic, Pro Tools, Cubase, Line 6, Native Instruments, IK Multimedia, ToonTrack, FXPansion and a host of other applications.</p> </div> </div> </div> <p>&nbsp;</p> <a name="speakersMore"></a> <div id="expanderContent" style="display:none;"> <div class="row-fluid"> <div class="span2"> <a href="#ex6" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/Serenity Caldwell.jpg" alt="Speaker image"></a> <h3 class="text-center">Serenity Caldwell</h3> <div id="ex6" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/Serenity Caldwell.jpg" alt="Speaker image"> <h3>Serenity Caldwell</h3> <h4><span><a href="http://www.imore.com/">iMore</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/settern" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@settern</a></span> / <span class="blog"><a href="http://manyhats.tumblr.com/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;manyhats.tumblr.com</a></span></small></p> <hr> <p class="bio">Serenity has been writing and talking about and tinkering with Apple products since she was old enough to double-click. In her spare time, she sketches, writes, acts, sings, and wears an assortment of hats.</p> </div> </div> <div class="span2"> <a href="#ex7" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/Duncan_Davidson.jpg" alt="Speaker image"></a> <h3 class="text-center">Duncan Davidson</h3> <div id="ex7" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/Duncan_Davidson.jpg" alt="Speaker image"> <h3>Duncan Davidson</h3> <h4><span><a href="http://www.6wunderkinder.com/">6Wunderkinder</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/duncan" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@duncan</a></span> / <span class="blog"><a href="https://jdd.io/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;jdd.io</a></span></small></p> <hr> <p class="bio">Duncan Davidson is an author, photographer, and developer, currently residing in Berlin, Germany. These days he spends most of his time as a software engineer at 6Wunderkinder, where he works on Wunderlist. </p> <p class="bio">As a photographer, Duncan regularly covers the TED conferences, and has done work for O&#8217;Reilly, Apple, Gigaom, and more. Previously, Duncan was a software engineer at Sun Microsystems, where he created Tomcat and Ant. Duncan has authored or co-authored books including <i>Learning Cocoa with Objective-C</i>, <i>Cocoa in a Nutshell</i>, and <i>Agile Web Development with Rails</i>.</p> </div> </div> <div class="span2"> <a href="#ex8" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/James Dempsey.jpg" alt="Speaker image"></a> <h3 class="text-center">James Dempsey</h3> <div id="ex8" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/James Dempsey.jpg" alt="Speaker image"> <h3>James Dempsey</h3> <h4><span><a href="http://tapas-software.net/">Tapas Software</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/jamesdempsey" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@jamesdempsey</a></span> <br /> <span class="blog"><a href="http://jamesdempsey.net/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;jamesdempsey.net</a></span></small></p> <hr> <p class="bio">James Dempsey is a fifteen-year Apple veteran gone indie. At Apple, he worked on iOS, Aperture, and OS X releases Leopard through Lion, including half a decade on the Cocoa frameworks team. Along the way he&#8217;s trained hundreds of developers on Apple technologies, including teaching Cocoa development at Stanford University and presenting at the Worldwide Developers Conference (WWDC) for over a decade. He founded <a href="http://tapas-software.net/">Tapas Software</a> to build apps for iOS and OS X, with an initial release now on the App Store. His recently released music single <a href="http://itunes.apple.com/us/album/liki-song-minawana-meika-laa/id533753255?ls=1">The Liki Song</a> is widely regarded as the finest Hawaiian song about the history of Cocoa memory management ever written.</p> </div> </div> <div class="span2"> <a href="#ex9" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/Andy Ihnatko.jpg" alt="Speaker image"></a> <h3 class="text-center">Andy Ihnatko</h3> <div id="ex9" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/Andy Ihnatko.jpg" alt="Speaker image"> <h3>Andy Ihnatko</h3> <h4><span><a href="http://www.suntimes.com/">Chicago Sun-Times</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/ihnatko" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@ihnatko</a></span> / <span class="blog"><a href="http://ihnatko.com/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;ihnatko.com</a></span></small></p> <hr> <p class="bio">Andy Ihnatko has been <i>The Chicago Sun-Times</i>&#8217; technology columnist for ten years and a columnist for <i>Macworld</i> and other Mac magazines for twenty. He is also a host of <i>MacBreak Weekly</i>, consistently rated among iTunes&#8217; top-ten most popular tech podcasts, and he frequently contributes tech segments to local and national news programs.</p> </div> </div> <div class="span2"> <a href="#ex10" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/Christa-Mrgan.png" alt="Speaker image"></a> <h3 class="text-center">Christa Mrgan</h3> <div id="ex10" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/Christa-Mrgan.png" alt="Speaker image"> <h3>Christa Mrgan</h3> <h4><span><a href="https://www.civilcomments.com">Civil Comments</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/antichrista" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@antichrista</a></span></small></p> <hr> <p class="bio">Christa Mrgan has been designing user interfaces since 2008. As co-founder of Civil Co., she&#8217;s designing toxic behavior out of online spaces and making internet comments worth reading again with <a href="https://www.civilcomments.com">Civil Comments</a>. She&#8217;s also proud to volunteer with <a href="http://appcamp4girls.com/">App Camp for Girls</a>, where she teaches teen girls about interface and icon design. She lives with her family in Portland, Oregon.</p> </div> </div> <p>&nbsp;</p> </div> <div class="row-fluid"> <div class="span2"> <a href="#ex11" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/Neven Mrgan.jpg" alt="Speaker image"></a> <h3 class="text-center">Neven Mrgan</h3> <div id="ex11" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/Neven Mrgan.jpg" alt="Speaker image"> <h3>Neven Mrgan</h3> <h4><span><a href="http://panic.com/">Panic Inc</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/mrgan" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@mrgan</a></span> / <span class="blog"><a href="http://mrgan.com/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;mrgan.com</a></span></small></p> <hr> <p class="bio">Neven Mrgan is a designer at Panic Inc <http://panic.com/>, makers of nice apps for Mac and iOS. After hours, he is also one half of <a href="http://bigbucketsoftware.com/">Big Bucket Software</a>, a game company you may know from their hit <a href="http://bigbucketsoftware.com/theincident/">The Incident</a>. He designs apps, websites, games, T-shirts, signage&#8212;anything that needs designing. Neven lives in Portland, where he spends the last little bits of his free time on cooking and comedy.</p> </div> </div> <div class="span2"> <a href="#ex12" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/jaimee newberry.png" alt="Speaker image"></a> <h3 class="text-center">Jaimee Newberry</h3> <div id="ex12" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/jaimee newberry.png" alt="Speaker image"> <h3>Jaimee Newberry</h3> <h4><span><a href="http://www.jaimeejaimee.com/">JAIMEEJAIMEE.com</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/jaimeejaimee" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@jaimeejaimee</a></span> / <span class="blog"><a href="http://www.jaimeejaimee.com/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;jaimeejaimee.com</a></span></small></p> <hr> <p class="bio">Jaimee speaks and writes on motivational and tactical topics she&#8217;s learned throughout 17 years as a web and mobile app designer, UX practitioner, manager, co-worker, business owner, partner, and employee counselor. She weaves-in experience and learnings from life as a mom, a woman in tech, a life-designer and as a human being.</p> <p class="bio">She is a UX and Design coach for Fortune 500 companies, agencies, and startups. She also coaches owners, managers, product and engineering teams in building confidence, communication, execution, balance and success.</p> <p class="bio">Jaimee is also the co-CEO of Dwelling Society (coming soon), co-founder of <a href="http://bests.com/">Bests.com</a>, co-host of the podcast <a href="http://unprofesh.com/">Unprofessional</a> (since <a href="http://unprofesh.com/blog/2014/1/7/74-a-series-of-digressions">ep. #74</a>), catalyst for <a href="https://twitter.com/wwdcgirls">@wwdcgirls</a>, and advisor for <a href="http://www.jonathanlivingstonseagull.com/">JonathanLivingstonSeagull.com</a>.</p> </div> </div> <div class="span2"> <a href="#ex13" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/Jason Snell.jpg" alt="Speaker image"></a> <h3 class="text-center">Jason Snell</h3> <div id="ex13" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/Jason Snell.jpg" alt="Speaker image"> <h3>Jason Snell</h3> <h4><span><a href="http://sixcolors.com/">Six Colors</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/jsnell" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@jsnell</a></span> / <span class="blog"><a href="http://snellworld.com/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;snellworld.com</a></span></small></p> <hr> <p class="bio">Jason Snell was editor in chief of <i>Macworld</i> for nearly a decade. He has covered OS X since the Public Beta, writes about Apple regularly, and also podcasts about technology and popular culture, most notably at <a href="http://5by5.tv/incomparable/">The Incomparable</a>.</p> </div> </div> <div class="span2"> <a href="#ex14" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/daniel%20steinberg.jpg" alt="Speaker image"></a> <h3 class="text-center">Daniel Steinberg</h3> <div id="ex14" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/daniel%20steinberg.jpg" alt="Speaker image"> <h3>Daniel Steinberg</h3> <h4><span><a href="http://dimsumthinking.com/">Dim Sum Thinking</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/dimsumthinking" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@dimsumthinking</a></span><br /><span class="blog"><a href="http://dimsumthinking.com/Blog/" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;dimsumthinking.com/Blog/</a></span></small></p> <hr> <p class="bio">Daniel is the author of the best selling books <a href="https://itunes.apple.com/us/book/a-swift-kickstart/id891801923?mt=11&uo=4&at=11l56E"><i>A Swift Kickstart</i></a> and <a href="https://itunes.apple.com/us/book/developing-ios-7-apps-for/id792572211?mt=11&uo=4&at=11l56E"><i>Developing iOS 7 Apps for iPad and iPhone</i></a> (the official companion book to the popular iTunes U series from Stanford University taught by Paul Hegarty).</p> <p class="bio">He has written apps for the iPhone and the iPad since the SDKs first appeared and has written programs for the Mac all the way back to System 7.</p> <p class="bio">Daniel presents iPhone, Cocoa, and Swift training and consults through his company <a href="http://www.dimsumthinking.com/">Dim Sum Thinking</a>. His books are available on the <a href="https://itunes.apple.com/us/artist/daniel-h-steinberg/id396896262?mt=11&uo=4&at=11l56E">iBookstore</a>. He is the host of the <a href="http://www.cocoaconf.com/podcast">CocoaConf Podcast</a>. When he&#8217;s not coding or talking about coding for the Mac, the iPhone, and the iPad he&#8217;s probably cooking or hanging out with his wife and daughter.</p> </div> </div> <div class="span2"> <a href="#ex15" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite/speakers/andrew%20stone.jpg" alt="Speaker image"></a> <h3 class="text-center">Andrew Stone</h3> <div id="ex15" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite/speakers/andrew%20stone.jpg" alt="Speaker image"> <h3>Andrew Stone</h3> <h4><span><a href="http://stone.com/">Stone Design</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/twittelator" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@twittelator</a></span> / <span class="blog"><a href="http://stone.com/blog/index.html" title="Visit this speaker&#8217;s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;stone.com/blog/</a></span></small></p> <hr> <p class="bio">Andrew Stone has been working with Objective C for 25 years and was the first independent NeXT Developer to ship an application for NeXTStep 0.9 in 1989. Founder of <a href="http://stone.com/">stone.com</a>, he wrote 4 major applications for the NeXT Computer, including DataPhile at the behest of Steve Jobs.</p> <p class="bio">As one of the few remaining NeXT developers when Apple purchased NeXT in 1996, he helped introduce Objective C to Apple developers at MacWorld 1997 in Boston. With over 35 titles for the Mac and iOS, his app Twittelator helped launch the Twitter Revolution with an advanced feature set which set the standard for Twitter clients.</p> <p class="bio">He lives on an urban solar farmstead in Albuquerque New Mexico with his family and is founder of Cocoa Conspiracy, a weekly group of iOS and Ruby developers that does grassroots economic development through personal networking.</p> </div> </div> <p>&nbsp;</p> </div> <div class="row-fluid"> <div class="span2"></div> <div class="span2"> <a href="#ex16" rel="modal:open" title="Learn more about this speaker"><img class="img-circle center" src="images/yosemite2016/speakers/tj-2.png" alt="Speaker image"></a> <h3 class="text-center">T.J. Usiyan</h3> <div id="ex16" class="bio" style="display:none;"> <img class="img-circle pull-right" src="images/yosemite2016/speakers/tj-2.png" alt="Speaker image"> <h3>T.J. Usiyan</h3> <h4><span><a href="https://www.bignerdranch.com/">Big Nerd Ranch</a></span></h4> <p><small><span class="twitter"><a href="https://twitter.com/griotspeak" title="Follow on Twitter"><i class="ion-social-twitter"></i>&nbsp;@griotspeak</a></span></small></p> <hr> <p class="bio">A writer, musician, and developer interested in crafting interesting and artful things. Developer of the universal app <a href="http://itunes.apple.com/ug/app/inner-ear/id405804340?mt=8">Inner Ear</a> and AU Additive Synthesizer <a href="https://vimeo.com/55624701">Partial</a>. TJ is working to create innovative and intuitive solutions to musical problems. He is a graduate of Eugene Lang College and Berklee College of Music.</p> </div> </div> <div class="span4"></div> </div> </div> <div class="row-fluid"> <div class="span4"> </div> <div class="span2"> <p>&nbsp;</p> <p><a href="#speakersMore" class="btn btn-flat btn-block btn-large" id="expanderHead"><span id="expanderSign">&#9662; See all</span> </a></p> </div> <div class="span4"> </div> </div>
  </div>
</div>
<a name="schedule"></a>
<div class="locations">
  <div class="container">
    <h2 class="text-center">A schedule with room to explore.</h2>
    <!--<p class="lead text-center">We won&#8217;t bring you out to Yosemite just to sit in a classroom all day. </p>-->
    <p>&nbsp;</p>
        <div class="row-fluid">
          <div class="span2">
            <h3>Monday<br>
            <small>March 14</small></h3>
            <div style="font-size:14px; line-height: 0.7em;">
              <p>4pm - Check-in<br />
              7-9pm Evening Sessions<br /></p>
            </div>
          </div>
          <div class="span2">
            <h3>Tuesday<br>
              <small>March 15</small></h3>
              <div style="font-size:14px; line-height: 0.7em;">
                <p>8-9am Breakfast<br />
                9-Noon Morning Sessions<br />
                12-1pm Lunch<br />
                1-6pm Hike / Explore<br />
                7-9pm Evening Sessions</p>
              </div>
          </div>
          <div class="span2"> <img class="img-circle center" src="/images/yosemite2016/22681.jpg" alt="Yosemite Valley"> </div>
          <div class="span2">
            <h3>Wednesday<br>
              <small>March 16</small></h3>
            <div style="font-size: 14px; line-height: 0.7em;">
              <p>8-9am Breakfast<br />
              9-Noon Morning Sessions<br />
              12-1pm Lunch<br />
              1-6pm Hike / Explore<br />
              7-9pm Evening Sessions</p>
            </div>
          </div>
          <div class="span2">
            <h3>Thursday<br>
              <small>March 17</small></h3>
            <div style="font-size: 14px; line-height: 0.7em;">
              <p>8-9am Breakfast<br />
              9-Noon Morning Sessions<br />
              12-1pm Lunch<br />
              1pm Group Photo</p>
            </div>
          </div>
        </div>
      </div>
</div>
<a name="register"></a>
<div class="sessions">
  <div class="container">
    <h2 class="text-center">Sorry&#8212;registration for this event has closed.</h2> <p class="text-center"><em>Psst...</em> not to worry. You can <g:link action="yosemite">register for next time</g:link>!</p></div>
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
  <div class="container"> <a class="brand" href="/"><img src="images/yosemite2016/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo" class="pull-left"></a>
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
</body>
</html>
