
<%@ page import="com.cocoaconf.FeedEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feedEntry.label', default: 'FeedEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-feedEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-feedEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="body" title="${message(code: 'feedEntry.body.label', default: 'Body')}" />
					
						<g:sortableColumn property="link" title="${message(code: 'feedEntry.link.label', default: 'Link')}" />
					
						<g:sortableColumn property="published" title="${message(code: 'feedEntry.published.label', default: 'Published')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'feedEntry.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${feedEntryInstanceList}" status="i" var="feedEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${feedEntryInstance.id}">${fieldValue(bean: feedEntryInstance, field: "body")}</g:link></td>
					
						<td>${fieldValue(bean: feedEntryInstance, field: "link")}</td>
					
						<td><g:formatDate date="${feedEntryInstance.published}" /></td>
					
						<td>${fieldValue(bean: feedEntryInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${feedEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
