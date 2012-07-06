<%@ page import="com.cocoaconf.PresentationFile" %>



<div class="fieldcontain ${hasErrors(bean: presentationFileInstance, field: 'conference', 'error')} required">
	<label for="conference">
		<g:message code="presentationFile.conference.label" default="Conference" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" required="" value="${presentationFileInstance?.conference?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: presentationFileInstance, field: 'speaker', 'error')} required">
	<label for="speaker">
		<g:message code="presentationFile.speaker.label" default="Speaker" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="speaker" name="speaker.id" from="${com.cocoaconf.Speaker.list(sort:'lastName')}" optionKey="id" required="" value="${presentationFileInstance?.speaker?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: presentationFileInstance, field: 'presentation', 'error')} required">
	<label for="presentation">
		<g:message code="presentationFile.presentation.label" default="Presentation" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="presentation" name="presentation.id" from="${com.cocoaconf.Presentation.list()}" optionKey="id" required="" value="${presentationFileInstance?.presentation?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: presentationFileInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="presentationFile.type.label" default="Type" />
		
	</label>
	<g:select id="type" name="type" from="${['Slides', 'Code']}" value="${presentationFileInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: presentationFileInstance, field: 'link', 'error')} ">
	<label for="link">
		<g:message code="presentationFile.link.label" default="Link" />
		
	</label>
	<g:textField name="link" value="${presentationFileInstance?.link}"/>
</div>

