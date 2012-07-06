
<%@ page import="com.cocoaconf.PresentationFile" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'presentationFile.label', default: 'PresentationFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-presentationFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-presentationFile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list presentationFile">
			
				<g:if test="${presentationFileInstance?.conference}">
				<li class="fieldcontain">
					<span id="conference-label" class="property-label"><g:message code="presentationFile.conference.label" default="Conference" /></span>
					
						<span class="property-value" aria-labelledby="conference-label"><g:link controller="conference" action="show" id="${presentationFileInstance?.conference?.id}">${presentationFileInstance?.conference?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${presentationFileInstance?.speaker}">
				<li class="fieldcontain">
					<span id="speaker-label" class="property-label"><g:message code="presentationFile.speaker.label" default="Speaker" /></span>
					
						<span class="property-value" aria-labelledby="speaker-label"><g:link controller="speaker" action="show" id="${presentationFileInstance?.speaker?.id}">${presentationFileInstance?.speaker?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${presentationFileInstance?.presentation}">
				<li class="fieldcontain">
					<span id="presentation-label" class="property-label"><g:message code="presentationFile.presentation.label" default="Presentation" /></span>
					
						<span class="property-value" aria-labelledby="presentation-label"><g:link controller="presentation" action="show" id="${presentationFileInstance?.presentation?.id}">${presentationFileInstance?.presentation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${presentationFileInstance?.link}">
				<li class="fieldcontain">
					<span id="link-label" class="property-label"><g:message code="presentationFile.link.label" default="Link" /></span>
					
						<span class="property-value" aria-labelledby="link-label"><g:fieldValue bean="${presentationFileInstance}" field="link"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${presentationFileInstance?.id}" />
					<g:link class="edit" action="edit" id="${presentationFileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
