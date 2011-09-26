<%@ page import="com.cocoaconf.LocationRequest" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'locationRequest.label', default: 'LocationRequest')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label"
                                                                           args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${locationRequestInstance}">
        <div class="errors">
            <g:renderErrors bean="${locationRequestInstance}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form action="save">
        <div class="dialog">
            <table>
                <tbody>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="email"><g:message code="locationRequest.email.label" default="Email"/></label>
                    </td>
                    <td valign="top"
                        class="value ${hasErrors(bean: locationRequestInstance, field: 'email', 'errors')}">
                        <g:textField name="email" value="${locationRequestInstance?.email}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="name"><g:message code="locationRequest.name.label" default="Name"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: locationRequestInstance, field: 'name', 'errors')}">
                        <g:textField name="name" value="${locationRequestInstance?.name}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="city"><g:message code="locationRequest.city.label" default="City"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: locationRequestInstance, field: 'city', 'errors')}">
                        <g:textField name="city" value="${locationRequestInstance?.city}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="state"><g:message code="locationRequest.state.label" default="State"/></label>
                    </td>
                    <td valign="top"
                        class="value ${hasErrors(bean: locationRequestInstance, field: 'state', 'errors')}">
                        <g:textField name="state" value="${locationRequestInstance?.state}"/>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>

        <div class="buttons">
            <span class="button"><g:submitButton name="create" class="save"
                                                 value="${message(code: 'default.button.create.label', default: 'Create')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
