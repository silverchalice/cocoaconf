
<%@ page import="com.cocoaconf.Presentation" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="home" />
    <title>CocoaConf Presentation: ${presentationInstance?.title}</title>

    <script type="text/javascript">
        $(document).ready(function() {

            $('.speaker').corner("5px");
            $('.speakerPic').corner("5px");

        });
    </script>

    <style type="text/css">
    .speaker {
        float: right;
        width: 230px;
        margin: 0 15px;
    }

    .speakerPic {
        float:left; margin:0 10px 10px 0;
        width: 90px;
    }

    h1 {
        color:#35b6ff
    }

    </style>

</head>
<body>


<div class="body">
    <h1>${presentationInstance?.title}</h1>

    <div>
        <div class="speaker" style="background-color: #eeeeee; padding:15px;">
            <g:link controller="speaker" action="viewDetails" id="${presentationInstance?.speaker?.id}"><img src="${request.contextPath}/${presentationInstance.speaker?.imagePath}" class="speakerPic" /></g:link>
            <h3 style="margin-top: 0; padding-top: 0"><g:link controller="speaker" action="viewDetails" id="${presentationInstance?.speaker?.id}">${presentationInstance?.speaker}</g:link></h3>
            <p>${presentationInstance?.speaker?.bio}</p>
            <span style="float:left">
                <g:if test="${presentationInstance?.speaker.twitter}">
                    <a target="_blank" href="http://twitter.com/${presentationInstance?.speaker.twitter}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'twitter.png')}" alt="Twitter" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
                </g:if>
                <g:if test="${presentationInstance?.speaker.appnet}">
                    <a target="_blank" href="http://alpha.app.net/${presentationInstance?.speaker.appnet}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'appnet.jpg')}" alt="App.net" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
                </g:if>
                <g:if test="${presentationInstance?.speaker.blog}">
                    <a target="_blank" href="${presentationInstance?.speaker.blog}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'feed-icon-28x28.png')}" alt="${presentationInstance?.speaker}'s blog" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
                </g:if>
            </span>
            <span style="font-size: 14px; float:right;"><g:link controller="speaker" action="viewDetails" id="${presentationInstance?.speaker?.id}">View Details</g:link></span>
        </div>
        <p>${presentationInstance?.pAbstract}
        </p>
    </div>

</div>
<div style="clear: both">&nbsp;</div>
</body>
</html>