
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
        <title>CocoaConf Presentation: ${presentation?.title}</title>


        <script type="text/javascript">
            $(document).ready(function() {

                $('.speaker').corner("5px");
                $('.speakerPic').corner("5px");

            });
        </script>

        <style type="text/css">
            .speaker {
                float: right;
                width: 280px;
                margin-left: 10px;
            }

            .speakerPic {
                float:left; margin:0 10px 10px 0;
                width: 100px;
            }
        </style>

    </head>
    <body>

        <div id="confSidebar">
            <g:render template="confNav" model="['conference': conference, 'current': 'none']" />
        </div>

        <div class="body">
                <h1 style="color:#35b6ff">${presentation?.title}</h1>

                <div>
                    <div class="speaker" style="background-color: #eeeeee; padding:15px;">
                       <g:link controller="conference" action="speakerDetails" id="${presentation?.speaker?.id}" params="${[confId:conference?.id]}"><img src="${request.contextPath}/${presentation.speaker?.imagePath}" class="speakerPic" /></g:link>
                       <h3 style="margin-top: 0; padding-top: 0"><g:link controller="conference" action="speakerDetails" id="${presentation?.speaker?.id}" params="${[confId:conference?.id]}">${presentation?.speaker}</g:link></h3>
                       <p><cc:truncate value="${presentation?.speaker?.bio}" size="100" /></p>
                       <span style="float:left">
			                <g:if test="${presentation?.speaker.twitter}">
			                    <a target="_blank" href="http://twitter.com/${presentation?.speaker.twitter}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'twitter.png')}" alt="Twitter" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
			                </g:if>
			                <g:if test="${presentation?.speaker.appnet}">
			                    <a target="_blank" href="http://alpha.app.net/${presentation?.speaker.appnet}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'appnet.jpg')}" alt="App.net" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
			                </g:if>
			                <g:if test="${presentation?.speaker.blog}">
			                    <a target="_blank" href="${presentation?.speaker.blog}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'feed-icon-28x28.png')}" alt="${presentation?.speaker}'s blog" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
			                </g:if>
	                     </span>
                       <span style="font-size: 14px; float:right;"><g:link controller="conference" action="speakerDetails" id="${presentation?.speaker?.id}" params="${[confId:conference?.id]}">View Details</g:link></span>
                   </div>
                    <p>${presentation?.pAbstract}
                    </p>
                </div>




            </div>
            <div style="clear: both">&nbsp;</div>
    </body>
</html>