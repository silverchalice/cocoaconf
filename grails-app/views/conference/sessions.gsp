<%@ page import="com.cocoaconf.Session" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1><br />
            <div class="list">
                <g:each in="${sessions}" status="i" var="session">
                    <div style="height:160px;">

                         <div style="height:160px;  width:700p">
                             <h3>${session?.presentation?.title}</h3>
                             <p style="font-size:smaller;">${session?.presentation?.speaker}</p>
                             ${session?.presentation?.pAbstract}<br/>
                         </div>
                    </div><br />

                     </g:each>
                     <div style="clear:both"></div>
        </div>
      </div>
    </body>
</html>
