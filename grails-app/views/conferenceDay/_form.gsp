<%@ page import="com.cocoaconf.ConferenceDay" %>



<div class="fieldcontain ${hasErrors(bean: conferenceDayInstance, field: 'conference', 'error')} required">
	<label for="conference">
		<g:message code="conferenceDay.conference.label" default="Conference" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" required="" value="${conferenceDayInstance?.conference?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conferenceDayInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="conferenceDay.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${conferenceDayInstance?.name}"/>
</div>

