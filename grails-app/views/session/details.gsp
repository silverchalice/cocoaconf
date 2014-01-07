<%@ page import="com.cocoaconf.Speaker" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="partners" />
<meta name="division" content="chicago" />
<meta name="domain" content="session" />
<g:set var="speaker" value="${presentationInstance?.speaker}" />
</head>
<body class="individual-speaker">
<div class="container main-text">
  <h1><span>All Sessions / </span> ${speaker}</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  
  <!-- Main hero unit for a primary marketing message or call to action --> 
  <!--<div class="media"> <img src="${resource(dir: 'images', file: 'img_speaker_icon.png')}" alt="A person icon" class="pull-left media-object">
    <div class="media-body">
      <h1>Speaking in Chicago</h1>
    </div>
  </div>
  <hr>-->
  <!-- Example row of columns -->
    <div class="span12">
      <ul class="media-list">
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" width="170" src="${speaker.imagePath.startsWith('/') ? speaker.imagePath : '/' + speaker.imagePath}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h2 class="media-heading">${presentationInstance?.title}</h2>
            <hr>
            <p class="lead">${presentationInstance?.pAbstract}</p>
                <p>&nbsp;</p><div class="well">
                <h2 style="display: inline;"><small>${speaker}</small></h2>
                <p class="author-links"><span class="twitter"><i class="ion-social-twitter-outline"></i>&nbsp;<a href="https://twitter.com/${speaker.twitter}" title="Visit ${speaker.firstName} on Twitter" target="_blank"> @${speaker.twitter}</a></span> <g:if test="${speaker.blog}"><span class="website"><i class="ion-social-rss"></i>&nbsp;<a href="${speaker.blog}" title="Visit ${speaker.firstName}&#8217;s website" target="_blank">${speaker.blog?.minus('http://')}</a></span></g:if> <g:if test="${speaker.appnet}"><span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="http://app.net/${speaker.appnet}"> @${speaker.appnet}</a></span></g:if> <span><i class="ion-ios7-person-outline"></i>&nbsp;<g:link controller="speaker" action="viewDetails" id="${speaker?.id}">View Details</g:link></span></p>
            <!-- <p>&nbsp;</p>
              <h2><small>Twitter Feed</small></h2>
<a class="twitter-timeline" href="https://twitter.com/${speaker.twitter}" data-widget-id="409836735829254144">Tweets by @${speaker.twitter}</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script> -->
</div>


          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
</body>
</html>
