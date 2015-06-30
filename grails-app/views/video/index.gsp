<%@ page import="com.cocoaconf.Video" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf Videos</title>
<meta name="layout" content="video" />

</head>

<body class="video">

<div class="container main-text">
  <h1 style="margin: 36px 0"><g:link controller="video" action="index">Yosemite <img src="${resource(dir: 'images/yosemite2016', file: 'yosemite_half_dome.png')}" class="hidden-phone" style="height: 120px" /></g:link> <g:link controller="video" action="index"> Videos </g:link></h1>
</div>


<div class="content container">
  <div class="gradient"></div>


    <div class="row-fluid">
        <div class="span7">
            <h1>Conference Videos<br /><small>From <strong>Yosemite, by CocoaConf</strong>: April 20&#8211;23, 2015</small></h1>
        </div>
    </div>

    <ul class="nav hidden-desktop visible-phone visible-tablet">
        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Podcast Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
                <li><a href="mailto:info@cocoaconf.com">Feedback</a></li>
                <li><a href="http://twitter.com/cocoaconf">Twitter</a></li>
                <li><a href="http://cocoaconf.com/yosemite">Yosemite 2016</a></li>
            </ul>
        </li>
    </ul>


  <hr>
  <div class="row-fluid">
    <div class="span2 hidden-phone hidden-tablet">
      <h3>Helpful Links</h3>
      <ul class="nav nav-list">
        <li class="feedback"><a href="mailto:info@cocoaconf.com">Feedback</a></li>
        <li class="twitter"><a href="http://twitter.com/CocoaConf">Twitter</a></li>
        <li class="paw"><a href="http://cocoaconf.com/yosemite">Yosemite 2016</a></li>
      </ul>


    </div>
    <div class="span8">
    
      <g:each in="${videos}" var="video">

          <div class="episode">

              <h2><g:link controller="video" action="index" id="${video.slug}">
                    ${video.title}
              </g:link></h2>

              <p>${video.description}</p>

              <br />
              ${video.playerBlurb}
              <p>&nbsp;</p>
              <g:if test="${videoInstanceCount == 1}">
                <div class="well">
                  ${video.sponsorBlurb}
                </div>
              </g:if>
          </div>
      </g:each>
        <div class="paginateButtons" style="max-width: 50%; text-align: center;">
            <g:paginate total="${videoInstanceCount}" />
        </div>
    </div>
  </div>
</div>
    </body>
</html>
