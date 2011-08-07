
<%@ page import="com.cocoaconf.SessionChoice" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sessionChoice.label', default: 'SessionChoice')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'sessionChoice.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="session01" title="${message(code: 'sessionChoice.session01.label', default: 'Session01')}" />
                        
                            <g:sortableColumn property="session02" title="${message(code: 'sessionChoice.session02.label', default: 'Session02')}" />
                        
                            <g:sortableColumn property="session03" title="${message(code: 'sessionChoice.session03.label', default: 'Session03')}" />
                        
                            <g:sortableColumn property="session04" title="${message(code: 'sessionChoice.session04.label', default: 'Session04')}" />
                        
                            <g:sortableColumn property="session05" title="${message(code: 'sessionChoice.session05.label', default: 'Session05')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${sessionChoiceInstanceList}" status="i" var="sessionChoiceInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${sessionChoiceInstance.id}">${fieldValue(bean: sessionChoiceInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatBoolean boolean="${sessionChoiceInstance.session01}" /></td>
                        
                            <td><g:formatBoolean boolean="${sessionChoiceInstance.session02}" /></td>
                        
                            <td><g:formatBoolean boolean="${sessionChoiceInstance.session03}" /></td>
                        
                            <td><g:formatBoolean boolean="${sessionChoiceInstance.session04}" /></td>
                        
                            <td><g:formatBoolean boolean="${sessionChoiceInstance.session05}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${sessionChoiceInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
