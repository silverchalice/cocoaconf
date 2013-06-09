

<%@ page import="com.cocoaconf.WwdcPhoto" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'WwdcPhoto')}" />
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
            <g:hasErrors bean="${wwdcPhotoInstance}">
            <div class="errors">
                <g:renderErrors bean="${wwdcPhotoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" enctype="multipart/form-data">
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="year"><g:message code="wwdcPhoto.year.label" default="Year" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: wwdcPhotoInstance, field: 'year', 'errors')}">
                                    <g:textField name="year" value="${wwdcPhotoInstance?.year}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="caption"><g:message code="wwdcPhoto.caption.label" default="Caption" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: wwdcPhotoInstance, field: 'caption', 'errors')}">
                                    <g:textField name="caption" value="${wwdcPhotoInstance?.caption}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url"><g:message code="wwdcPhoto.url.label" default="URL" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: wwdcPhotoInstance, field: 'url', 'errors')}">
                                    <g:textField name="url" value="${wwdcPhotoInstance?.url}" />
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
