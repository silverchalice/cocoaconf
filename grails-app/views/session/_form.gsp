<%@ page import="com.cocoaconf.Session" %>



<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'start', 'error')} ">
	<label for="start">
		<g:message code="session.start.label" default="Start" />
		
	</label>
	<g:textField name="start" value="${sessionInstance?.start}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'end', 'error')} ">
	<label for="end">
		<g:message code="session.end.label" default="End" />
		
	</label>
	<g:textField name="end" value="${sessionInstance?.end}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'room', 'error')} ">
	<label for="room">
		<g:message code="session.room.label" default="Room" />
		
	</label>
	<g:textField name="room" value="${sessionInstance?.room}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'track', 'error')} ">
	<label for="track">
		<g:message code="session.track.label" default="Track" />
		
	</label>
	<g:field type="number" name="track" value="${fieldValue(bean: sessionInstance, field: 'track')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'day', 'error')} ">
	<label for="day">
		<g:message code="session.day.label" default="Day" />
		
	</label>
	<g:field type="number" name="day" value="${fieldValue(bean: sessionInstance, field: 'day')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'slot', 'error')} ">
	<label for="slot">
		<g:message code="session.slot.label" default="Slot" />
		
	</label>
	<g:field type="number" name="slot" value="${fieldValue(bean: sessionInstance, field: 'slot')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="session.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${sessionInstance.constraints.type.inList}" value="${sessionInstance?.type}" valueMessagePrefix="session.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'conference', 'error')} required">
	<label for="conference">
		<g:message code="session.conference.label" default="Conference" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" required="" value="${sessionInstance?.conference?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'presentation', 'error')} required">
	<label for="presentation">
		<g:message code="session.presentation.label" default="Presentation" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="presentation" name="presentation.id" from="${com.cocoaconf.Presentation.list(sort:'speaker')}" optionKey="id" required="" value="${sessionInstance?.presentation?.id}" class="many-to-one"/>
</div>

