

<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'presentation.label', default: 'Presentation')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${presentationInstance}">
            <div class="errors">
                <g:renderErrors bean="${presentationInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${presentationInstance?.id}" />
                <g:hiddenField name="version" value="${presentationInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="presentation.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${presentationInstance?.title}" />
                                </td>
                            </tr>                                                                                                                                   =
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="shortName"><g:message code="presentation.shortName.label" default="Short Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'shortName', 'errors')}">
                                    <g:textField name="shortName" value="${presentationInstance?.shortName}" />
                                </td>
                            </tr>                                                                                                                                   =
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="slug"><g:message code="presentation.slug.label" default="Slug" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'slug', 'errors')}">
                                    <g:textField name="slug" value="${presentationInstance?.slug}" />
                                </td>
                            </tr>                                                                                                                                   =
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pAbstract"><g:message code="presentation.pAbstract.label" default="PA bstract" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'pAbstract', 'errors')}">
                                    <g:textArea name="pAbstract" cols="40" rows="5" value="${presentationInstance?.pAbstract}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codePath"><g:message code="presentation.codePath.label" default="Code Path" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'codePath', 'errors')}">
                                    <g:textField name="codePath" value="${presentationInstance?.codePath}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="slidesPath"><g:message code="presentation.slidesPath.label" default="Slides Path" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'slidesPath', 'errors')}">
                                    <g:textField name="slidesPath" value="${presentationInstance?.slidesPath}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="speaker"><g:message code="presentation.speaker.label" default="Speaker" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'speaker', 'errors')}">
                                    <g:select name="speaker.id" from="${com.cocoaconf.Speaker.list([sort:'lastName'])}" optionKey="id" value="${presentationInstance?.speaker?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="current"><g:message code="presnetation.current.label" default="Current" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: presentationInstance, field: 'current', 'errors')}">
                                    <g:checkBox name="current" value="${presentationInstance?.current}" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
