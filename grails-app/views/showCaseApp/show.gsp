
<%@ page import="com.cocoaconf.ShowCaseApp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'showCaseApp.label', default: 'ShowCaseApp')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: showCaseAppInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: showCaseAppInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.author.label" default="Author" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: showCaseAppInstance, field: "author")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: showCaseAppInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.category.label" default="Category" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: showCaseAppInstance, field: "category")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.icon.label" default="Icon" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.story.label" default="Story" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: showCaseAppInstance, field: "story")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.iPad.label" default="IP ad" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${showCaseAppInstance?.iPad}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.iPhone.label" default="IP hone" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${showCaseAppInstance?.iPhone}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.images.label" default="Images" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${showCaseAppInstance.images}" var="i">
                                    <li><g:link controller="appImage" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="showCaseApp.mac.label" default="Mac" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${showCaseAppInstance?.mac}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${showCaseAppInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
