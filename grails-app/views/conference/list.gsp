
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


                        <g:sortableColumn property="description" title="${message(code: 'conference.description.label', default: 'Description')}" />


						<th><g:message code="conference.venue.label" default="Venue" /></th>
					
						<g:sortableColumn property="city" title="${message(code: 'conference.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'conference.state.label', default: 'State')}" />
						<g:sortableColumn property="status" title="${message(code: 'conference.status.label', default: 'Status')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${conferenceList}" status="i" var="conference">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="edit" id="${conference.id}">${fieldValue(bean: conference, field: "description")}</g:link></td>

					
						<td>${fieldValue(bean: conference, field: "venue")}</td>
						<td>${fieldValue(bean: conference, field: "city")}</td>
					
						<td>${fieldValue(bean: conference, field: "state")}</td>
						<td>${fieldValue(bean: conference, field: "status")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conferenceTotal}" />
			</div>
		</div>
	</body>
</html>
