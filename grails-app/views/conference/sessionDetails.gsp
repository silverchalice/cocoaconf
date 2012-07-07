
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
        <title>CocoaConf Presentation: ${presentation?.title}</title>


        <script type="text/javascript">
            $(document).ready(function() {

                $('.speaker').corner("5px");

            });
        </script>
    </head>
    <body>

        <div id="confSidebar">
            <g:render template="confNav" model="['conference': conference, 'current': 'none']" />
        </div>

            <h1>Session Details</h1>

            <h2 style="color:#35b6ff">${presentation?.title}</h2>
            <p>${presentation?.pAbstract}</p>
         <sec:ifLoggedIn>
             <g:if test="${slides}">
                 <a href="${createLink(controller:'home', action:'downloadSlides', params:[file:slides])}" style="background-image: url(${resource(dir:'images', file:'download.png')}); background-position: 270px 0px; background-repeat: no-repeat; padding-top:9px; display:block; width:400px; height:50px; font-weight:bold; font-size: 18px">Download Slides/Sample Code</a>

             </g:if>
             <g:else>
                <span style="padding-top:9px; display:block; width:400px; height:50px; font-weight:bold; font-size: 18px">No Slides Available</span>
             </g:else>


         </sec:ifLoggedIn><br/>
        <div class="speaker" style="background-color: #eeeeee; padding:15px;">
            <g:link controller="conference" action="speakerDetails" id="${presentation?.speaker?.id}" params="${[confId:conference?.id]}"><img src="${request.contextPath}/${presentation.speaker?.imagePath}" style="float:left; margin:0 10px 10px; 0" /></g:link>
            <h2><g:link controller="conference" action="speakerDetails" id="${presentation?.speaker?.id}" params="${[confId:conference?.id]}">${presentation?.speaker}</g:link></h2>
            <p>${presentation?.speaker?.bio}</p>
            <span style="font-size: 14px; float:right;"><g:link controller="conference" action="speakerDetails" id="${presentation?.speaker?.id}" params="${[confId:conference?.id]}">View Details</g:link></span>
            <span style="clear:both">&nbsp;</span>
        </div>
    </body>
</html>