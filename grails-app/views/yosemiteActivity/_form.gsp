<%@ page import="com.cocoaconf.YosemiteActivity" %>



<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="yosemiteActivity.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${yosemiteActivityInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="yosemiteActivity.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${yosemiteActivityInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'limit', 'error')} required">
	<label for="limit">
		<g:message code="yosemiteActivity.limit.label" default="Limit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="limit" type="number" value="${yosemiteActivityInstance.limit}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'attendees', 'error')} ">
	<label for="attendees">
		<g:message code="yosemiteActivity.attendees.label" default="Attendees" />
		
	</label>
	

</div>

