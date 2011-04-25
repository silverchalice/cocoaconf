

<%@ page import="com.cocoaconf.Session" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
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
            <g:hasErrors bean="${sessionInstance}">
            <div class="errors">
                <g:renderErrors bean="${sessionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${sessionInstance?.id}" />
                <g:hiddenField name="version" value="${sessionInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startTime"><g:message code="session.startTime.label" default="Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionInstance, field: 'startTime', 'errors')}">
                                    <g:datePicker name="startTime" precision="day" value="${sessionInstance?.startTime}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endTime"><g:message code="session.endTime.label" default="End Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionInstance, field: 'endTime', 'errors')}">
                                    <g:datePicker name="endTime" precision="day" value="${sessionInstance?.endTime}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="room"><g:message code="session.room.label" default="Room" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionInstance, field: 'room', 'errors')}">
                                    <g:textField name="room" value="${sessionInstance?.room}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="conference"><g:message code="session.conference.label" default="Conference" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionInstance, field: 'conference', 'errors')}">
                                    <g:select name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" value="${sessionInstance?.conference?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="presentation"><g:message code="session.presentation.label" default="Presentation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionInstance, field: 'presentation', 'errors')}">
                                    <g:select name="presentation.id" from="${com.cocoaconf.Presentation.list()}" optionKey="id" value="${sessionInstance?.presentation?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="speaker"><g:message code="session.speaker.label" default="Speaker" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionInstance, field: 'speaker', 'errors')}">
                                    <g:select name="speaker.id" from="${com.cocoaconf.Speaker.list()}" optionKey="id" value="${sessionInstance?.speaker?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="track"><g:message code="session.track.label" default="Track" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: sessionInstance, field: 'track', 'errors')}">
                                    <g:textField name="track" value="${fieldValue(bean: sessionInstance, field: 'track')}" />
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
