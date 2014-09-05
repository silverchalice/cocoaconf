

<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
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
            <g:hasErrors bean="${speakerInstance}">
            <div class="errors">
                <g:renderErrors bean="${speakerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" enctype="multipart/form-data">
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="firstName"><g:message code="speaker.firstName.label" default="First Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'firstName', 'errors')}">
                                    <g:textField name="firstName" value="${speakerInstance?.firstName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastName"><g:message code="speaker.lastName.label" default="Last Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'lastName', 'errors')}">
                                    <g:textField name="lastName" value="${speakerInstance?.lastName}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="slug"><g:message code="speaker.slug.label" default="Slug" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'slug', 'errors')}">
                                    <g:textField name="slug" value="${speakerInstance?.slug}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="speaker.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${speakerInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="speaker.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${speakerInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bio"><g:message code="speaker.bio.label" default="Bio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'bio', 'errors')}">
                                    <g:textArea name="bio" cols="40" rows="5" value="${speakerInstance?.bio}" />
                                </td>
                            </tr>
	                        <tr class="prop">
	                            <td valign="top" class="name">
	                              <label for="twitter"><g:message code="speaker.twitter.label" default="Twitter" /></label>
	                            </td>
	                            <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'twitter', 'errors')}">
	                                <g:textField name="twitter" value="${speakerInstance?.twitter}" />
	                            </td>
	                        </tr>
	                        <tr class="prop">
	                            <td valign="top" class="name">
	                              <label for="appnet"><g:message code="speaker.appnet.label" default="App.net" /></label>
	                            </td>
	                            <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'appnet', 'errors')}">
	                                <g:textField name="appnet" value="${speakerInstance?.appnet}" />
	                            </td>
	                        </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="feed"><g:message code="speaker.feed.label" default="Feed URL" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'feed', 'errors')}">
                                    <g:textField name="feed" value="${speakerInstance?.feed}" />
                                </td>
                            </tr>

                        <tr class="prop">
                            <td valign="top" class="name">
                              <label for="current"><g:message code="speaker.current.label" default="Current" /></label>
                            </td>
                            <td valign="top" class="value ${hasErrors(bean: speakerInstance, field: 'current', 'errors')}">
                                <g:checkBox name="current" value="${speakerInstance?.current}" />
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
