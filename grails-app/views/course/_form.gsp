<%@ page import="com.cocoaconf.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'speaker', 'error')} required">
	<label for="speaker">
		<g:message code="course.speaker.label" default="Speaker" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="speaker" name="speaker.id" from="${com.cocoaconf.Speaker.list(sort: 'firstName')}" optionKey="id" required="" value="${courseInstance?.speaker?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'trainingType', 'error')} required">
	<label for="trainingType">
		<g:message code="course.trainingType.label" default="Training Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="trainingType" name="trainingType.id" from="${com.cocoaconf.TrainingType.list()}" optionKey="id" required="" value="${courseInstance?.trainingType?.id}" class="many-to-one"/>

</div>

