
<%@ page import="net.simplycocoa.Conference" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'conference.label', default: 'Conference')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'conference.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="startDate" title="${message(code: 'conference.startDate.label', default: 'Start Date')}" />
                        
                            <g:sortableColumn property="endDate" title="${message(code: 'conference.endDate.label', default: 'End Date')}" />
                        
                            <th><g:message code="conference.venue.label" default="Venue" /></th>
                        
                            <g:sortableColumn property="description" title="${message(code: 'conference.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'conference.city.label', default: 'City')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${conferenceInstanceList}" status="i" var="conferenceInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${conferenceInstance.id}">${fieldValue(bean: conferenceInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${conferenceInstance.startDate}" /></td>
                        
                            <td><g:formatDate date="${conferenceInstance.endDate}" /></td>
                        
                            <td>${fieldValue(bean: conferenceInstance, field: "venue")}</td>
                        
                            <td>${fieldValue(bean: conferenceInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: conferenceInstance, field: "city")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${conferenceInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
