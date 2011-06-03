
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>Cocoaconf | Sessions</title>


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
        <div class="nav">
        </div>
        <div class="body">

            <h1>Session Listing</h1>
            <p>As we get the details finalized we will post a full schedule. For now, here's a sneak peek at what's coming!</p>

            <div class="list">
                <g:each in="${presentationInstanceList}" status="i" var="presentation">
                   <div>
                       <h3>${presentation.title}</h3>
                       <h4>${presentation.speaker}</h4>
                       <p>${presentation.pAbstract}</p>
                   </div>
                   <hr/>
                </g:each>
            </div>
        </div>
    </body>
</html>
