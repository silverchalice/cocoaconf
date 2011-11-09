

<%@ page import="com.cocoaconf.Post" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
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
            <g:hasErrors bean="${postInstance}">
            <div class="errors">
                <g:renderErrors bean="${postInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="postedBy"><g:message code="post.postedBy.label" default="Posted By" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postInstance, field: 'postedBy', 'errors')}">
                                    <g:textField name="postedBy" value="${postInstance?.postedBy}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="body"><g:message code="post.body.label" default="Body" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postInstance, field: 'body', 'errors')}">
                                    <g:textField name="body" value="${postInstance?.body}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="post.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${postInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="slug"><g:message code="post.slug.label" default="Slug" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postInstance, field: 'slug', 'errors')}">
                                    <g:textField name="slug" value="${postInstance?.slug}" />
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
