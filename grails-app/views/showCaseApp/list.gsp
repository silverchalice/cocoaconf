
<%@ page import="com.cocoaconf.ShowCaseApp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'showCaseApp.label', default: 'ShowCaseApp')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'showCaseApp.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'showCaseApp.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="author" title="${message(code: 'showCaseApp.author.label', default: 'Author')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'showCaseApp.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="category" title="${message(code: 'showCaseApp.category.label', default: 'Category')}" />
                        
                            <g:sortableColumn property="icon" title="${message(code: 'showCaseApp.icon.label', default: 'Icon')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${showCaseAppInstanceList}" status="i" var="showCaseAppInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${showCaseAppInstance.id}">${fieldValue(bean: showCaseAppInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: showCaseAppInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: showCaseAppInstance, field: "author")}</td>
                        
                            <td>${fieldValue(bean: showCaseAppInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: showCaseAppInstance, field: "category")}</td>
                        
                            <td>${fieldValue(bean: showCaseAppInstance, field: "icon")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${showCaseAppInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
