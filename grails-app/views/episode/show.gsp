
<%@ page import="com.cocoaconf.Episode" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'episode.label', default: 'Episode')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-episode" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-episode" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list episode">
			
				<g:if test="${episodeInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="episode.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${episodeInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.subTitle}">
				<li class="fieldcontain">
					<span id="subTitle-label" class="property-label"><g:message code="episode.subTitle.label" default="Sub Title" /></span>
					
						<span class="property-value" aria-labelledby="subTitle-label"><g:fieldValue bean="${episodeInstance}" field="subTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.signalLeafBlurb}">
				<li class="fieldcontain">
					<span id="signalLeafBlurb-label" class="property-label"><g:message code="episode.signalLeafBlurb.label" default="Signal Leaf Blurb" /></span>
					
						<span class="property-value" aria-labelledby="signalLeafBlurb-label"><g:fieldValue bean="${episodeInstance}" field="signalLeafBlurb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.showNotes}">
				<li class="fieldcontain">
					<span id="showNotes-label" class="property-label"><g:message code="episode.showNotes.label" default="Show Notes" /></span>
					
						<span class="property-value" aria-labelledby="showNotes-label"><g:fieldValue bean="${episodeInstance}" field="showNotes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.episodeNumber}">
				<li class="fieldcontain">
					<span id="episodeNumber-label" class="property-label"><g:message code="episode.episodeNumber.label" default="Episode Number" /></span>
					
						<span class="property-value" aria-labelledby="episodeNumber-label"><g:fieldValue bean="${episodeInstance}" field="episodeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="episode.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${episodeInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="episode.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${episodeInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.datePublished}">
				<li class="fieldcontain">
					<span id="datePublished-label" class="property-label"><g:message code="episode.datePublished.label" default="Date Published" /></span>
					
						<span class="property-value" aria-labelledby="datePublished-label"><g:formatDate date="${episodeInstance?.datePublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.sponsorName}">
				<li class="fieldcontain">
					<span id="sponsorName-label" class="property-label"><g:message code="episode.sponsorName.label" default="Sponsor Name" /></span>
					
						<span class="property-value" aria-labelledby="sponsorName-label"><g:fieldValue bean="${episodeInstance}" field="sponsorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.sponsorLink}">
				<li class="fieldcontain">
					<span id="sponsorLink-label" class="property-label"><g:message code="episode.sponsorLink.label" default="Sponsor Link" /></span>
					
						<span class="property-value" aria-labelledby="sponsorLink-label"><g:fieldValue bean="${episodeInstance}" field="sponsorLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.sponsorBlurb}">
				<li class="fieldcontain">
					<span id="sponsorBlurb-label" class="property-label"><g:message code="episode.sponsorBlurb.label" default="Sponsor Blurb" /></span>
					
						<span class="property-value" aria-labelledby="sponsorBlurb-label"><g:fieldValue bean="${episodeInstance}" field="sponsorBlurb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.downloadLink}">
				<li class="fieldcontain">
					<span id="downloadLink-label" class="property-label"><g:message code="episode.downloadLink.label" default="Download Link" /></span>
					
						<span class="property-value" aria-labelledby="downloadLink-label"><g:fieldValue bean="${episodeInstance}" field="downloadLink"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${episodeInstance?.id}" />
					<g:link class="edit" action="edit" id="${episodeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
