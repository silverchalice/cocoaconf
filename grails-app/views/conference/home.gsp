<%@ page import="com.cocoaconf.Conference" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>${conference?.description} &#8212; ${conference?.dates} / CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="home" />

    <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

    <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>

    <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'js', file:'script.js')}" type="text/javascript"></script>

</head>
<body class="secondary ${conference?.city?.toLowerCase()?.replaceAll("\\s", "")}">
<div class="container main-text">
  <h1>${conference?.description}</h1>
</div>
<div class="content container">
  <div class="gradient"></div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">${conference?.city} Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li class="active"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
                <li><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
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
    <div class="span7">
      <h1>${conference?.tagline} <small>${conference?.dates}</small></h1>
      <p class="lead">${conference.intro}</p>
    </div>
    <div class="span3">
      ${conference?.buttonText}
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

        <g:if test="${conference?.status == Conference.ACTIVE}">
            <g:render template="active" model="[conference: conference]" />
        </g:if>
        <g:if test="${conference?.status == Conference.COMPLETED}">
            <g:render template="roundup" model="[conference: conference]" />
        </g:if>
    </div>
    <g:if test="${conference?.featuredSpeakers}">
      ${conference?.featuredSpeakers}
    </g:if>
    <div class="span2 pull-right">
      <h4>${conference.city} Sponsors<br>
        &nbsp;</h4>
      <g:if test="${conference?.sponsorPartners?.size() > 0}">
        <g:each in="${conference?.getSponsorPartners()}" var="partner">
          <p><a href="${partner?.url}"><img width="200" src="${resource(dir: 'images', file: partner?.logoFile)}" alt="${partner?.name} logo"></a></p>
          <hr>
        </g:each>
      </g:if>
      <g:else>
        <img src="${resource(dir: 'images', file: 'beaker.gif')}" alt="Status" />
        <hr>
      </g:else>
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
              <li class="${conference?.id == 29 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'portland-2015']">Portland, OR</g:link></li>
              <li class="${conference?.id == 30 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'austin-2015']">Austin, TX</g:link></li>
              <li class="${conference?.id == 31 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'columbus-2015']">Columbus, OH</g:link></li>
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
