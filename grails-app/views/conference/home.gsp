<!DOCTYPE html>
<html lang="en">
<head>
<title>${conference?.description} &#8212; ${conference?.dates} / CocoaConf 2014: The developer conference for those who think different.</title>
<meta name="layout" content="home" />
</head>
<body class="secondary ${conference?.city?.toLowerCase()?.replaceAll("\\s", "")}">
<div class="container main-text">
  <h1>${conference?.description}</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  
  <!-- Main hero unit for a primary marketing message or call to action -->
  <div class="row-fluid">
    <div class="span7">
      <h1>Join us in ${conference?.cityNickname} <small>${conference?.dates}</small></h1>
      <p class="lead">${conference.intro}</p>
    </div>
    <div class="span3">
    <h2><small>Early Bird Discounts Available!</small></h2>
      <g:link controller="conference" action="register" params='["tinyName": "${conference?.tinyName}"]' class="button"><button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button></g:link>
    </div>
  </div>
  <hr>
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
    <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about active"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
        <li class="sessions"><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
        <li class="schedule"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
        <li class="venue"><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
        <li class="partners"><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
        <li class="register"><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
      </ul>
    </div>
    <div class="span6">
  <p><cc:conferenceImage id="${conference.id}" /></p>
      <p class="lead">${conference?.blurb}</p>
      <p><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}" class="btn btn-flat btn-large">Register Today <i class="ion-ios7-arrow-forward"></i></g:link></p>
    </div>
    <div class="span2">
      <h4>${conference.city} Sponsors<br>
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
              <li class="${conference?.id == 17 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'chicago-2014']">Chicago, IL</g:link></li>
              <li class="${conference?.id == 18 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'dc-2014']">Washington D.C.</g:link></li>
              <li class="${conference?.id == 20 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'austin-2014']">Austin, TX</g:link></li>
              <li class="${conference?.id == 19 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'sanjose-2014']">San Jose, CA</g:link></li>
              <li class="${conference?.id == 21 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'raleigh-2014']">Raleigh, NC</g:link></li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
            <li><a href="#">Speakers</a></li>
            <!-- <li><a href="#sessions">Sessions</a></li> -->
            <!-- <li><a href="#contact">Venues</a></li> -->
            <li><a href="#contact">Partners</a></li>
            <li><a href="#contact">Blog</a></li>
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
