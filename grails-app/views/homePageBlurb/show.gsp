
<%@ page import="com.cocoaconf.HomePageBlurb" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'homePageBlurb.label', default: 'HomePageBlurb')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-homePageBlurb" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-homePageBlurb" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list homePageBlurb">
			
				<g:if test="${homePageBlurbInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="homePageBlurb.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${homePageBlurbInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${homePageBlurbInstance?.priority}">
				<li class="fieldcontain">
					<span id="priority-label" class="property-label"><g:message code="homePageBlurb.priority.label" default="Priority" /></span>
					
						<span class="property-value" aria-labelledby="priority-label"><g:fieldValue bean="${homePageBlurbInstance}" field="priority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${homePageBlurbInstance?.blurb}">
				<li class="fieldcontain">
					<span id="blurb-label" class="property-label"><g:message code="homePageBlurb.blurb.label" default="Blurb" /></span>
					
						<span class="property-value" aria-labelledby="blurb-label"><g:fieldValue bean="${homePageBlurbInstance}" field="blurb"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${homePageBlurbInstance?.id}" />
					<g:link class="edit" action="edit" id="${homePageBlurbInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
