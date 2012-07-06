
<%@ page import="com.cocoaconf.PresentationFile" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'presentationFile.label', default: 'PresentationFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-presentationFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-presentationFile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="presentationFile.conference.label" default="Conference" /></th>
					
						<th><g:message code="presentationFile.speaker.label" default="Speaker" /></th>
					
						<th><g:message code="presentationFile.presentation.label" default="Presentation" /></th>
					
						<g:sortableColumn property="type" title="${message(code: 'presentationFile.type.label', default: 'Type')}" />

						<g:sortableColumn property="link" title="${message(code: 'presentationFile.link.label', default: 'Link')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${presentationFileInstanceList}" status="i" var="presentationFileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${presentationFileInstance.id}">${fieldValue(bean: presentationFileInstance, field: "conference")}</g:link></td>
					
						<td>${fieldValue(bean: presentationFileInstance, field: "speaker")}</td>
					
						<td>${fieldValue(bean: presentationFileInstance, field: "presentation")}</td>
						
						<td>${fieldValue(bean: presentationFileInstance, field: "type")}</td>
					
						<td><a href="${presentationFileInstance.link}">${presentationFileInstance.link}</a></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${presentationFileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
