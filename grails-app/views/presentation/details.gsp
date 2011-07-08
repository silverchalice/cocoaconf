
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <title>CocoaConf Presentation: ${presentationInstance?.title}</title>
    </head>
    <body>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
				<div>
					<h1>${presentationInstance?.title}</h1>
					<p>${presentationInstance?.pAbstract}</p>
	            <div>
	                <img src="${request.contextPath}/${presentationInstance.speaker?.imagePath}" style="float:left" />
	                <h1>${presentationInstance?.speaker}</h1>
	                <p>${presentationInstance?.speaker?.bio}</p>
	            </div>
            </div>
        </div>
    </body>
</html>
