
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
        <title>CocoaConf Presentation: ${presentationInstance?.title}</title>

        <script type="text/javascript">
            $(document).ready(function() {

                $('.speaker').corner("5px");

            });

        </script>

    </head>
    <body>
            <h1>Session Details</h1>

            <h2 style="color:#35b6ff">${presentationInstance?.title}</h2>
            <p>${presentationInstance?.pAbstract}</p>
        <div class="speaker" style="background-color: #eeeeee; padding:10px;">
            <g:link controller="speaker" action="viewDetails" id="${presentationInstance?.speaker?.id}"><img src="${request.contextPath}/${presentationInstance.speaker?.imagePath}" style="float:left" /></g:link>
            <h2><g:link controller="speaker" action="viewDetails" id="${presentationInstance?.speaker?.id}">${presentationInstance?.speaker}</g:link></h2>
            <p>${presentationInstance?.speaker?.bio}</p>
        </div>
    </body>
</html>