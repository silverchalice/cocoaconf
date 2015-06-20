
<%@ page import="com.cocoaconf.Interest" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'interest.label', default: 'Interest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-interest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-interest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'interest.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'interest.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="needHotel" title="${message(code: 'interest.needHotel.label', default: 'Need Hotel')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${interestInstanceList}" status="i" var="interestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${interestInstance.id}">${fieldValue(bean: interestInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: interestInstance, field: "location")}</td>
					
						<td><g:formatBoolean boolean="${interestInstance.needHotel}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${interestInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
