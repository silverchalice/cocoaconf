
<%@ page import="com.cocoaconf.BlogLink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'blogLink.label', default: 'BlogLink')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'blogLink.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="title" title="${message(code: 'blogLink.title.label', default: 'Title')}" />
                        
                            <g:sortableColumn property="snippet" title="${message(code: 'blogLink.snippet.label', default: 'Snippet')}" />
                        
                            <g:sortableColumn property="url" title="${message(code: 'blogLink.url.label', default: 'Url')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${blogLinkInstanceList}" status="i" var="blogLinkInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${blogLinkInstance.id}">${fieldValue(bean: blogLinkInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: blogLinkInstance, field: "title")}</td>
                        
                            <td>${fieldValue(bean: blogLinkInstance, field: "snippet")}</td>
                        
                            <td>${fieldValue(bean: blogLinkInstance, field: "url")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${blogLinkInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
