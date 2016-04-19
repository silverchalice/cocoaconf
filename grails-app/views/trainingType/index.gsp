
<%@ page import="com.cocoaconf.TrainingType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trainingType.label', default: 'TrainingType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trainingType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trainingType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="prereq" title="${message(code: 'trainingType.prereq.label', default: 'Prereq')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'trainingType.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'trainingType.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trainingTypeInstanceList}" status="i" var="trainingTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trainingTypeInstance.id}">${fieldValue(bean: trainingTypeInstance, field: "prereq")}</g:link></td>
					
						<td>${fieldValue(bean: trainingTypeInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: trainingTypeInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trainingTypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>