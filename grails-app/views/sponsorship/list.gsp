
<%@ page import="com.cocoaconf.Sponsorship" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sponsorship.label', default: 'Sponsorship')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sponsorship" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sponsorship" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="sponsorship.conference.label" default="Conference" /></th>
					
						<th><g:message code="sponsorship.partner.label" default="Partner" /></th>
					
						<g:sortableColumn property="level" title="${message(code: 'sponsorship.level.label', default: 'Level')}" />
					
						<g:sortableColumn property="priority" title="${message(code: 'sponsorship.priority.label', default: 'Priority')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sponsorshipInstanceList}" status="i" var="sponsorshipInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sponsorshipInstance.id}">${fieldValue(bean: sponsorshipInstance, field: "conference")}</g:link></td>
					
						<td>${fieldValue(bean: sponsorshipInstance, field: "partner")}</td>
					
						<td>${fieldValue(bean: sponsorshipInstance, field: "level")}</td>
					
						<td>${fieldValue(bean: sponsorshipInstance, field: "priority")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sponsorshipInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
