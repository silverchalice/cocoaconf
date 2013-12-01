
<%@ page import="com.cocoaconf.Click" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'click.label', default: 'Click')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-click" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-click" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="referer" title="${message(code: 'click.referer.label', default: 'Referer')}" />
					
						<g:sortableColumn property="tag" title="${message(code: 'click.tag.label', default: 'Tag')}" />
					
						<th><g:message code="click.conference.label" default="Conference" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'click.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clickInstanceList}" status="i" var="clickInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clickInstance.id}">${fieldValue(bean: clickInstance, field: "referer")}</g:link></td>
					
						<td>${fieldValue(bean: clickInstance, field: "tag")}</td>
					
						<td>${fieldValue(bean: clickInstance, field: "conference")}</td>
					
						<td><g:formatDate date="${clickInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clickInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
