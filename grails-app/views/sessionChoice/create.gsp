

<%@ page import="com.cocoaconf.SessionChoice" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sessionChoice.label', default: 'SessionChoice')}" />
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
            <g:hasErrors bean="${sessionChoiceInstance}">
            <div class="errors">
                <g:renderErrors bean="${sessionChoiceInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session01"><g:message code="sessionChoice.session01.label" default="Session01" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session01', 'errors')}">
                                    <g:checkBox name="session01" value="${sessionChoiceInstance?.session01}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session02"><g:message code="sessionChoice.session02.label" default="Session02" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session02', 'errors')}">
                                    <g:checkBox name="session02" value="${sessionChoiceInstance?.session02}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session03"><g:message code="sessionChoice.session03.label" default="Session03" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session03', 'errors')}">
                                    <g:checkBox name="session03" value="${sessionChoiceInstance?.session03}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session04"><g:message code="sessionChoice.session04.label" default="Session04" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session04', 'errors')}">
                                    <g:checkBox name="session04" value="${sessionChoiceInstance?.session04}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session05"><g:message code="sessionChoice.session05.label" default="Session05" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session05', 'errors')}">
                                    <g:checkBox name="session05" value="${sessionChoiceInstance?.session05}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session06"><g:message code="sessionChoice.session06.label" default="Session06" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session06', 'errors')}">
                                    <g:checkBox name="session06" value="${sessionChoiceInstance?.session06}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session07"><g:message code="sessionChoice.session07.label" default="Session07" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session07', 'errors')}">
                                    <g:checkBox name="session07" value="${sessionChoiceInstance?.session07}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session08"><g:message code="sessionChoice.session08.label" default="Session08" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session08', 'errors')}">
                                    <g:checkBox name="session08" value="${sessionChoiceInstance?.session08}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session09"><g:message code="sessionChoice.session09.label" default="Session09" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session09', 'errors')}">
                                    <g:checkBox name="session09" value="${sessionChoiceInstance?.session09}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session10"><g:message code="sessionChoice.session10.label" default="Session10" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session10', 'errors')}">
                                    <g:checkBox name="session10" value="${sessionChoiceInstance?.session10}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session11"><g:message code="sessionChoice.session11.label" default="Session11" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session11', 'errors')}">
                                    <g:checkBox name="session11" value="${sessionChoiceInstance?.session11}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session12"><g:message code="sessionChoice.session12.label" default="Session12" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session12', 'errors')}">
                                    <g:checkBox name="session12" value="${sessionChoiceInstance?.session12}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session13"><g:message code="sessionChoice.session13.label" default="Session13" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session13', 'errors')}">
                                    <g:checkBox name="session13" value="${sessionChoiceInstance?.session13}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session14"><g:message code="sessionChoice.session14.label" default="Session14" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session14', 'errors')}">
                                    <g:checkBox name="session14" value="${sessionChoiceInstance?.session14}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session15"><g:message code="sessionChoice.session15.label" default="Session15" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session15', 'errors')}">
                                    <g:checkBox name="session15" value="${sessionChoiceInstance?.session15}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session16"><g:message code="sessionChoice.session16.label" default="Session16" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session16', 'errors')}">
                                    <g:checkBox name="session16" value="${sessionChoiceInstance?.session16}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session17"><g:message code="sessionChoice.session17.label" default="Session17" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session17', 'errors')}">
                                    <g:checkBox name="session17" value="${sessionChoiceInstance?.session17}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session18"><g:message code="sessionChoice.session18.label" default="Session18" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session18', 'errors')}">
                                    <g:checkBox name="session18" value="${sessionChoiceInstance?.session18}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session19"><g:message code="sessionChoice.session19.label" default="Session19" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session19', 'errors')}">
                                    <g:checkBox name="session19" value="${sessionChoiceInstance?.session19}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session20"><g:message code="sessionChoice.session20.label" default="Session20" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session20', 'errors')}">
                                    <g:checkBox name="session20" value="${sessionChoiceInstance?.session20}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session21"><g:message code="sessionChoice.session21.label" default="Session21" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session21', 'errors')}">
                                    <g:checkBox name="session21" value="${sessionChoiceInstance?.session21}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session22"><g:message code="sessionChoice.session22.label" default="Session22" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session22', 'errors')}">
                                    <g:checkBox name="session22" value="${sessionChoiceInstance?.session22}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session23"><g:message code="sessionChoice.session23.label" default="Session23" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session23', 'errors')}">
                                    <g:checkBox name="session23" value="${sessionChoiceInstance?.session23}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session24"><g:message code="sessionChoice.session24.label" default="Session24" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session24', 'errors')}">
                                    <g:checkBox name="session24" value="${sessionChoiceInstance?.session24}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session25"><g:message code="sessionChoice.session25.label" default="Session25" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session25', 'errors')}">
                                    <g:checkBox name="session25" value="${sessionChoiceInstance?.session25}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session26"><g:message code="sessionChoice.session26.label" default="Session26" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session26', 'errors')}">
                                    <g:checkBox name="session26" value="${sessionChoiceInstance?.session26}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="session27"><g:message code="sessionChoice.session27.label" default="Session27" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'session27', 'errors')}">
                                    <g:checkBox name="session27" value="${sessionChoiceInstance?.session27}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="sessionChoice.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionChoiceInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${com.cocoaconf.User.list()}" optionKey="id" value="${sessionChoiceInstance?.user?.id}"  />
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
