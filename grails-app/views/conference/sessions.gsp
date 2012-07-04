<%@ page import="com.cocoaconf.Session" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
        <meta name="tab" content="events" />
        <meta name="nav" content="sessions" />
        <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
        <title>${conference?.description}: Sessions</title>

        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('.session').corner("5px");

            });

        </script>


    </head>
    <body>
    <div id="confSidebar">
        <g:render template="confNav" model="['conference': conference, 'current': 'sessions']" />
    </div>

    <div class="body">
         <h1>${conference?.description}: Sessions</h1>
             <div class="list">
                 <g:each in="${sessions}" status="i" var="session">
                     <div class="session" style="height:auto; background: #eee; width:680px; ">

                         <div style="height:auto;padding:15px;">
                             <h3>${session?.presentation?.title}</h3>
                             <p style="font-size:smaller;">${session?.presentation?.speaker}</p>
                             <p>${session?.presentation?.pAbstract}</p><br/>
                         </div>
                     </div><br />

                 </g:each>
             <div style="clear:both"></div>
        </div>
        </div>
        <div style="clear: both"></div>
    </body>
</html>
