
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'presentation.label', default: 'Presentation')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'presentation.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="pAbstract" title="${message(code: 'presentation.pAbstract.label', default: 'PA bstract')}" />
                        
                            <g:sortableColumn property="codePath" title="${message(code: 'presentation.codePath.label', default: 'Code Path')}" />
                        
                            <g:sortableColumn property="slidesPath" title="${message(code: 'presentation.slidesPath.label', default: 'Slides Path')}" />
                        
                            <th><g:message code="presentation.speaker.label" default="Speaker" /></th>
                        
                            <g:sortableColumn property="title" title="${message(code: 'presentation.title.label', default: 'Title')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${presentationInstanceList}" status="i" var="presentationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${presentationInstance.id}">${fieldValue(bean: presentationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: presentationInstance, field: "pAbstract")}</td>
                        
                            <td>${fieldValue(bean: presentationInstance, field: "codePath")}</td>
                        
                            <td>${fieldValue(bean: presentationInstance, field: "slidesPath")}</td>
                        
                            <td>${fieldValue(bean: presentationInstance, field: "speaker")}</td>
                        
                            <td>${fieldValue(bean: presentationInstance, field: "title")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${presentationInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
