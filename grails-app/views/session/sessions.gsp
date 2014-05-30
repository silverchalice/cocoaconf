<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
          <meta name="tab" content="sessions" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf | iOS/OS X Developer Conference</title>

        <style type="text/css">
            div.odd img {
                float: left;
            }




            div.even img {
                float:right;
            }

            div.even div.bio {
                float:left;
            }

            div.odd div.bio {
                float:right;
            }

        </style>

    </head>
    <body>

        <h1>Session Listing</h1>

        <div class="list">
            <g:each in="${presentationInstanceList}" status="i" var="presentation">
               <div>
                   <h3 style="color:#2ab0e2">${presentation.title}</h3>
                   <h4><g:link style="color:#2ab0e2" controller="speaker" action="viewDetails" id="${presentation?.speaker?.id}">${presentation.speaker}</g:link> </h4>
                   <p>${presentation.pAbstract}</p>
               </div>
               <hr/>
            </g:each>
        </div>

    </body>
</html>
