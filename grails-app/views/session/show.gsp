
<%@ page import="com.cocoaconf.Session" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
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
                            <td valign="top" class="name"><g:message code="session.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: sessionInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="session.startTime.label" default="Start Time" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${sessionInstance?.startTime}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="session.endTime.label" default="End Time" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${sessionInstance?.endTime}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="session.room.label" default="Room" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: sessionInstance, field: "room")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="session.conference.label" default="Conference" /></td>
                            
                            <td valign="top" class="value"><g:link controller="conference" action="show" id="${sessionInstance?.conference?.id}">${sessionInstance?.conference?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="session.presentation.label" default="Presentation" /></td>
                            
                            <td valign="top" class="value"><g:link controller="presentation" action="show" id="${sessionInstance?.presentation?.id}">${sessionInstance?.presentation?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="session.speaker.label" default="Speaker" /></td>
                            
                            <td valign="top" class="value"><g:link controller="speaker" action="show" id="${sessionInstance?.speaker?.id}">${sessionInstance?.speaker?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="session.track.label" default="Track" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: sessionInstance, field: "track")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${sessionInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
