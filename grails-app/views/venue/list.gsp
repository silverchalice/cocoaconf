
<%@ page import="com.cocoaconf.Venue" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venue.label', default: 'Venue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-venue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-venue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'venue.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="googleMapsCode" title="${message(code: 'venue.googleMapsCode.label', default: 'Google Maps Code')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'venue.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="website" title="${message(code: 'venue.website.label', default: 'Website')}" />
					
						<g:sortableColumn property="imagePath" title="${message(code: 'venue.imagePath.label', default: 'Image Path')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'venue.address2.label', default: 'Address2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${venueInstanceList}" status="i" var="venueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${venueInstance.id}">${fieldValue(bean: venueInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: venueInstance, field: "googleMapsCode")}</td>
					
						<td>${fieldValue(bean: venueInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: venueInstance, field: "website")}</td>
					
						<td>${fieldValue(bean: venueInstance, field: "imagePath")}</td>
					
						<td>${fieldValue(bean: venueInstance, field: "address2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${venueInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
