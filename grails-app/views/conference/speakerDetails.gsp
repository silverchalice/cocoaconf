<%@ page import="com.cocoaconf.Speaker" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf 2014: The conference for iPhone, iPad and Mac developers</title>
<meta name="layout" content="home" />
</head>
<body class="individual-speaker">
<div class="container main-text">
  <h1><span>${conference.description} / Speakers / </span> ${speaker}</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  
  <!-- Main hero unit for a primary marketing message or call to action --> 
  <!--<div class="media"> <img src="${resource(dir: 'images', file: 'img_speaker_icon.png')}" alt="A person icon" class="pull-left media-object">
    <div class="media-body">
      <h1>Speaking in Chicago</h1>
    </div>
  </div>
  <hr>-->
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2">
    <h3>Chicago</h3>
      <ul class="nav nav-list">
        <li class="about"><a href="chicago.html">About</a></li>
        <li class="speakers active"><a href="chicago_speakers.html">Speakers</a></li>
        <li class="sessions"><a href="chicago_sessions.html">Sessions</a></li>
        <li class="schedule"><a href="chicago_schedule.html">Schedule</a></li>
        <li class="venue"><a href="#">Venue</a></li>
        <li class="partners"><a href="#">Partners</a></li>
        <li class="register"><a href="#">Register</a></li>
      </ul>
    </div>
    <div class="span8">
      <ul class="media-list">
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" src="${speaker.imagePath.startsWith('/') ? speaker.imagePath : '/' + speaker.imagePath}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h2 class="media-heading">${speaker}</h2>
            <p class="author-links"><i class="ion-ios7-location-outline"></i>&nbsp;<span class="location"> Speaking in <a href="chicago">${conference.city}, ${conference.state}</a></span> <span class="twitter"><i class="ion-social-twitter-outline"></i>&nbsp;<a href="https://twitter.com/${speaker.twitter}" title="Visit ${speaker.firstName} on Twitter" target="_blank"> @${speaker.twitter}</a></span> <g:if test="${speaker.blog}"><span class="website"><i class="ion-social-rss"></i>&nbsp;<a href="${speaker.blog}" title="Visit ${speaker.firstName}&#8217;s website" target="_blank">${speaker.blog?.minus('http://')}</a></span></g:if> <g:if test="${speaker.appnet}"><span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="http://app.net/${speaker.appnet}"> @${speaker.appnet}</a></span></g:if></p>
            
            <hr>
            <p class="lead">${speaker.bio}</p>
              <p>&nbsp;</p><div class="well">
              <h2><small>2014 CocoaConf Sessions</small></h2>
            <h3>AVFoundation Workshop</h3>
            <p>Details coming soon!</p>
            <hr>
            <h3>Another Workshop Title</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis tempor arcu, in tristique arcu facilisis vulputate. Proin interdum leo ut nibh cursus semper. Pellentesque nec placerat dui, quis volutpat mi. Suspendisse ipsum diam, molestie et orci at, pulvinar feugiat diam. Duis vitae nisi pharetra, fringilla ipsum at, interdum ante. Maecenas eget tortor id tellus hendrerit bibendum vel eget odio. Cras lobortis urna pretium rutrum porta.</p>
            <p>&nbsp;</p>
              <h2><small>Twitter Feed</small></h2>
<a class="twitter-timeline" href="https://twitter.com/${speaker.twitter}" data-widget-id="409836735829254144">Tweets by @${speaker.twitter}</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>


          </div>
        </li>
      </ul>
    </div>
    <!--<div class="span3">
      <h4>Register for <span>March 7–8, 2014</span></h4>
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
    </div>--> 
  </div>
  <div class="navbar navbar-inverse">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" href="#top"><i class="ion-ios7-arrow-thin-up"></i>&nbsp;Top </a>
        <!--<a class="brand" href="#"><img src="img/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>-->
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
  <div class="gradient"></div>
</div>
</body>
</html>
