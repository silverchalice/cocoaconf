
<%@ page import="com.cocoaconf.Partner" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'partner.label', default: 'Partner')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<g:javascript library="jquery"/>
	</head>
	<body>
		<a href="#show-partner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-partner" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list partner">
			
				<g:if test="${partnerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="partner.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${partnerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partnerInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="partner.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${partnerInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partnerInstance?.blurb}">
				<li class="fieldcontain">
					<span id="blurb-label" class="property-label"><g:message code="partner.blurb.label" default="Blurb" /></span>
					
						<span class="property-value" aria-labelledby="blurb-label"><g:fieldValue bean="${partnerInstance}" field="blurb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partnerInstance?.logoFile}">
				<li class="fieldcontain">
					<span id="logoFile-label" class="property-label"><g:message code="partner.logoFile.label" default="Logo File" /></span>
					
						<span class="property-value" aria-labelledby="logoFile-label"><g:fieldValue bean="${partnerInstance}" field="logoFile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partnerInstance?.logoStyle1}">
				<li class="fieldcontain">
					<span id="logoStyle1-label" class="property-label"><g:message code="partner.logoStyle1.label" default="Logo Style1" /></span>
					
						<span class="property-value" aria-labelledby="logoStyle1-label"><g:fieldValue bean="${partnerInstance}" field="logoStyle1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partnerInstance?.logoStyle2}">
				<li class="fieldcontain">
					<span id="logoStyle2-label" class="property-label"><g:message code="partner.logoStyle2.label" default="Logo Style2" /></span>
					
						<span class="property-value" aria-labelledby="logoStyle2-label"><g:fieldValue bean="${partnerInstance}" field="logoStyle2"/></span>
					
				</li>
				</g:if>
                <div id="events">
                    <g:render template="events" />			
			    </div>
				<g:formRemote name="eventForm" url="${[action:'addEvent']}" update="events">
					Event id: <g:textField name="event" />
					Level: <g:select name="level" from="['basic', 'silver', 'gold', 'platinum', 'usergroup', 'individual']"/>
					Priority: <g:textField name="priority" />
					<input type="hidden" name="id" value="${partnerInstance.id}" />
					<input type="submit" value="Add Event" />
				</g:formRemote>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${partnerInstance?.id}" />
					<g:link class="edit" action="edit" id="${partnerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
