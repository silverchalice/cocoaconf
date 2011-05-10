
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <g:each in="${speakerInstanceList}" var="speaker">
                    <div class="${(i % 2) == 0 ? 'odd' : 'even'}">
	                    <h3>${speaker}</h3><br />
                        <img class="speakerPic" src="${request.contextPath}/${speaker?.imagePath}"/>
	                    <p>${speaker.bio}</p>
	                </div>
                </g:each>
            </div>
        </div>
    </body>
</html>
