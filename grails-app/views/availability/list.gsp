
<%@ page import="com.cocoaconf.Availability" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'availability.label', default: 'Availability')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-availability" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-availability" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="comments" title="${message(code: 'availability.comments.label', default: 'Comments')}" />
					
						<g:sortableColumn property="available" title="${message(code: 'availability.available.label', default: 'Available')}" />
					
						<th><g:message code="availability.conference.label" default="Conference" /></th>
					
						<g:sortableColumn property="numberOfTalks" title="${message(code: 'availability.numberOfTalks.label', default: 'Number Of Talks')}" />
					
						<g:sortableColumn property="travelHelp" title="${message(code: 'availability.travelHelp.label', default: 'Travel Help')}" />
					
						<th><g:message code="availability.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${availabilityInstanceList}" status="i" var="availabilityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${availabilityInstance.id}">${fieldValue(bean: availabilityInstance, field: "comments")}</g:link></td>
					
						<td><g:formatBoolean boolean="${availabilityInstance.available}" /></td>
					
						<td>${fieldValue(bean: availabilityInstance, field: "conference")}</td>
					
						<td>${fieldValue(bean: availabilityInstance, field: "numberOfTalks")}</td>
					
						<td><g:formatBoolean boolean="${availabilityInstance.travelHelp}" /></td>
					
						<td>${fieldValue(bean: availabilityInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${availabilityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
