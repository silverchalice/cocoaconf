<%@ page import="com.cocoaconf.Session" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Slides / ${conference?.city} / CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="home" />
</head>

<body class="secondary ${conference?.city.toLowerCase()} schedule">
<div class="container main-text">
  <h1><span>${conference?.city} / </span> Slides</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  
  <!-- Main hero unit for a primary marketing message or call to action -->
  <div class="row-fluid">
    <div class="span1"></div>
    <div class="span6">
      <div class="media"> <img src="${resource(dir: 'images', file: 'img_schedule_icon.png')}" alt="A clock icon" class="pull-left media-object">
        <div class="media-body">
          <h1>Slides from <br>
            ${conference?.description}</h1>
        </div>
      </div>
    </div>
  </div>
  <hr>
  <!--<img class="photostrip hidden-phone" src="img/img_photostrip_chicago_speaker.jpg" alt="Speakers at last year's CocoaConf">--> 
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2">
      <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params="${[tinyName: conference?.tinyName]}">Home</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params="${[tinyName: conference?.tinyName]}">Speakers</g:link></li>
        <li class="sessions"><g:link controller="conference" action="sessions" params="${[tinyName: conference?.tinyName]}">Sessions</g:link></li>
        <li class="schedule active"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Slides</g:link></li>
        <li class="venue"><g:link controller="conference" action="venue" params="${[tinyName: conference?.tinyName]}">Venue</g:link></li>
        <li class="partners"><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
        <li class="register"><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
      </ul>
    </div>
    <div class="span8">
        <g:each in="${slideMap}" var="speakerMap">
            <h2>${speakerMap.key}</h2><br>
            <g:each in="${speakerMap.value}" var="presentationMap">
                <strong>${presentationMap.key.title}</strong><br/>
                <g:each in="${presentationMap.value}" var="presentationFile">
                    <a href="${presentationFile?.link}">${presentationFile?.type}</a>&#160;&#160;&#160;
                </g:each>
                <p>&nbsp;</p>
            </g:each>
            <p>&nbsp;</p>
        </g:each> 
    </div>
  </div>
  <div class="navbar navbar-inverse">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" href="#top"><i class="ion-ios7-arrow-thin-up"></i>&nbsp;Top </a>
        <!--<a class="brand" href="#"><img src="${resource(dir: 'images', file: 'img_cocoaconf_logo.png')}" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>-->
        <div class="nav-collapse collapse">
          <ul class="nav">
            <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><cc:cityName id="${conference?.id}" /> &nbsp; <i class="ion-ios7-arrow-up"></i></a>
              <ul class="dropdown-menu">
                <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
              <li class="${conference?.id == 17 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'chicago-2014']">Chicago, IL &#8212; <strong>Sold Out!</strong></g:link></li>
              <li class="${conference?.id == 18 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'dc-2014']">Washington D.C. &#8212; <strong>Sold Out!</strong></g:link></li>
              <li class="${conference?.id == 20 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'austin-2014']">Austin, TX &#8212; <strong>Sold Out!</strong></g:link></li>
              <li class="${conference?.id == 19 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'sanjose-2014']">San Jose, CA &#8212; <strong>Sold Out!</strong></g:link></li>
              <li class="${conference?.id == 21 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'raleigh-2014']">Raleigh, NC</g:link></li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
            <li><g:link controller="speaker" action="speakers">Speakers</g:link></li>
            <!-- <li class="active"><a href="#sessions">Sessions</a></li> -->
            <!-- <li><a href="#contact">Venues</a></li> -->
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
