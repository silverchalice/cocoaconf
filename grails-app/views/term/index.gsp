
<%@ page import="com.cocoaconf.Term" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="training">
		<g:set var="entityName" value="${message(code: 'term.label', default: 'Term')}" />
		<title>Training by CocoaConf</title>
	</head>
	<body class="training">
    <div class="container main-text">
      <h1 style="margin: 36px 0"><g:link controller="podcast" action="index"><img src="${resource(dir: 'images', file: 'university-logo.png')}" class="hidden-phone" style="height: 120px" /></g:link> <g:link controller="podcast" action="index"> CocoaConf University </g:link></h1>
    </div>


    <div class="content container">
      <div class="gradient"></div>


        <div class="row-fluid">
            <div class="span7">
                <h1>Training by CocoaConf <br /> <small>Industry Training By Industry Professionals</small></h1>
                <p class="lead" style="margin-top:30px;">CocoaConf University combines the focus of an individual training class with the networking opportunities of a conference, the way that only CocoaConf can.</p>

            </div>
            <div class="span3">
              <!--<h2 style="text-align: center;"><small>Available on iTunes.</small></h2>-->
              <a href="https://itunes.apple.com/us/podcast/cocoaconf-podcast/id882941510" class="button"><button class="btn btn-block btn-large btn-flat"><i class="ion-ipod"></i> &nbsp; Subscribe</button></a>

            </div>
        </div>

        <ul class="nav hidden-desktop visible-phone visible-tablet">
            <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Training Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
                <ul class="dropdown-menu">
                    <li><a href="mailto:podcast@cocoaconf.com">Feedback</a></li>
                    <li><a href="https://itunes.apple.com/us/podcast/cocoaconf-podcast/id882941510">iTunes</a></li>
                    <li><a href="https://media.signalleaf.com/CocoaConf-Podcast/rss">RSS</a></li>
                    <li><a href="http://twitter.com/cocoaconfcast">Twitter</a></li>
                    <li><a href="skype:cocoaconf.podcast?call">Skype Survey Line</a></li>
                </ul>
            </li>
        </ul>


      <hr>
      <div class="row-fluid">
        <div class="span2 hidden-phone hidden-tablet">
          <h3>Training Links</h3>
          <ul class="nav nav-list">
            <li class="feedback"><a href="mailto:podcast@cocoaconf.com">Feedback</a></li>
            <li class="itunes"><a href="https://itunes.apple.com/us/podcast/cocoaconf-podcast/id882941510">iTunes</a></li>
            <li class="rss"><a href="https://media.signalleaf.com/CocoaConf-Podcast/rss">RSS</a></li>
            <li class="twitter"><a href="http://twitter.com/CocoaConfCast">Twitter</a></li>
            <li class="skype"><a href="skype:cocoaconf.podcast?call">Survey Line</a></li>
          </ul>


        </div>
        <div class="span8">
          <g:each in="${termInstanceList}" var="termInstance">

              <div class="training">

                  <h3><g:formatDate format="MMMM d, yyyy" date="${termInstance?.startDate}" /></h3>

                  <h2><g:link controller="term" action="index" params="${[slug: termInstance.slug]}">
                        ${termInstance.title}</g:link></h2>

                  <h3>${termInstance.endDate}</h3>

                  <p>&nbsp;</p>

                  <div class="well">

                    <h3>Show Notes</h3>
                    ${termInstance?.description}
                  </div>

              </div>
          </g:each>
            <div class="paginateButtons" style="max-width: 50%; text-align: center;">
                <g:paginate total="${termInstanceCount}" />
            </div>
        </div>
      </div>
    </div>
	</body>
</html>
