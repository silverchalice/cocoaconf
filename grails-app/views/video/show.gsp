
<%@ page import="com.cocoaconf.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-video" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list video">
			
				<g:if test="${videoInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="video.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${videoInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="video.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${videoInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.playerBlurb}">
				<li class="fieldcontain">
					<span id="playerBlurb-label" class="property-label"><g:message code="video.playerBlurb.label" default="Player Blurb" /></span>
					
						<span class="property-value" aria-labelledby="playerBlurb-label"><g:fieldValue bean="${videoInstance}" field="playerBlurb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.speakerPhoto}">
				<li class="fieldcontain">
					<span id="speakerPhoto-label" class="property-label"><g:message code="video.speakerPhoto.label" default="Speaker Photo" /></span>
					
						<span class="property-value" aria-labelledby="speakerPhoto-label"><g:fieldValue bean="${videoInstance}" field="speakerPhoto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.speakerBlurb}">
				<li class="fieldcontain">
					<span id="speakerBlurb-label" class="property-label"><g:message code="video.speakerBlurb.label" default="Speaker Blurb" /></span>
					
						<span class="property-value" aria-labelledby="speakerBlurb-label"><g:fieldValue bean="${videoInstance}" field="speakerBlurb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.eventName}">
				<li class="fieldcontain">
					<span id="eventName-label" class="property-label"><g:message code="video.eventName.label" default="Event Name" /></span>
					
						<span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${videoInstance}" field="eventName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.sponsorBlurb}">
				<li class="fieldcontain">
					<span id="sponsorBlurb-label" class="property-label"><g:message code="video.sponsorBlurb.label" default="Sponsor Blurb" /></span>
					
						<span class="property-value" aria-labelledby="sponsorBlurb-label"><g:fieldValue bean="${videoInstance}" field="sponsorBlurb"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
