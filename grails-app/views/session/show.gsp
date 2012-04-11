
<%@ page import="com.cocoaconf.Session" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-session" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-session" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list session">
			
				<g:if test="${sessionInstance?.start}">
				<li class="fieldcontain">
					<span id="start-label" class="property-label"><g:message code="session.start.label" default="Start" /></span>
					
						<span class="property-value" aria-labelledby="start-label"><g:fieldValue bean="${sessionInstance}" field="start"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.end}">
				<li class="fieldcontain">
					<span id="end-label" class="property-label"><g:message code="session.end.label" default="End" /></span>
					
						<span class="property-value" aria-labelledby="end-label"><g:fieldValue bean="${sessionInstance}" field="end"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.room}">
				<li class="fieldcontain">
					<span id="room-label" class="property-label"><g:message code="session.room.label" default="Room" /></span>
					
						<span class="property-value" aria-labelledby="room-label"><g:fieldValue bean="${sessionInstance}" field="room"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.track}">
				<li class="fieldcontain">
					<span id="track-label" class="property-label"><g:message code="session.track.label" default="Track" /></span>
					
						<span class="property-value" aria-labelledby="track-label"><g:fieldValue bean="${sessionInstance}" field="track"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="session.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:fieldValue bean="${sessionInstance}" field="day"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.slot}">
				<li class="fieldcontain">
					<span id="slot-label" class="property-label"><g:message code="session.slot.label" default="Slot" /></span>
					
						<span class="property-value" aria-labelledby="slot-label"><g:fieldValue bean="${sessionInstance}" field="slot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="session.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${sessionInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.conference}">
				<li class="fieldcontain">
					<span id="conference-label" class="property-label"><g:message code="session.conference.label" default="Conference" /></span>
					
						<span class="property-value" aria-labelledby="conference-label"><g:link controller="conference" action="show" id="${sessionInstance?.conference?.id}">${sessionInstance?.conference?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.presentation}">
				<li class="fieldcontain">
					<span id="presentation-label" class="property-label"><g:message code="session.presentation.label" default="Presentation" /></span>
					
						<span class="property-value" aria-labelledby="presentation-label"><g:link controller="presentation" action="show" id="${sessionInstance?.presentation?.id}">${sessionInstance?.presentation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sessionInstance?.id}" />
					<g:link class="edit" action="edit" id="${sessionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
