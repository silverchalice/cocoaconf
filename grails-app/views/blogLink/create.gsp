

<%@ page import="com.cocoaconf.BlogLink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'blogLink.label', default: 'BlogLink')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${blogLinkInstance}">
            <div class="errors">
                <g:renderErrors bean="${blogLinkInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="blogLink.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: blogLinkInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${blogLinkInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="snippet"><g:message code="blogLink.snippet.label" default="Snippet" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: blogLinkInstance, field: 'snippet', 'errors')}">
                                    <g:textArea name="snippet" cols="40" rows="5" value="${blogLinkInstance?.snippet}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url"><g:message code="blogLink.url.label" default="Url" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: blogLinkInstance, field: 'url', 'errors')}">
                                    <g:textField name="url" value="${blogLinkInstance?.url}" />
                                </td>
                            </tr>
							<tr class="prop">
							    <td valign="top" class="name">
							        <label for="event"><g:message code="blogLink.event.label" default="Event" /></label>
							    </td>
							    <td valign="top" class="value ${hasErrors(bean: blogLinkInstance, field: 'event', 'errors')}">
							        <g:select name="event.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" value="${blogLinkInstance?.event?.id}" />
							    </td>
							</tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
