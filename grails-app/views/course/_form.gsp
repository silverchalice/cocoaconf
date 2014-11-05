<%@ page import="com.cocoaconf.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="course.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${courseInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'speaker', 'error')} required">
	<label for="speaker">
		<g:message code="course.speaker.label" default="Speaker" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="speaker" name="speaker.id" from="${com.cocoaconf.Speaker.list(sort: 'lastName')}" optionKey="id" required="" value="${courseInstance?.speaker?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'prereq', 'error')} ">
	<label for="prereq">
		<g:message code="course.prereq.label" default="Prereq" />
		
	</label>
	<g:textArea name="prereq" value="${courseInstance?.prereq}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" required="" value="${courseInstance?.description}"/>

</div>

