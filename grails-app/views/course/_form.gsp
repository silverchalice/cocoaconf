<%@ page import="com.cocoaconf.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'speaker', 'error')} required">
	<label for="speaker">
		<g:message code="course.speaker.label" default="Speaker" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="speaker" name="speaker.id" from="${com.cocoaconf.Speaker.list(sort: 'firstName')}" optionKey="id" required="" value="${courseInstance?.speaker?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'trainingClass', 'error')} required">
	<label for="trainingClass">
		<g:message code="course.trainingClass.label" default="Training Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="trainingClass" name="trainingClass.id" from="${com.cocoaconf.TrainingClass.list()}" optionKey="id" required="" value="${courseInstance?.trainingClass?.id}" class="many-to-one"/>

</div>

