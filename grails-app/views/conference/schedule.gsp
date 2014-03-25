<%@ page import="com.cocoaconf.Session" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Schedule / ${conference?.city} / CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="home" />
<meta name="division" content="schedule" />
</head>

<body class="secondary ${conference?.city.toLowerCase()} schedule">
<div class="container main-text">
  <h1><span>${conference?.city} / </span> Schedule</h1>
</div>
<div class="content container">
  <div class="gradient"></div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">${conference?.city} Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>Home</g:link></li>
                <li><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
                <li><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
                <li class="active"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
                <li><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
                <li><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
                <li><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
            </ul>
        </li>
    </ul>

  <!-- Main hero unit for a primary marketing message or call to action -->
  <div class="row-fluid">
    <div class="span1"></div>
    <div class="span6">
      <div class="media"> <img src="${resource(dir: 'images', file: 'img_schedule_icon.png')}" alt="A clock icon" class="pull-left media-object">
        <div class="media-body">
          <h1>Schedule for <br>
            ${conference?.description}</h1>
        </div>
      </div>
    </div>
    <div class="span3">
      <h2 style="text-align: center;"><small><cc:weeksUntilSalesEnd id="${conference?.id}" /></small></h2>
      <g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}" class="button"><button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button></g:link>
    </div>
  </div>
  <hr>
  <!--<img class="photostrip hidden-phone" src="img/img_photostrip_chicago_speaker.jpg" alt="Speakers at last year's CocoaConf">--> 
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
      <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params="${[tinyName: conference?.tinyName]}">Home</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params="${[tinyName: conference?.tinyName]}">Speakers</g:link></li>
        <li class="sessions"><g:link controller="conference" action="sessions" params="${[tinyName: conference?.tinyName]}">Sessions</g:link></li>
        <li class="schedule active"><g:link controller="conference" action="schedule" params="${[tinyName: conference?.tinyName]}">Schedule</g:link></li>
        <li class="venue"><g:link controller="conference" action="venue" params="${[tinyName: conference?.tinyName]}">Venue</g:link></li>
        <li class="partners"><g:link controller="conference" action="partners" params="${[tinyName: conference?.tinyName]}">Partners</g:link></li>
        <li class="register"><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}">Register</g:link></li>
      </ul>
    </div>
    <div class="span8">
      <!-- <button class="btn-flat-gray btn-large pull-right"><i class="ion-ios7-calendar-outline"></i>&nbsp;&nbsp;Save to iCal</button> -->
      <g:if test="${conference?.scheduleReady}"> 
        <g:each in="${schedule}" var="dayMap">
            <h3>${conference.days[dayMap.day - 1]}</h3>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="This table summarizes the sessions and events at ${conference?.description}" class="table table-hover table-striped">
              <th scope="row">Time</th>
              <th scope="row" colspan="4">Event / Sessions</th>
              <tr>
              </tr>
              <g:each in="${dayMap.slots}" var="slot">
                <g:set var="sessions" value="${slot.value}" />
                <tr>
                  <th style="width: 0.5%" scope="row">${sessions[0]?.start}-${sessions[0]?.end}</th>
                  <g:each in="${sessions.sort{it.track}}" var="sess">
                    <g:if test="${sessions.size() == 1}">
                      <g:if test="${sess?.type != 'break'}">
                        <td colspan="4">
                          <g:link controller="conference" action="sessionDetails" params="${[tinyName: conference?.tinyName, slug: sess?.presentation?.slug]}">
                            ${sess?.presentation?.title}
                          </g:link><br>
                          <g:link controller="conference" action="speakerDetails" id="${sess?.presentation?.speaker?.id}" params="${[tinyName: conference?.tinyName]}">
                            ${sess?.presentation?.speaker} 
                          </g:link>
                        </td>
                      </g:if>
                      <g:else>
                        <td colspan="4">
                          ${sess?.presentation?.title}
                        </td>
                    </g:else>
                    </g:if>
                    <g:else>
                      <td><g:link controller="conference" action="sessionDetails" params="${[tinyName: conference?.tinyName, slug: sess?.presentation?.slug]}">
                        ${sess?.presentation?.title}
                        </g:link><br>
                        <g:link controller="conference" action="speakerDetails" id="${sess?.presentation?.speaker?.id}" params="${[tinyName: conference?.tinyName]}">${sess?.presentation?.speaker}</g:link></td>
                      </td>
                    </g:else>
                  </g:each>
                </tr>
              </g:each>
            </table>
        </g:each>
      </g:if>
      <g:else>
        <p class="lead">We are still working on the schedule for this event. Please check back soon!</p>
      </g:else>
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
