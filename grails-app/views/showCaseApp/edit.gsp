

<%@ page import="com.cocoaconf.ShowCaseApp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'showCaseApp.label', default: 'ShowCaseApp')}" />
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
            <g:hasErrors bean="${showCaseAppInstance}">
            <div class="errors">
                <g:renderErrors bean="${showCaseAppInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post"  enctype="multipart/form-data">
                <g:hiddenField name="id" value="${showCaseAppInstance?.id}" />
                <g:hiddenField name="version" value="${showCaseAppInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="showCaseApp.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${showCaseAppInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="author"><g:message code="showCaseApp.author.label" default="Author" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'author', 'errors')}">
                                    <g:textField name="author" value="${showCaseAppInstance?.author}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="showCaseApp.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${showCaseAppInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="category"><g:message code="showCaseApp.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'category', 'errors')}">
                                    <g:textField name="category" value="${showCaseAppInstance?.category}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="icon"><g:message code="showCaseApp.icon.label" default="Icon" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'icon', 'errors')}">
                                    <input type="file" id="icon" name="icon" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="story"><g:message code="showCaseApp.story.label" default="Story" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'story', 'errors')}">
                                    <g:textArea name="story" cols="40" rows="5" value="${showCaseAppInstance?.story}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="iPad"><g:message code="showCaseApp.iPad.label" default="IP ad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'iPad', 'errors')}">
                                    <g:checkBox name="iPad" value="${showCaseAppInstance?.iPad}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="iPhone"><g:message code="showCaseApp.iPhone.label" default="IP hone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'iPhone', 'errors')}">
                                    <g:checkBox name="iPhone" value="${showCaseAppInstance?.iPhone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="images"><g:message code="showCaseApp.images.label" default="Images" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'images', 'errors')}">
                                    
<ul>
<g:each in="${showCaseAppInstance?.images?}" var="i">
    <li><g:link controller="appImage" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="appImage" action="create" params="['showCaseApp.id': showCaseAppInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'appImage.label', default: 'AppImage')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mac"><g:message code="showCaseApp.mac.label" default="Mac" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: showCaseAppInstance, field: 'mac', 'errors')}">
                                    <g:checkBox name="mac" value="${showCaseAppInstance?.mac}" />
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
