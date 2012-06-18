<%@ page import="com.cocoaconf.Session" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
        <meta name="tab" content="events" />
        <meta name="nav" content="sessions" />
        <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
        <title>${conference?.description}: Sessions</title>
    </head>
    <body>
        <div class="body">
         <h1>${conference?.description}: Sessions</h1>
            <div class="list">
                <g:each in="${sessions}" status="i" var="session">
                    <div style="height:auto;">

                         <div style="height:auto;width:700px;">
                             <h3>${session?.presentation?.title}</h3>
                             <p style="font-size:smaller;">${session?.presentation?.speaker}</p>
                             <p>${session?.presentation?.pAbstract}</p><br/>
                         </div>
                    </div><br />

                     </g:each>
                     <div style="clear:both"></div>
        </div>
      </div>
    </body>
</html>
