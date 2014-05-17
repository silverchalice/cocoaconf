<%@ page import="com.cocoaconf.Episode" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf Podcast</title>
<meta name="layout" content="home" />
<meta name="division" content="schedule" />
</head>

<body class="secondary boston schedule">
<!--
<div class="container main-text">
  <img src="${resource(dir:'images', file:'podcast-logo.jpg')}" />
</div>
-->

<div class="content container">
  <div class="gradient"></div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Podcast Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li><a href="http://twitter.com/cocoaconfcast">Twitter</a></li>
            </ul>
        </li>
    </ul>

  <!-- Main hero unit for a primary marketing message or call to action -->
  <div class="row-fluid">
    <div class="span1"></div>
    <div class="span6">
      <div class="media"> 
          <img style="display:block; margin:auto;" src="${resource(dir:'images', file:'podcast-logo.jpg')}" />
      </div>
    </div>
    <div class="span3">
  </div>  
  
  <!--  This needs to be fixed by someone who understands CSS, like Zak. :-) -->
  <br/><br/><br/><br/>

  <hr>
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
      <h3>Podcast Links</h3>
      <ul class="nav nav-list">
        <li <a href="http://twitter.com/cocoaconfcast"><i class="ion-social-twitter-outline"></i>Twitter</a></lis>
        <li <a href="http://twitter.com/cocoaconfcast"><i class="ion-social-twitter-outline"></i>Twitter</a></lis>
        <li <a href="http://twitter.com/cocoaconfcast"><i class="ion-social-twitter-outline"></i>Twitter</a></lis>
        <li <a href="http://twitter.com/cocoaconfcast"><i class="ion-social-twitter-outline"></i>Twitter</a></lis>
        <li <a href="http://twitter.com/cocoaconfcast"><i class="ion-social-twitter-outline"></i>Twitter</a></lis>
      </ul>
    </div>
    <div class="span8">
      <g:each in="${episodes}" var="episode">
        <p class="lead"><g:link controller="podcast" action="index" id="${episode.episodeNumber}">
          ${episode.title}${episode.subTitle ? ': ' + episode.subTitle : ''}</p>
        </g:link>
        <p>${episode?.showNotes}</p>
      </g:each>
    </div>
  </div>
  <div class="gradient"></div>
</div>
    </body>
</html>
