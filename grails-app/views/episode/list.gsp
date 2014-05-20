
<%@ page import="com.cocoaconf.Episode" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'episode.label', default: 'Episode')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-episode" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-episode" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'episode.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="subTitle" title="${message(code: 'episode.subTitle.label', default: 'Sub Title')}" />
					
						<g:sortableColumn property="signalLeafBlurb" title="${message(code: 'episode.signalLeafBlurb.label', default: 'Signal Leaf Blurb')}" />
					
						<g:sortableColumn property="showNotes" title="${message(code: 'episode.showNotes.label', default: 'Show Notes')}" />
					
						<g:sortableColumn property="episodeNumber" title="${message(code: 'episode.episodeNumber.label', default: 'Episode Number')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'episode.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${episodeInstanceList}" status="i" var="episodeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${episodeInstance.id}">${fieldValue(bean: episodeInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: episodeInstance, field: "subTitle")}</td>
					
						<td>${fieldValue(bean: episodeInstance, field: "signalLeafBlurb")}</td>
					
						<td>${fieldValue(bean: episodeInstance, field: "showNotes")}</td>
					
						<td>${fieldValue(bean: episodeInstance, field: "episodeNumber")}</td>
					
						<td><g:formatDate date="${episodeInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${episodeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
