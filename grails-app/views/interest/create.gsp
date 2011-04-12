

<%@ page import="com.cocoaconf.Interest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interest.label', default: 'Interest')}" />
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
            <g:hasErrors bean="${interestInstance}">
            <div class="errors">
                <g:renderErrors bean="${interestInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="interest.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: interestInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${interestInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="location"><g:message code="interest.location.label" default="Location" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: interestInstance, field: 'location', 'errors')}">
                                    <g:textField name="location" value="${interestInstance?.location}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="needHotel"><g:message code="interest.needHotel.label" default="Need Hotel" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: interestInstance, field: 'needHotel', 'errors')}">
                                    <g:checkBox name="needHotel" value="${interestInstance?.needHotel}" />
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
