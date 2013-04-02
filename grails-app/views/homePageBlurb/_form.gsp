<%@ page import="com.cocoaconf.HomePageBlurb" %>



<div class="fieldcontain ${hasErrors(bean: homePageBlurbInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="homePageBlurb.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${homePageBlurbInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: homePageBlurbInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="homePageBlurb.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="priority" type="number" value="${homePageBlurbInstance.priority}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: homePageBlurbInstance, field: 'blurb', 'error')} ">
	<label for="blurb">
		<g:message code="homePageBlurb.blurb.label" default="Blurb" />
		
	</label>
	<g:textArea name="blurb" cols="40" rows="5" maxlength="10000" value="${homePageBlurbInstance?.blurb}"/>
</div>

