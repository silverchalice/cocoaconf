
<%@ page import="com.cocoaconf.SessionChoice" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sessionChoice.label', default: 'SessionChoice')}" />
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
                            <td valign="top" class="name"><g:message code="sessionChoice.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: sessionChoiceInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session01.label" default="Session01" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session01}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session02.label" default="Session02" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session02}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session03.label" default="Session03" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session03}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session04.label" default="Session04" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session04}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session05.label" default="Session05" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session05}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session06.label" default="Session06" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session06}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session07.label" default="Session07" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session07}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session08.label" default="Session08" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session08}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session09.label" default="Session09" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session09}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session10.label" default="Session10" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session10}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session11.label" default="Session11" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session11}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session12.label" default="Session12" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session12}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session13.label" default="Session13" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session13}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session14.label" default="Session14" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session14}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session15.label" default="Session15" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session15}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session16.label" default="Session16" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session16}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session17.label" default="Session17" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session17}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session18.label" default="Session18" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session18}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session19.label" default="Session19" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session19}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session20.label" default="Session20" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session20}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session21.label" default="Session21" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session21}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session22.label" default="Session22" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session22}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session23.label" default="Session23" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session23}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session24.label" default="Session24" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session24}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session25.label" default="Session25" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session25}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session26.label" default="Session26" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session26}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.session27.label" default="Session27" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${sessionChoiceInstance?.session27}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="sessionChoice.user.label" default="User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${sessionChoiceInstance?.user?.id}">${sessionChoiceInstance?.user?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${sessionChoiceInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
