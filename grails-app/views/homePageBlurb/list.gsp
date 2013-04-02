
<%@ page import="com.cocoaconf.HomePageBlurb" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'homePageBlurb.label', default: 'HomePageBlurb')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-homePageBlurb" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-homePageBlurb" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="active" title="${message(code: 'homePageBlurb.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="priority" title="${message(code: 'homePageBlurb.priority.label', default: 'Priority')}" />
					
						<g:sortableColumn property="blurb" title="${message(code: 'homePageBlurb.blurb.label', default: 'Blurb')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${homePageBlurbInstanceList}" status="i" var="homePageBlurbInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${homePageBlurbInstance.id}">${fieldValue(bean: homePageBlurbInstance, field: "active")}</g:link></td>
					
						<td>${fieldValue(bean: homePageBlurbInstance, field: "priority")}</td>
					
						<td>${fieldValue(bean: homePageBlurbInstance, field: "blurb")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${homePageBlurbInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
