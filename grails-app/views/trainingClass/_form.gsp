<%@ page import="com.cocoaconf.TrainingClass" %>



<div class="fieldcontain ${hasErrors(bean: trainingClassInstance, field: 'prereq', 'error')} ">
	<label for="prereq">
		<g:message code="trainingClass.prereq.label" default="Prereq" />
		
	</label>
	<g:textField name="prereq" value="${trainingClassInstance?.prereq}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingClassInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="trainingClass.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${trainingClassInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingClassInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="trainingClass.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${trainingClassInstance?.title}"/>

</div>

