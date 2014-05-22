<%@ page import="com.cocoaconf.Episode" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf Podcast</title>
<meta name="layout" content="home" />
<meta name="division" content="schedule" />
</head>

<body>

<div class="container main-text">
  <h1 style="margin: 36px 0"><img src="${resource(dir: 'images', file: 'podcast-logo2.png')}" /> The CocoaConf Podcast</h1>
</div>


<div class="content container">
  <div class="gradient"></div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Podcast Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li><a href="mailto:podcast@cocoaconf.com">Feedback</a></li>
                <li><a href="">iTunes</a></li>
                <li><a href="http://media.signalleaf.com/CocoaConf-Podcast/rss">RSS</a></li>
                <li><a href="http://twitter.com/cocoaconfcast">Twitter</a></li>
                <li><a href="skype:cocoaconf.podcast?call">Skype Survey Line</a></li>
            </ul>
        </li>
    </ul>


  <hr>
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
      <h3>Podcast Links</h3>
      <ul class="nav nav-list">
        <li <a href="mailto:podcast@cocoaconf.com"><i class="ion-ios7-email-outline"></i>Feedback</a></li>
        <li <a href=""><i class="ion-ipod"></i>iTunes</a></li>
        <li <a href=""><i class="ion-social-rss-outline"></i>RSS</a></li>
        <li <a href="http://twitter.com/cocoaconfcast"><i class="ion-social-twitter-outline"></i>Twitter</a></li>
      </ul>
    </div>
    <div class="span8">
      <g:each in="${episodes}" var="episode">

          <div class="episode" style="margin-bottom: 100px">
          <p class="lead"><g:link controller="podcast" action="index" id="${episode.episodeNumber}">
              ${episode.title}${episode.subTitle ? ': ' + episode.subTitle : ''}</p>
          </g:link>
              <div class="well">${episode?.showNotes}</div>
          </div>
      </g:each>
    </div>
  </div>
</div>
    </body>
</html>
