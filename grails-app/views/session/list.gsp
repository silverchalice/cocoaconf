
<%@ page import="com.cocoaconf.Session" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-session" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-session" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="conference" title="${message(code: 'session.conf.label', default: 'Conf')}" />
						<g:sortableColumn property="day" title="${message(code: 'session.day.label', default: 'Day')}" />
						<g:sortableColumn property="slot" title="${message(code: 'session.slot.label', default: 'Slot')}" />
						<g:sortableColumn property="track" title="${message(code: 'session.track.label', default: 'Track')}" />
						<g:sortableColumn property="presentation" title="${message(code: 'session.track.label', default: 'Presentation')}" />
						<g:sortableColumn property="start" title="${message(code: 'session.start.label', default: 'Start')}" />
						<g:sortableColumn property="end" title="${message(code: 'session.end.label', default: 'End')}" />
						<g:sortableColumn property="room" title="${message(code: 'session.room.label', default: 'Room')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sessionInstanceList}" status="i" var="sessionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "conference")}</g:link></td>
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "day")}</g:link></td>
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "slot")}</g:link></td>
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "track")}</g:link></td>
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "presentation")}</g:link></td>
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "start")}</g:link></td>
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "end")}</g:link></td>
						<td><g:link action="show" id="${sessionInstance.id}">${fieldValue(bean: sessionInstance, field: "room")}</g:link></td>
					
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sessionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
