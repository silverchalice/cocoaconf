
<%@ page import="com.cocoaconf.MugShot" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mugShot.label', default: 'MugShot')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mugShot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mugShot" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mugShot">
			
				<g:if test="${mugShotInstance?.caption}">
				<li class="fieldcontain">
					<span id="caption-label" class="property-label"><g:message code="mugShot.caption.label" default="Caption" /></span>
					
						<span class="property-value" aria-labelledby="caption-label"><g:fieldValue bean="${mugShotInstance}" field="caption"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mugShotInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="mugShot.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${mugShotInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${mugShotInstance?.imagePath}">
				<li class="fieldcontain">
					<span id="imagePath-label" class="property-label"><g:message code="mugShot.imagePath.label" default="Image Path" /></span>
					
						<span class="property-value" aria-labelledby="imagePath-label"><g:fieldValue bean="${mugShotInstance}" field="imagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mugShotInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="mugShot.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${mugShotInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${mugShotInstance?.id}" />
					<g:link class="edit" action="edit" id="${mugShotInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
