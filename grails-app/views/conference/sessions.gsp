<%@ page import="com.cocoaconf.Session" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sessions / ${conference?.city} / CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="home" />
</head>

<body class="secondary ${conference?.city.toLowerCase()} sessions">
<div class="container main-text">
  <h1><span>${conference?.city} / </span> Sessions</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  <div class="row-fluid">
    <div class="span1"></div>
    <div class="span6">
      <div class="media"> <img src="${resource(dir: 'images', file: 'img_session_icon.png')}" alt="A speech bubble icon" class="pull-left media-object">
        <div class="media-body">
          <h1>Session List for<br>
            ${conference?.description}</h1>
        </div>
      </div>
    </div>
    <div class="span3">
      <h2 style="text-align: center;"><small><cc:weeksUntilSalesEnd id="${conference?.id}" /></small></h2>
      <g:link controller="conference" action="register" params='["tinyName": "${conference?.tinyName}"]' class="button"><button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button></g:link>
    </div>
  </div>
  <img class="photostrip hidden-phone" src="${resource(dir: 'images', file: 'img_photostrip_chicago_speaker.jpg')}" alt="Speakers at last year's CocoaConf"> 
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2">
      <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
        <li class="sessions active"><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
        <li class="schedule"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
        <li class="venue"><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
        <li class="partners"><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
        <li class="register"><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
      </ul>
    </div>
    <div class="span8">
      <ul class="media-list">
        <g:if test="${sessions?.size()> 0}">
          <g:each in="${sessions}" var="session" index="i">
            <g:set var="speaker" value="${session?.presentation?.speaker}" />
            <li class="media"> <g:link class="pull-left" controller="conference" action="speakerDetails" id="${speaker?.id}" params="${[tinyName: conference?.tinyName]}"> <img class="media-object img-circle" width="170" src="${speaker.imagePath.startsWith('/') ? speaker.imagePath : '/' + speaker.imagePath}" alt="Speaker photo"> </g:link>
              <div class="media-body">
                <h2 class="media-heading"><g:link controller="conference" action="sessionDetails" params="${['tinyName': conference?.tinyName, 'slug': session?.presentation?.slug]}" class="muted">${session?.presentation?.title}</g:link><small> / <g:link controller="conference" action="speakerDetails" id="${speaker?.id}" params="${[tinyName: conference?.tinyName]}">${speaker?.firstName}&nbsp;${speaker?.lastName}</g:link></small></h2>
                <p>${session?.presentation?.pAbstract}</p>
              </div>
            </li>
            <hr>
          </g:each>
        </g:if>
        <g:else>
          <p class="lead">We are still lining up sessions for this event. Please check back soon!</p>
        </g:else>
      </ul>
    </div>
    <!--<div class="span2">
      <h4>Register for <span>March 7–8, 2014</span></h4>
      <button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button>
      <hr>
      <h4>${conference?.city} Sponsors<br>
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
        <!--<a class="brand" href="#"><img src="${resource(dir: 'images', file: 'img_cocoaconf_logo.png')}" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>-->
        <div class="nav-collapse collapse">
          <ul class="nav">
            <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><cc:cityName id="${conference?.id}" /> &nbsp; <i class="ion-ios7-arrow-up"></i></a>
              <ul class="dropdown-menu">
                <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
                <li class="${conference?.id == 17 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'chicago-2014']">Chicago, IL &#8212; <strong>Sold Out</strong></g:link></li>
                <li class="${conference?.id == 18 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'dc-2014']">Washington D.C.</g:link></li>
                <li class="${conference?.id == 20 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'austin-2014']">Austin, TX &#8212; <strong>Sold Out</strong></g:link></li>
                <li class="${conference?.id == 19 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'sanjose-2014']">San Jose, CA</g:link></li>
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
