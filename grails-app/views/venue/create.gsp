

<%@ page import="com.cocoaconf.Venue" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'venue.label', default: 'Venue')}" />
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
            <g:hasErrors bean="${venueInstance}">
            <div class="errors">
                <g:renderErrors bean="${venueInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" enctype="multipart/form-data">
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="venue.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${venueInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phone"><g:message code="venue.phone.label" default="Phone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'phone', 'errors')}">
                                    <g:textField name="phone" value="${venueInstance?.phone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="website"><g:message code="venue.website.label" default="Website" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'website', 'errors')}">
                                    <g:textField name="website" value="${venueInstance?.website}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image">Image</label>
                                </td>
                                <td valign="top">
                                    <input type="file" name="image" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="venue.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${venueInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address2"><g:message code="venue.address2.label" default="Address2" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'address2', 'errors')}">
                                    <g:textField name="address2" value="${venueInstance?.address2}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="venue.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${venueInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="venue.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${venueInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="venue.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" value="${venueInstance?.state}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zip"><g:message code="venue.zip.label" default="Zip" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: venueInstance, field: 'zip', 'errors')}">
                                    <g:textField name="zip" value="${venueInstance?.zip}" />
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
