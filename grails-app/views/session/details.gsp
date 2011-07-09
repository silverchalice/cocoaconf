
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <title>CocoaConf Presentation: ${presentationInstance?.title}</title>
    </head>
    <body>
        <div class="body">
                    <h1>Session Details</h1>
					<h2 style="color:#35b6ff">${presentationInstance?.title}</h2>
					<p>${presentationInstance?.pAbstract}</p>
            <br/>
	            <div style="background-color: #eeeeee; padding:10px;">
	                <img src="${request.contextPath}/${presentationInstance.speaker?.imagePath}" style="float:left" />
	                <h2>${presentationInstance?.speaker}</h2>
	                <p>${presentationInstance?.speaker?.bio}</p>
	            </div>
            </div>
    </body>
</html>
