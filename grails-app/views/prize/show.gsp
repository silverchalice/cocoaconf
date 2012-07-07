
<%@ page import="com.cocoaconf.Prize" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'prize.label', default: 'Prize')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prize" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prize" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prize">
			
				<g:if test="${prizeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="prize.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${prizeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prizeInstance?.imageName}">
				<li class="fieldcontain">
					<span id="imageName-label" class="property-label"><g:message code="prize.imageName.label" default="Image Name" /></span>
					
						<span class="property-value" aria-labelledby="imageName-label"><g:fieldValue bean="${prizeInstance}" field="imageName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prizeInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="prize.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${prizeInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prizeInstance?.priority}">
				<li class="fieldcontain">
					<span id="priority-label" class="property-label"><g:message code="prize.priority.label" default="Priority" /></span>
					
						<span class="property-value" aria-labelledby="priority-label"><g:fieldValue bean="${prizeInstance}" field="priority"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${prizeInstance?.id}" />
					<g:link class="edit" action="edit" id="${prizeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
