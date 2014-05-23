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


    <div class="row-fluid">
        <div class="span7">
            <h1>Join us in ${conference?.cityNickname ?: conference?.city + ", " + conference?.state} <small>${conference?.dates}</small></h1>
            <p class="lead">${conference?.intro}</p>
        </div>
        <div class="span3">
                <h2 style="text-align: center;"><small>Early Bird discounts available!</small></h2>

        </div>
    </div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Podcast Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li class="feedback"><a href="mailto:podcast@cocoaconf.com">Feedback</a></li>
                <li class="itunes"><a href="">iTunes</a></li>
                <li class="rss"><a href="">RSS</a></li>
                <li class="twitter"><a href="http://twitter.com/cocoaconfcast">Twitter</a></li>
                <li class="skype"><a href="skype:cocoaconf.podcast?call">Skype Survey Line</a></li>
            </ul>
        </li>
    </ul>


  <hr>
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
      <h3>Podcast Links</h3>
      <ul class="nav nav-list">
        <li class="feedback"><a href="mailto:podcast@cocoaconf.com">Feedback</a></li>
        <li class="itunes"><a href="">iTunes</a></li>
        <li class="rss"><a href="">RSS</a></li>
        <li class="twitter"><a href="http://twitter.com/cocoaconfcast">Twitter</a></li>
        <li class="skype"><a href="skype:cocoaconf.podcast?call">Skype Survey Line</a></li>
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
