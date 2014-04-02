
<%@ page import="com.cocoaconf.Availability" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'availability.label', default: 'Availability')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-availability" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-availability" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list availability">
			
				<g:if test="${availabilityInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="availability.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${availabilityInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${availabilityInstance?.available}">
				<li class="fieldcontain">
					<span id="available-label" class="property-label"><g:message code="availability.available.label" default="Available" /></span>
					
						<span class="property-value" aria-labelledby="available-label"><g:formatBoolean boolean="${availabilityInstance?.available}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${availabilityInstance?.conference}">
				<li class="fieldcontain">
					<span id="conference-label" class="property-label"><g:message code="availability.conference.label" default="Conference" /></span>
					
						<span class="property-value" aria-labelledby="conference-label"><g:link controller="conference" action="show" id="${availabilityInstance?.conference?.id}">${availabilityInstance?.conference?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${availabilityInstance?.numberOfTalks}">
				<li class="fieldcontain">
					<span id="numberOfTalks-label" class="property-label"><g:message code="availability.numberOfTalks.label" default="Number Of Talks" /></span>
					
						<span class="property-value" aria-labelledby="numberOfTalks-label"><g:fieldValue bean="${availabilityInstance}" field="numberOfTalks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${availabilityInstance?.travelHelp}">
				<li class="fieldcontain">
					<span id="travelHelp-label" class="property-label"><g:message code="availability.travelHelp.label" default="Travel Help" /></span>
					
						<span class="property-value" aria-labelledby="travelHelp-label"><g:formatBoolean boolean="${availabilityInstance?.travelHelp}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${availabilityInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="availability.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${availabilityInstance?.user?.id}">${availabilityInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${availabilityInstance?.id}" />
					<g:link class="edit" action="edit" id="${availabilityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
