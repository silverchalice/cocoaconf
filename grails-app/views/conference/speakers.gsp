<%@ page import="com.cocoaconf.Speaker" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Speakers / ${conference?.city} / CocoaConf 2014: The developer conference for those who think different.</title>
<meta name="layout" content="home" />
</head>
<body class="secondary ${conference?.city.toLowerCase()} speakers">
<div class="container main-text">
  <h1><span>${conference?.city} / </span> Speakers</h1>
</div>
<div class="content container">
  <div class="gradient"></div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">${conference?.city} Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
                <li class="active"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
                <li><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
                <li><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
                <li><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
                <li><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
                <li><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
            </ul>
        </li>
    </ul>


    <!-- Main hero unit for a primary marketing message or call to action -->
  <div class="row-fluid">
    <div class="span1"> </div>
    <div class="span8">
      <div class="media"> <img src="${resource(dir: 'images', file: 'img_speaker_icon.png')}" alt="A person icon" class="pull-left media-object">
        <div class="media-body">
          <h1>CocoaConf speakers include trainers, authors, and professional iOS and OS X developers.</h1>
        </div>
      </div>
    </div>
    <div class="span1"> </div>
  </div>
  <img class="photostrip hidden-phone hidden-tablet" src="${resource(dir: 'images', file: 'img_photostrip_chicago_speaker.jpg')}" alt="Speakers at last year's CocoaConf">
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
      <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
        <li class="speakers active"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
        <li class="sessions"><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
        <li class="schedule"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
        <li class="venue"><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
        <li class="partners"><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
        <li class="register"><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
      </ul>
    </div>
    <div class="span6">
      <ul class="media-list">
        <g:if test="${speakerInstanceList?.size() > 0}">
          <g:each in="${speakerInstanceList}" var="speaker" index="i">
          <li class="media"> <g:link controller="conference" action="speakerDetails" id="${speaker?.id}" params="${[tinyName: conference?.tinyName]}" class="pull-left"> <img class="media-object img-circle" width="170" src="${request.contextPath}/${speaker?.imagePath}" alt="Speaker photo"> </g:link>
            <div class="media-body">
              <h3 class="media-heading">${speaker} <!-- <span>/ Author</span>--></h3>
              <p><cc:truncate value="${speaker?.bio}" size="250" /> <br /><g:link controller="conference" action="speakerDetails" id="${speaker?.id}" params="${[tinyName: conference?.tinyName]}">Read more&nbsp;<i class="ion-ios7-arrow-forward"></i></g:link></p>
              <p class="author-links"><g:if test="${speaker?.twitter}"><span class="twitter"><a href="https://twitter.com/${speaker?.twitter}" title="Visit ${speaker?.firstName} on Twitter" target="_blank"><i class="ion-social-twitter-outline"></i>&nbsp;@${speaker?.twitter}</a></span></g:if> <g:if test="${speaker?.website}"><span class="website"><a href="${speaker?.website}" title="Visit ${speaker?.firstName}'s website" target="_blank"><i class="ion-ios7-world-outline"></i>&nbsp;${speaker?.website?.startsWith('http://') ? speaker?.website.minus('http://') : speaker?.website}</a></span></g:if> <g:if test="${speaker?.blog}"><span class="blog"><a href="${speaker?.blog}" title="Visit ${speaker?.firstName}'s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;${speaker?.blog?.startsWith('http://') ? speaker?.blog.minus('http://') : speaker?.blog}</a></span></g:if> <g:if test="${speaker?.appnet}"><span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="http://http://app.net/">${speaker?.appnet}</a></span></g:if> </p>
            </div>
          </li>
          <g:if test="{i != speakerInstanceList.size() - 1}">
            <hr>
          </g:if>
          </g:each>
        </g:if>
        <g:else>
          <p class="lead">We are still confirming speakers for this event. Please check back soon!</p>
        </g:else>
      </ul>
    </div>
    <div class="span2">
      <h4>${conference?.dates}</h4>
      <g:link controller="conference" action="register" params='["tinyName": "${conference?.tinyName}"]' class="button"><button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button></g:link>
      <g:if test="${conference?.venue}">
        <hr>
        <h4>${conference?.city} Venue</h4>
        <img src="${conference?.venue?.imagePath?.startsWith('/') ? conference?.venue?.imagePath : '/' + conference?.venue?.imagePath}" alt="Venue photo" class="img-rounded">
        <h5>${conference?.venue}</h5>
        <ul>
          <li>${conference?.venue?.address}<br>
            ${conference?.venue?.city}, ${conference?.venue?.state}<br>
            ${conference?.venue?.zip}</li>
          <li>Phone: ${conference?.venue?.phone}</li>
          <li>Website: <a href="${conference?.venue?.website?.startsWith('http://') ? conference?.venue?.website : 'http://' + conference?.venue?.website}" title="Visit their website"><cc:truncate value="${conference?.venue?.website?.startsWith('http://') ? conference?.venue?.website?.minus('http://') : conference?.venue?.website}" size="20" /></a></li>
        </ul>
      </g:if>
      <hr>
      <h4>${conference?.city} Sponsors<br>
        &nbsp;</h4>
      <g:each in="${conference?.getSponsorPartners()}" var="partner">
        <p><a href="${partner?.url}"><img width="200" src="${resource(dir: 'images', file: partner?.logoFile)}" alt="${partner?.name} logo"></a></p>
        <hr>
      </g:each>
      <p><g:link controller="home" action="prospectus" class="btn btn-flat-gray"><i class="ion-document-text"></i>&nbsp; Sponsor Opportunities</g:link></p>
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
                <li><g:link controller="conference" action="home" params="['tinyName': 'raleigh-2014']">Raleigh, NC &#8212; <strong>Sold Out!</strong></g:link></li>
                <li class="${conference?.id == 22 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'columbus-2014']">Columbus, OH</g:link></li>
                <li class="${conference?.id == 23 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'lasvegas-2014']">Las Vegas, NV</g:link></li>
                <li class="${conference?.id == 24 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'seattle-2014']">Seattle, WA</g:link></li>
                <li class="${conference?.id == 25 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'boston-2014']">Boston, MA</g:link></li>
                <li class="${conference?.id == 26 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'atlanta-2014']">Atlanta, GA</g:link></li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
            <li><g:link controller="speaker" action="speakers">Speakers</g:link></li>
            <!-- <li><a href="#sessions">Sessions</a></li> -->
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
