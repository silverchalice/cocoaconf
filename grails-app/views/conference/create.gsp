

<%@ page import="net.simplycocoa.Conference" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'conference.label', default: 'Conference')}" />
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
            <g:hasErrors bean="${conferenceInstance}">
            <div class="errors">
                <g:renderErrors bean="${conferenceInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="startDate"><g:message code="conference.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: conferenceInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${conferenceInstance?.startDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endDate"><g:message code="conference.endDate.label" default="End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: conferenceInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" precision="day" value="${conferenceInstance?.endDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="venue"><g:message code="conference.venue.label" default="Venue" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: conferenceInstance, field: 'venue', 'errors')}">
                                    <g:select name="venue.id" from="${net.simplycocoa.Venue.list()}" optionKey="id" value="${conferenceInstance?.venue?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="conference.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: conferenceInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${conferenceInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="conference.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: conferenceInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${conferenceInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="conference.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: conferenceInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" value="${conferenceInstance?.state}" />
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
