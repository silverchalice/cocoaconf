<%@ page import="com.cocoaconf.Session" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sessions / ${conference?.city} / CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="home" />
</head>

<body class="secondary ${conference?.city.toLowerCase()} sessions">
<div class="container main-text">
  <h1><span>${conference?.city} / </span> Register</h1>
</div>
<div class="content container">
  <div class="gradient"></div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">${conference?.city} Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
                <li><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
                <li><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
                <li><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
                <li><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
                <li><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
                <li class="active"><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
            </ul>
        </li>
    </ul>

  <div class="row-fluid">
    <div class="span1"></div>
    <div class="span6">
      <div class="media"> <img src="${resource(dir: 'images', file: 'img_register_icon.png')}" alt="A registration icon" class="pull-left media-object">
        <div class="media-body">
          <h1>Register for<br>
            ${conference?.description}</h1>
        </div>
      </div>
    </div>

  </div>
  <img class="photostrip hidden-phone" src="${resource(dir: 'images', file: 'img_photostrip_chicago_speaker.jpg')}" alt="Speakers at last year's CocoaConf"> 
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2  hidden-phone hidden-tablet">
      <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
        <li class="sessions"><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
        <li class="schedule"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
        <li class="venue"><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
        <li class="partners"><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
        <li class="register active"><g:link controller="conference" action="register" params='["tinyName": "${conference?.tinyName}"]'>Register</g:link></li>
      </ul>
    </div>
    <div class="span8">
      <h3
      <h2 class="media-heading">What you get</h2>
      ${conference?.registrationBlurb}
      <br /> <br />
      <p><strong>Group discounts are also available.</strong>  Contact us at <a href="mailto:info@cocoaconf.com">info@cocoaconf.com</a> for details.</p>
      <br />
      ${conference?.eventBriteBlurb}
    </div>
    <!--<div class="span2">
      <h4>Register for <span>March 7–8, 2014</span></h4>
      <button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button>
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
