
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
      <h1 style="margin: 36px 0"><g:link controller="term" action="index"><img src="${resource(dir: 'images', file: 'university-logo.png')}" class="hidden-phone" style="height: 120px" /></g:link> <g:link controller="term" action="index"> CocoaConf University </g:link></h1>
    </div>


    <div class="content container">
      <div class="gradient"></div>


        <div class="row-fluid">
            <div class="span7">
                <h1>Training by CocoaConf <br /> <small>Apple Developer Training By The Best In The Business</small></h1>
                <p class="lead" style="margin-top:30px;">CocoaConf University provides cutting edge Apple developer training led by your favorite CocoaConf speakers.</p>

            </div>

            <div class="span3">
              <h2 style="text-align: center;"><small>We&#8217;ll come to your company.</small></h2>
              <a href="mailto:training@cocoaconf.com?subject=Inquiring%20about%20private%20training%20classes" class="button"><button class="btn btn-block btn-large btn-flat"><i class="ion-ios7-people"></i> &nbsp; Ask about private classes</button></a>

            </div>
        </div>

        <ul class="nav hidden-desktop visible-phone visible-tablet">
            <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Training Links &nbsp; <i class="ion-ios7-arrow-down"></i></a>
                <ul class="dropdown-menu">
                    <li><a href="mailto:training@cocoaconf.com">Questions?</a></li>
                    <li><a href="http://twitter.com/CocoaConfEDU">Twitter</a></li>
                </ul>
            </li>
        </ul>


      <hr>

      <g:if test="${termInstance?.messageText}">
        <p class="announce">${termInstance?.messageText}</p>
      </g:if>

      <div class="row-fluid">
        <div class="span3 hidden-phone hidden-tablet">
          <h3>Training Links</h3>
          <ul class="nav nav-list">
            <li class="feedback"><a href="mailto:training@cocoaconf.com">Questions?</a></li>
            <li class="twitter"><a href="http://twitter.com/CocoaConfEDU">Twitter</a></li>
          </ul>

          ${trainingDesc?.contents}

        </div>
        <div class="span7">
          <g:each in="${termInstanceList}" var="termInstance">

              <div class="training">


                  <h2><g:link controller="term" action="index" params="${[slug: termInstance.slug]}">
                        ${termInstance.title}</g:link></h2>

                  <h3>${termInstance.subtitle}</h3>

                  ${termInstance?.description}

                  <p style="font-size:larger;">
                    <strong><a href="#register">Register for ${termInstance?.title}</a></strong>
                  </p>

                  <br />

                  <div class="well">

                    <g:each in="${termInstance?.courses?.sort{it.id}}" var="course">

                      <img class="trainingImage" align="left" src="${createLink(controller: 'course', action: 'displayImage', id: course.id)}" />
                      ${course?.trainingType?.description}
                      <h4>About Your Instructor</h4>
                      ${course?.speaker?.bio}
                      <br />

                    </g:each>

                    <a name="register"></a><br />
                    <h3>Register</h3>
                    ${termInstance?.registrationBlurb}
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
