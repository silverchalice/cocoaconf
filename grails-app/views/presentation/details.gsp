
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
        <title>CocoaConf Presentation | ${presentationInstance?.title}</title>
    </head>
    <body>
            <h1><g:message code=".show.label" args="[entityName]" /></h1>
				<div>
					<h1>${presentationInstance?.title}</h1>
					<p>${presentationInstance?.pAbstract}</p>
	            <div>
	                <img src="${request.contextPath}/${presentationInstance.speaker?.imagePath}" style="float:left" />
	                <g:link controller="speaker" action="viewDetails" id="${presentationInstance?.speaker?.id}"><h1>${presentationInstance?.speaker}</h1></g:link>
	                <p>${presentationInstance?.speaker?.bio}</p>
	            </div>
            </div>
    </body>
</html>
