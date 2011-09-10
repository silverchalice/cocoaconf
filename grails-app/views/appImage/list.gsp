
<%@ page import="com.cocoaconf.AppImage" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'appImage.label', default: 'AppImage')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'appImage.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="caption" title="${message(code: 'appImage.caption.label', default: 'Caption')}" />
                        
                            <g:sortableColumn property="image" title="${message(code: 'appImage.image.label', default: 'Image')}" />
                        
                            <th><g:message code="appImage.app.label" default="App" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${appImageInstanceList}" status="i" var="appImageInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${appImageInstance.id}">${fieldValue(bean: appImageInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: appImageInstance, field: "caption")}</td>
                        
                            <td>${fieldValue(bean: appImageInstance, field: "image")}</td>
                        
                            <td>${fieldValue(bean: appImageInstance, field: "app")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${appImageInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
