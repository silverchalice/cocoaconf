
<%@ page import="com.cocoaconf.TrainingClass" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingClass.label', default: 'TrainingClass')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trainingClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trainingClass" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trainingClass">
			
				<g:if test="${trainingClassInstance?.prereq}">
				<li class="fieldcontain">
					<span id="prereq-label" class="property-label"><g:message code="trainingClass.prereq.label" default="Prereq" /></span>
					
						<span class="property-value" aria-labelledby="prereq-label"><g:fieldValue bean="${trainingClassInstance}" field="prereq"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingClassInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="trainingClass.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${trainingClassInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trainingClassInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="trainingClass.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${trainingClassInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:trainingClassInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${trainingClassInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
