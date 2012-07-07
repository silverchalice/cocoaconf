<%@ page import="com.cocoaconf.Prize" %>



<div class="fieldcontain ${hasErrors(bean: prizeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="prize.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${prizeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prizeInstance, field: 'imageName', 'error')} ">
	<label for="imageName">
		<g:message code="prize.imageName.label" default="Image Name" />
		
	</label>
	<g:textField name="imageName" value="${prizeInstance?.imageName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prizeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="prize.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${prizeInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prizeInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="prize.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="priority" step="any" required="" value="${prizeInstance.priority}"/>
</div>

