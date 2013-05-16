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
                $('.speakerPic').corner("5px");

            });

        </script>

        <style type="text/css">
            .speakerPic {
                width: 100px;
                float: right;
                margin: 10px;
            }
        </style>


    </head>
    <body>
    <div id="confSidebar">
        <g:render template="confNav" model="['conference': conference, 'current': 'sessions']" />
    </div>

    <div class="body">
         <h1>${conference?.description}: Sessions</h1>
            <g:if test="${1 > sessions.size()}">
                <p><strong>We are still finalizing the schedule for this event.</strong> Please check back soon!</p>
            </g:if>
             <div class="list">
                 <g:each in="${sessions}" status="i" var="session">

                     <g:if test="${session?.presentation?.title != 'TBA'}">
                         <div class="session" style="height:auto; background: #eee; width:680px; ">

                             <div style="height:auto;padding:10px 25px;">
                                 <g:link controller="conference" action="speakerDetails" id="${session?.presentation?.speaker?.id}" params="${[confId:conference?.id]}"><img src="${request.contextPath}/${session?.presentation?.speaker?.imagePath}" class="speakerPic" /></g:link>
                                 <h3>${session?.presentation?.title}</h3>
                                 <p><g:link controller="conference" action="speakerDetails" id="${session?.presentation?.speaker?.id}" params="${[confId:conference?.id]}">${session?.presentation?.speaker}</g:link></p>

                                 <p>${session?.presentation?.pAbstract}</p><br/>
                             </div>
                         </div><br />
                     </g:if>

                 </g:each>
             <div style="clear:both"></div>
        </div>
        </div>
        <div style="clear: both"></div>
    </body>
</html>
