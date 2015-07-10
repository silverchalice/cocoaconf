<%@ page import="com.cocoaconf.TrainingType" %>



<div class="fieldcontain ${hasErrors(bean: trainingTypeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="trainingType.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" style="width: 400px;" value="${trainingTypeInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingTypeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="trainingType.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" required="" value="${trainingTypeInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingTypeInstance, field: 'prereq', 'error')} ">
	<label for="prereq">
		<g:message code="trainingType.prereq.label" default="Prereq" />
		
	</label>
	<g:textArea name="prereq" value="${trainingTypeInstance?.prereq}"/>

</div>


