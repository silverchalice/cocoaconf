
<%@ page import="com.cocoaconf.YosemiteActivity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'yosemiteActivity.label', default: 'YosemiteActivity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-yosemiteActivity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-yosemiteActivity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list yosemiteActivity">
			
				<g:if test="${yosemiteActivityInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="yosemiteActivity.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${yosemiteActivityInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yosemiteActivityInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="yosemiteActivity.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${yosemiteActivityInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yosemiteActivityInstance?.groupSize}">
				<li class="fieldcontain">
					<span id="groupSize-label" class="property-label"><g:message code="yosemiteActivity.groupSize.label" default="Group Size" /></span>
					
						<span class="property-value" aria-labelledby="groupSize-label"><g:fieldValue bean="${yosemiteActivityInstance}" field="groupSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${yosemiteActivityInstance?.dayOne}">
				<li class="fieldcontain">
					<span id="dayOne-label" class="property-label"><g:message code="yosemiteActivity.dayOne.label" default="Day One" /></span>
					
						<span class="property-value" aria-labelledby="dayOne-label"><g:formatBoolean boolean="${yosemiteActivityInstance?.dayOne}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${yosemiteActivityInstance?.dayTwo}">
				<li class="fieldcontain">
					<span id="dayTwo-label" class="property-label"><g:message code="yosemiteActivity.dayTwo.label" default="Day Two" /></span>
					
						<span class="property-value" aria-labelledby="dayTwo-label"><g:formatBoolean boolean="${yosemiteActivityInstance?.dayTwo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${yosemiteActivityInstance?.attendees}">
				<li class="fieldcontain">
					<span id="attendees-label" class="property-label"><g:message code="yosemiteActivity.attendees.label" default="Attendees" /></span>
					
						<g:each in="${yosemiteActivityInstance.attendees}" var="a">
						<span class="property-value" aria-labelledby="attendees-label"><g:link controller="user" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:yosemiteActivityInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${yosemiteActivityInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
