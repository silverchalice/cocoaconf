<%@ page import="com.cocoaconf.Conference" %>



<div class="fieldcontain ${hasErrors(bean: conference, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="conference.startDate.label" default="Start Date" />
		
	</label>
	<g:datePicker name="startDate" precision="day"  value="${conference?.startDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="conference.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${conference?.endDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'venue', 'error')} ">
	<label for="venue">
		<g:message code="conference.venue.label" default="Venue" />
		
	</label>
	<g:select id="venue" name="venue.id" from="${com.cocoaconf.Venue.list()}" optionKey="id" value="${conference?.venue?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="conference.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="10000" value="${conference?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="conference.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${conference?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'sessions', 'error')} ">
	<label for="sessions">
		<g:message code="conference.sessions.label" default="Sessions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${conference?.sessions?}" var="s">
    <li><g:link controller="session" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="session" action="create" params="['conference.id': conference?.id]">${message(code: 'default.add.label', args: [message(code: 'session.label', default: 'Session')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'speakers', 'error')} ">
	<label for="speakers">
		<g:message code="conference.speakers.label" default="Speakers" />
		
	</label>
	<g:select name="speakers" from="${com.cocoaconf.Speaker.list([sort:'lastName'])}" multiple="multiple" optionKey="id" size="5" value="${conference?.speakers*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="conference.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${conference?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'tinyName', 'error')} ">
	<label for="tinyName">
		<g:message code="conference.tinyName.label" default="Tiny Name" />
		
	</label>
	<g:textField name="tinyName" value="${conference?.tinyName}"/>
</div>

