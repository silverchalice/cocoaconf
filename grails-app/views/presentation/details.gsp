
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <title>CocoaConf Presentation: ${presentationInstance?.title}</title>
    </head>
    <body>
            <h1><g:message code=".show.label" args="[entityName]" /></h1>
				<div>
					<h1>${presentationInstance?.title}</h1>
					<p>${presentationInstance?.pAbstract}</p>
	            <div>
	                <img src="${request.contextPath}/${presentationInstance.speaker?.imagePath}" style="float:left" />
	                <h1>${presentationInstance?.speaker}</h1>
	                <p>${presentationInstance?.speaker?.bio}</p>
	            </div>
            </div>
    </body>
</html>
