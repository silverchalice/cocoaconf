
<%@ page import="com.cocoaconf.Interest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interest.label', default: 'Interest')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'interest.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="email" title="${message(code: 'interest.email.label', default: 'Email')}" />
                        
                            <g:sortableColumn property="location" title="${message(code: 'interest.location.label', default: 'Location')}" />
                        
                            <g:sortableColumn property="needHotel" title="${message(code: 'interest.needHotel.label', default: 'Need Hotel')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${interestInstanceList}" status="i" var="interestInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${interestInstance.id}">${fieldValue(bean: interestInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: interestInstance, field: "email")}</td>
                        
                            <td>${fieldValue(bean: interestInstance, field: "location")}</td>
                        
                            <td><g:formatBoolean boolean="${interestInstance.needHotel}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${interestInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
