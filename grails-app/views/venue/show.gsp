
<%@ page import="com.cocoaconf.Venue" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venue.label', default: 'Venue')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-venue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-venue" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list venue">
			
				<g:if test="${venueInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="venue.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${venueInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.googleMapsCode}">
				<li class="fieldcontain">
					<span id="googleMapsCode-label" class="property-label"><g:message code="venue.googleMapsCode.label" default="Google Maps Code" /></span>
					
						<span class="property-value" aria-labelledby="googleMapsCode-label"><g:fieldValue bean="${venueInstance}" field="googleMapsCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="venue.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${venueInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="venue.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${venueInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.imagePath}">
				<li class="fieldcontain">
					<span id="imagePath-label" class="property-label"><g:message code="venue.imagePath.label" default="Image Path" /></span>
					
						<span class="property-value" aria-labelledby="imagePath-label"><g:fieldValue bean="${venueInstance}" field="imagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="venue.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${venueInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="venue.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${venueInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="venue.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${venueInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="venue.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${venueInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="venue.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${venueInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="venue.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${venueInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${venueInstance?.id}" />
					<g:link class="edit" action="edit" id="${venueInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
