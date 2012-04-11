
<%@ page import="com.cocoaconf.Conference" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conference.label', default: 'Conference')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-conference" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-conference" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list conference">
			
				<g:if test="${conferenceInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="conference.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${conferenceInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="conference.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${conferenceInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.venue}">
				<li class="fieldcontain">
					<span id="venue-label" class="property-label"><g:message code="conference.venue.label" default="Venue" /></span>
					
						<span class="property-value" aria-labelledby="venue-label"><g:link controller="venue" action="show" id="${conferenceInstance?.venue?.id}">${conferenceInstance?.venue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="conference.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${conferenceInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="conference.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${conferenceInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.sessions}">
				<li class="fieldcontain">
					<span id="sessions-label" class="property-label"><g:message code="conference.sessions.label" default="Sessions" /></span>
					
						<g:each in="${conferenceInstance.sessions}" var="s">
						<span class="property-value" aria-labelledby="sessions-label"><g:link controller="session" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.speakers}">
				<li class="fieldcontain">
					<span id="speakers-label" class="property-label"><g:message code="conference.speakers.label" default="Speakers" /></span>
					
						<g:each in="${conferenceInstance.speakers}" var="s">
						<span class="property-value" aria-labelledby="speakers-label"><g:link controller="speaker" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="conference.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${conferenceInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conferenceInstance?.tinyName}">
				<li class="fieldcontain">
					<span id="tinyName-label" class="property-label"><g:message code="conference.tinyName.label" default="Tiny Name" /></span>
					
						<span class="property-value" aria-labelledby="tinyName-label"><g:fieldValue bean="${conferenceInstance}" field="tinyName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${conferenceInstance?.id}" />
					<g:link class="edit" action="edit" id="${conferenceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
