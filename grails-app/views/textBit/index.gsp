
<%@ page import="com.cocoaconf.TextBit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'textBit.label', default: 'TextBit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-textBit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-textBit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="contents" title="${message(code: 'textBit.contents.label', default: 'Contents')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'textBit.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'textBit.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${textBitInstanceList}" status="i" var="textBitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${textBitInstance.id}">${fieldValue(bean: textBitInstance, field: "contents")}</g:link></td>
					
						<td>${fieldValue(bean: textBitInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: textBitInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${textBitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
