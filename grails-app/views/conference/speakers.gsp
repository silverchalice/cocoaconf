<%@ page import="com.cocoaconf.Speaker" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Speakers / Chicago / CocoaConf 2014: the conference for iPhone, iPad and Mac developers</title>
<meta name="layout" content="home" />
</head>
<body class="secondary ${conference?.city.toLowerCase()} speakers">
<div class="container main-text">
  <h1><span>Chicago / </span> Speakers</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  
  <!-- Main hero unit for a primary marketing message or call to action -->
  <div class="row-fluid">
    <div class="span1"> </div>
    <div class="span8">
      <div class="media"> <img src="${resource(dir: 'images', file: 'img_speaker_icon.png')}" alt="A person icon" class="pull-left media-object">
        <div class="media-body">
          <h1>Our speakers include trainers, authors, and professional iOS and OS X developers.</h1>
        </div>
      </div>
    </div>
    <div class="span1"> </div>
  </div>
  <img class="photostrip hidden-phone" src="${resource(dir: 'images', file: 'img_photostrip_chicago_speaker.jpg')}" alt="Speakers at last year's CocoaConf"> 
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
      <h3>Chicago</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>About</g:link></li>
        <li class="speakers active"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
        <li class="sessions"><a href="chicago_sessions.html">Sessions</a></li>
        <li class="schedule"><a href="chicago_schedule.html">Schedule</a></li>
        <li class="venue"><a href="#">Venue</a></li>
        <li class="partners"><a href="#">Partners</a></li>
        <li class="register"><a href="#">Register</a></li>
      </ul>
    </div>
    <div class="span6">
      <ul class="media-list">
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" src="${resource(dir: 'images', file: 'photo_adamson_chris.jpg')}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h3 class="media-heading">Chris Adamson <span>/ Author</span></h3>
            <p>Chris Adamson is an independent writer, editor, and developer, living in Grand Rapids, Michigan. Along with developing numerous App Store apps for clients, he is the co-author of iPhone SDK Development... <a href="adamson_chris.html">Read more&nbsp;<i class="ion-ios7-arrow-forward"></i></a></p>
            <p class="author-links"><span class="twitter"><a href="https://twitter.com/invalidname" title="Visit Chris on Twitter" target="_blank"><i class="ion-social-twitter-outline"></i>&nbsp;@invalidname</a></span> <span class="website"><a href="subfurther.com/blog" title="Visit Chris's website" target="_blank"><i class="ion-social-rss"></i>&nbsp;subfurther.com/blog</a></span><span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="#">App.Net username</a></span> </p>
          </div>
        </li>
        <hr>
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" src="${resource(dir: 'images', file: 'photo_williams_justin.jpg')}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h3 class="media-heading">Justin Williams <span>/ Chief at Second Gear</span></h3>
            <p>the crew chief of Second Gear, the creator of such fine Mac and iOS applications as Elements and Committed. I am a graduate of Purdue University with a degree in Computer and Information Technology. I am currently living in Denver... <a href="#">Read more <i class="ion-ios7-arrow-forward"></i></a></p>
            <p class="author-links"><span class="twitter"><a href="https://twitter.com/#" title="Visit this speaker on Twitter" target="_blank"><i class="ion-social-twitter-outline"></i>&nbsp;@twitter</a></span> <span class="website"><a href="#" title="Visit speaker's website" target="_blank"><i class="ion-social-rss"></i>&nbsp;www.website.com</a></span><span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="#">App.Net username</a></span></p>
          </div>
        </li>
        <hr>
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" src="${resource(dir: 'images', file: 'photo_speaker.jpg')}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h3 class="media-heading">Speaker Name <span>/ Speaker Title</span></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae aliquam risus. Sed cursus feugiat sapien, ut dignissim magna fermentum vitae. Nunc nisi purus, euismod eget quam eu, ultricies tempor quam. Nullam accumsan tellus et... <a href="#">Read more <i class="ion-ios7-arrow-forward"></i></a></p>
            <p class="author-links"><span class="twitter"><a href="https://twitter.com/#" title="Visit this speaker on Twitter" target="_blank"><i class="ion-social-twitter-outline"></i>&nbsp;@twitter</a></span> <span class="website"><a href="#" title="Visit speaker's website" target="_blank"><i class="ion-social-rss"></i>&nbsp;www.speakersblog.com</a></span><span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="#">App.Net username</a></span></p>
          </div>
        </li>
      </ul>
    </div>
    <div class="span2">
      <h4>March 7–8, 2014</h4>
      <button class="btn btn-block btn-large btn-flat">Register for Chicago <i class="ion-ios7-arrow-forward"></i></button>
      <hr>
      <h4>Chicago Venue</h4>
      <img src="${resource(dir: 'images', file: 'img_chicago_venue.jpg')}" alt="Image of the Holiday Inn" class="img-rounded">
      <h5>Holiday Inn Chicago-Elk Grove</h5>
      <ul>
        <li>1000 Busse Road<br>
          Elk Grove Village, IL<br>
          60007</li>
        <li>Phone: 0871-942-9139</li>
        <li>Website: <a href="www.ihg.com/holidayinn" title="Visit their website">www.ihg.com/holidayinn</a></li>
      </ul>
      <hr>
      <h4>Chicago Sponsors<br>
        &nbsp;</h4>
      <p><a href="#"><img src="${resource(dir: 'images', file: 'logo_wiley.jpg')}" alt="Wiley logo"></a></p>
      <hr>
      <a href="#"><img src="${resource(dir: 'images', file: 'logo_windows.jpg')}" alt="Windows Azure logo"></a>
      <hr>
      <p><a class="btn btn-flat-gray" href="#">Sponsorship Opportunities</a></p>
    </div>
  </div>
  <div class="navbar navbar-inverse">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" href="#top"><i class="ion-ios7-arrow-thin-up"></i>&nbsp;Top </a>
        <!--<a class="brand" href="#"><img src="${resource(dir: 'images', file: 'img_cocoaconf_logo.png')}" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>-->
        <div class="nav-collapse collapse">
          <ul class="nav">
            <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Chicago, IL &nbsp; <i class="ion-ios7-arrow-up"></i></a>
              <ul class="dropdown-menu">
                <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
                <li class="disabled"><a href="chicago.html">Chicago, IL</a></li>
                <li><a href="#">Washington D.C.</a></li>
                <li><a href="#">Austin, TX</a></li>
                <li><a href="#">San Jose, CA</a></li>
                <li><a href="#">Raleigh, NC</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
            <li class="active"><a href="#">Speakers</a></li>
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
  <div class="gradient"></div>
</div>
    </body>
</html>
