
<%@ page import="com.cocoaconf.Prize" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prize.label', default: 'Prize')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prize" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prize" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'prize.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="imageName" title="${message(code: 'prize.imageName.label', default: 'Image Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'prize.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'prize.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="priority" title="${message(code: 'prize.priority.label', default: 'Priority')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prizeInstanceList}" status="i" var="prizeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prizeInstance.id}">${fieldValue(bean: prizeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: prizeInstance, field: "imageName")}</td>
					
						<td>${fieldValue(bean: prizeInstance, field: "description")}</td>
					
						<td><g:formatBoolean boolean="${prizeInstance.active}" /></td>
					
						<td>${fieldValue(bean: prizeInstance, field: "priority")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prizeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
