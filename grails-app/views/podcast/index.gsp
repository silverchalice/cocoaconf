<%@ page import="com.cocoaconf.Episode" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf Podcast</title>
<meta name="layout" content="podcast" />
<meta name="division" content="podcast" />

</head>

<body class="podcast">

<div class="container main-text">
  <h1 style="margin: 36px 0"><g:link controller="podcast" action="index"><img src="${resource(dir: 'images', file: 'podcast-logo2.png')}" class="hidden-phone" style="height: 120px" /></g:link> <g:link controller="podcast" action="index"> The CocoaConf Podcast </g:link></h1>
</div>


<div class="content container">
  <div class="gradient"></div>


    <div class="row-fluid">
        <div class="span7">
            <h1>The Professional Development Podcast <br /><small>for iOS and OS X Developers</small></h1>
            <g:if test="${isList}">
              <p class="lead" style="margin-top:30px;">The CocoaConf Podcast features members of the iOS and OS X community offering tips, insight, facts, and opinions for other iOS and OS X developers. You&#8217;ll recognize many of the voices from the popular CocoaConf conference series.</p>
            </g:if>
        </div>
        <div class="span3">
          <h2 style="text-align: center;"><small>Available on iTunes.</small></h2>
          <a href="https://itunes.apple.com/us/podcast/cocoaconf-podcast/id882941510" class="button"><button class="btn btn-block btn-large btn-flat"><i class="ion-ipod"></i> &nbsp; Subscribe</button></a>

        </div>
    </div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Podcast Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li><a href="mailto:podcast@cocoaconf.com">Feedback</a></li>
                <li><a href="https://itunes.apple.com/us/podcast/cocoaconf-podcast/id882941510">iTunes</a></li>
                <li><a href="http://cocoaconf.libsyn.com/rss">RSS</a></li>
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
        <li class="feedback"><a href="mailto:podcast@cocoaconf.com">Feedback</a></li>
        <li class="itunes"><a href="https://itunes.apple.com/us/podcast/cocoaconf-podcast/id882941510">iTunes</a></li>
        <li class="rss"><a href="http://cocoaconf.libsyn.com/rss">RSS</a></li>
        <li class="twitter"><a href="http://twitter.com/CocoaConfCast">Twitter</a></li>
        <li class="skype"><a href="skype:cocoaconf.podcast?call">Survey Line</a></li>
      </ul>


    </div>
    <div class="span8">
      <g:each in="${episodes}" var="episode">

          <div class="episode">

              <h3><g:formatDate format="MMMM d, yyyy" date="${episode?.datePublished}" /></h3>

              <g:if test="${isList}">
                  <h2><g:link controller="podcast" action="index" id="${episode.episodeNumber}">
                    ${episode.title}</g:link></h2>
              </g:if>
              <g:else>
                  <h2>${episode.title}</small></h2>
              </g:else>

              <h3>${episode.subTitle}</h3>

              <br />
              ${episode.signalLeafBlurb}
              <p>&nbsp;</p>

              <div class="well">

                <h3>Show Notes</h3>
                ${episode?.showNotes}
              </div>

          </div>
      </g:each>
        <div class="paginateButtons" style="max-width: 50%; text-align: center;">
            <g:paginate total="${episodeInstanceTotal}" />
        </div>
    </div>
  </div>
</div>
    </body>
</html>
