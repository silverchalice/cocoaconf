
<%@ page import="com.cocoaconf.Conference" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conference.label', default: 'Conference')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conference" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conference" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="startDate" title="${message(code: 'conference.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'conference.endDate.label', default: 'End Date')}" />
					
						<th><g:message code="conference.venue.label" default="Venue" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'conference.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'conference.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'conference.state.label', default: 'State')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conferenceInstanceList}" status="i" var="conferenceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conferenceInstance.id}">${fieldValue(bean: conferenceInstance, field: "startDate")}</g:link></td>
					
						<td><g:formatDate date="${conferenceInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: conferenceInstance, field: "venue")}</td>
					
						<td>${fieldValue(bean: conferenceInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: conferenceInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: conferenceInstance, field: "state")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conferenceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
