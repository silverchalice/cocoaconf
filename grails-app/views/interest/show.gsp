
<%@ page import="com.cocoaconf.Interest" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'interest.label', default: 'Interest')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-interest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-interest" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list interest">
			
				<g:if test="${interestInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="interest.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${interestInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interestInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="interest.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${interestInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${interestInstance?.needHotel}">
				<li class="fieldcontain">
					<span id="needHotel-label" class="property-label"><g:message code="interest.needHotel.label" default="Need Hotel" /></span>
					
						<span class="property-value" aria-labelledby="needHotel-label"><g:formatBoolean boolean="${interestInstance?.needHotel}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${interestInstance?.conference}">
				<li class="fieldcontain">
					<span id="conference-label" class="property-label"><g:message code="interest.conference.label" default="Conference" /></span>
					
						<span class="property-value" aria-labelledby="conference-label"><g:link controller="conference" action="show" id="${interestInstance?.conference?.id}">${interestInstance?.conference?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${interestInstance?.id}" />
					<g:link class="edit" action="edit" id="${interestInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
