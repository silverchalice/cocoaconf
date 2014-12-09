
<%@ page import="com.cocoaconf.YosemiteActivity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'yosemiteActivity.label', default: 'YosemiteActivity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-yosemiteActivity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-yosemiteActivity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'yosemiteActivity.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'yosemiteActivity.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="groupSize" title="${message(code: 'yosemiteActivity.groupSize.label', default: 'Group Size')}" />
					
						<g:sortableColumn property="dayOne" title="${message(code: 'yosemiteActivity.dayOne.label', default: 'Day One')}" />
					
						<g:sortableColumn property="dayTwo" title="${message(code: 'yosemiteActivity.dayTwo.label', default: 'Day Two')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${yosemiteActivityInstanceList}" status="i" var="yosemiteActivityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${yosemiteActivityInstance.id}">${fieldValue(bean: yosemiteActivityInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: yosemiteActivityInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: yosemiteActivityInstance, field: "groupSize")}</td>
					
						<td><g:formatBoolean boolean="${yosemiteActivityInstance.dayOne}" /></td>
					
						<td><g:formatBoolean boolean="${yosemiteActivityInstance.dayTwo}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${yosemiteActivityInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
