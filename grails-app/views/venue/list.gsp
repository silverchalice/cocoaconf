
<%@ page import="net.cocoaconf
.Venue" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'venue.label', default: 'Venue')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'venue.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'venue.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="phone" title="${message(code: 'venue.phone.label', default: 'Phone')}" />
                        
                            <g:sortableColumn property="website" title="${message(code: 'venue.website.label', default: 'Website')}" />
                        
                            <g:sortableColumn property="imagePath" title="${message(code: 'venue.imagePath.label', default: 'Image Path')}" />
                        
                            <g:sortableColumn property="address" title="${message(code: 'venue.address.label', default: 'Address')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${venueInstanceList}" status="i" var="venueInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${venueInstance.id}">${fieldValue(bean: venueInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: venueInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: venueInstance, field: "phone")}</td>
                        
                            <td>${fieldValue(bean: venueInstance, field: "website")}</td>
                        
                            <td>${fieldValue(bean: venueInstance, field: "imagePath")}</td>
                        
                            <td>${fieldValue(bean: venueInstance, field: "address")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${venueInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
