<%@ page import="com.cocoaconf.Speaker" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="home" />
<g:set var="speaker" value="${presentation?.speaker}" />
</head>
<body class="individual-speaker">
<div class="container main-text">
  <h1><span>${conference?.city} / Sessions / </span> ${speaker}</h1>
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
    <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params="${[tinyName: conference?.tinyName]}">Home</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params="${[tinyName: conference?.tinyName]}">Speakers</g:link></li>
        <li class="sessions active"><g:link controller="conference" action="sessions" params="${[tinyName: conference?.tinyName]}">Sessions</g:link></li>
        <li class="schedule"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
        <li class="venue"><g:link controller="conference" action="venue" params="${[tinyName: conference?.tinyName]}">Venue</g:link></li>
        <li class="partners"><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
        <li class="register"><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
      </ul>
    </div>
    <div class="span8">
      <ul class="media-list">
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" width="170" src="${speaker.imagePath.startsWith('/') ? speaker.imagePath : '/' + speaker.imagePath}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h2 class="media-heading">${presentation?.title}</h2>
            <hr>
            <p class="lead">${presentation?.pAbstract}</p>
              <p>&nbsp;</p><div class="well">
              <h2><small>${speaker}</small></h2>
                <p class="author-links"><span class="twitter"><i class="ion-social-twitter-outline"></i>&nbsp;<a href="https://twitter.com/${speaker.twitter}" title="Visit ${speaker.firstName} on Twitter" target="_blank"> @${speaker.twitter}</a></span> <g:if test="${speaker.blog}"><span class="website"><i class="ion-social-rss"></i>&nbsp;<a href="${speaker.blog}" title="Visit ${speaker.firstName}&#8217;s website" target="_blank">${speaker.blog?.minus('http://')}</a></span></g:if> <g:if test="${speaker.appnet}"><span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="http://app.net/${speaker.appnet}"> @${speaker.appnet}</a></span></g:if> <span><i class="ion-ios7-person-outline"></i>&nbsp;<g:link controller="speaker" action="viewDetails" id="${speaker?.id}">View Details</g:link></span></p>
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
            <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><cc:cityName id="${conference?.id}" /> &nbsp; <i class="ion-ios7-arrow-up"></i></a>
              <ul class="dropdown-menu">
                <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
                <li class="${conference?.id == 17 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'chicago-2014']">Chicago, IL</g:link></li>
                <li class="${conference?.id == 18 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'dc-2014']">Washington D.C.</g:link></li>
                <li class="${conference?.id == 20 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'austin-2014']">Austin, TX</g:link></li>
                <li class="${conference?.id == 19 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'sanjose-2014']">San Jose, CA</g:link></li>
                <li class="${conference?.id == 21 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'raleigh-2014']">Raleigh, NC</g:link></li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
            <li><g:link controller="speaker" action="speakers">Speakers</g:link></li>
            <!-- <li><a href="#sessions">Sessions</a></li>
            <li><a href="#contact">Venues</a></li> -->
            <li><g:link controller="home" action="partners">Partners</g:link></li>
            <li><g:link controller="post" action="list">Blog</g:link></li>
            <!-- <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li> -->
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
