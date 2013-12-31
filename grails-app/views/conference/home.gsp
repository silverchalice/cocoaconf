<!DOCTYPE html>
<html lang="en">
<head>
<title>${conference?.description} &#8212; ${conference?.dates} / CocoaConf 2014: the conference for iPhone, iPad and Mac developers</title>
<meta name="layout" content="home" />
</head>
<body class="secondary ${conference?.city.toLowerCase()}">
<div class="container main-text">
  <h1>Austin</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  
  <!-- Main hero unit for a primary marketing message or call to action -->
  <div class="row-fluid">
    <div class="span7">
      <h1>Join us in ${conference?.cityNickname} <small>${conference?.dates}</small></h1>
      <p class="lead">Featuring three tracks and over twenty-five breakout and general sessions, CocoaConf Chicago has something for every iPhone, iPad, and Mac developer.</p>
    </div>
    <div class="span3">
    <h2><small>Early-bird Discounts Available</small></h2>
      <button class="btn btn-block btn-large btn-flat">Register for Austin <i class="ion-ios7-arrow-forward"></i></button>
    </div>
  </div>
  <hr>
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
    <h3>Austin Links</h3>
      <ul class="nav nav-list">
        <li class="about active"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>About</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
        <li class="sessions"><a href="#">Sessions</a></li>
        <li class="schedule"><a href="#">Schedule</a></li>
        <li class="venue"><a href="#">Venue</a></li>
        <li class="partners"><a href="#">Partners</a></li>
        <li class="register"><a href="#">Register</a></li>
      </ul>
    </div>
    <div class="span6">
  <p><img class="img-rounded" src="${resource(dir: 'images', file: 'img_austin_small_01.jpg')}" alt="Photo (cc) by ___ on Flickr"></p>
      <p class="lead">CocoaConf Austin kicks off April 4 and 5, preceded by three optional all-day workshops on the 6th. Exclusive highlights include our one-of-a-kind “We Made An App For That” panel and the CocoaConf Game Show.</p>
      <p>We’ll be bringing back some of the familiar faces you’ve come to know — Daniel Steinberg, Chris Adamson, Jonathan Penn, Josh Smith — and others whose work you well may recognize, including Justin Williams of Second Gear and Danny Greg from Github. </p>
      <p>As we did last time, we’ll be offering some full-day, pre-conference workshops, taught by masters in the industry. For those new to iOS (or to software development in general), Apple veteran James Dempsey will be heading up an all-day iOS tutorial. For the more seasoned developer, we’ll be having a 2D Game Development workshop taught by Josh Smith and Jonathan Penn, and another on AV Foundation taught by Chris Adamson. </p>
      <p>As always, attendance at CocoaConf is capped to ensure a focused and intense learning experience, and to maximize your opportunities to of meet awesome new people and hang out with the speakers. So don’t sit on the fence — register for CocoaConf Chicago today!</p>
      <p><a class="btn btn-flat btn-large" href="http://www.gurrydesign.com">Register Today <i class="ion-ios7-arrow-forward"></i></a></p>
    </div>
    <div class="span2">
      <h4>Austin Sponsors<br>
        &nbsp;</h4>
      <p><a href="#"><img src="${resource(dir: 'images', file: 'logo_wiley.jpg')}" alt="Wiley logo"></a></p>
      <hr>
      <a href="#"><img src="${resource(dir: 'images', file: 'logo_windows.jpg')}" alt="Windows Azure logo"></a>
      <hr>
      <p><a class="btn btn-flat-gray" href="#">Sponsor Opportunities</a></p>
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
                <li><a href="chicago.html">Chicago, IL</a></li>
                <li><a href="#">Washington D.C.</a></li>
                <li class="disabled"><a href="#">Austin, TX</a></li>
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
