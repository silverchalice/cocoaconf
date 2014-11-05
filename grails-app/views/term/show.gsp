
<%@ page import="com.cocoaconf.Term" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="training">
		<g:set var="entityName" value="${message(code: 'term.label', default: 'Term')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-term" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-term" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list term">
			
				<g:if test="${termInstance?.courses}">
				<li class="fieldcontain">
					<span id="courses-label" class="property-label"><g:message code="term.courses.label" default="Courses" /></span>
					
						<g:each in="${termInstance.courses}" var="c">
						<span class="property-value" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.venue}">
				<li class="fieldcontain">
					<span id="venue-label" class="property-label"><g:message code="term.venue.label" default="Venue" /></span>
					
						<span class="property-value" aria-labelledby="venue-label"><g:link controller="venue" action="show" id="${termInstance?.venue?.id}">${termInstance?.venue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="term.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${termInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="term.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${termInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="term.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${termInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.registrationBlurb}">
				<li class="fieldcontain">
					<span id="registrationBlurb-label" class="property-label"><g:message code="term.registrationBlurb.label" default="Registration Blurb" /></span>
					
						<span class="property-value" aria-labelledby="registrationBlurb-label"><g:fieldValue bean="${termInstance}" field="registrationBlurb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.slug}">
				<li class="fieldcontain">
					<span id="slug-label" class="property-label"><g:message code="term.slug.label" default="Slug" /></span>
					
						<span class="property-value" aria-labelledby="slug-label"><g:fieldValue bean="${termInstance}" field="slug"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="term.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${termInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${termInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="term.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${termInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:termInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${termInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
