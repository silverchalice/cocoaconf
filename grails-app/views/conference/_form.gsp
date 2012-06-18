<%@ page import="com.cocoaconf.Conference" %>



<div class="fieldcontain ${hasErrors(bean: conference, field: 'dates', 'error')} ">
	<label for="dates">
		<g:message code="conference.dates.label" default="Dates" />
	</label>
	<g:textField name="dates" value="${conference?.dates}"/>
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

<div class="fieldcontain ${hasErrors(bean: conference, field: 'blurb', 'error')} ">
	<label for="blurb">
		<g:message code="conference.blurb.label" default="Blurb " />
		
	</label>
	<g:textArea name="blurb" cols="40" rows="5" maxlength="10000" value="${conference?.blurb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'registrationBlurb', 'error')} ">
	<label for="registrationBlurb">
		<g:message code="conference.registrationBlurb.label" default="Registration Blurb" />
		
	</label>
	<g:textArea name="registrationBlurb" cols="40" rows="5" maxlength="10000" value="${conference?.registrationBlurb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'eventBriteBlurb', 'error')} ">
	<label for="eventBriteBlurb">
		<g:message code="conference.eventBriteBlurb.label" default="EventBrite Blurb" />
		
	</label>
	<g:textArea name="eventBriteBlurb" cols="40" rows="5" maxlength="10000" value="${conference?.eventBriteBlurb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'partnerBlurb', 'error')} ">
	<label for="partnerBlurb">
		<g:message code="conference.partnerBlurb.label" default="Partner Blurb" />
		
	</label>
	<g:textArea name="partnerBlurb" cols="40" rows="5" maxlength="10000" value="${conference?.partnerBlurb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conference, field: 'sponsorListBlurb', 'error')} ">
	<label for="partnerBlurb">
		<g:message code="conference.sponsorListBlurb.label" default="Sponsor List Blurb" />
		
	</label>
	<g:textArea name="sponsorListBlurb" cols="40" rows="5" maxlength="10000" value="${conference?.sponsorListBlurb}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: conference, field: 'featuredSpeakers', 'error')} ">
	<label for="featuredSpeakers">
		<g:message code="conference.featuredSpeakers.label" default="Featured Speakers" />
		
	</label>
	<g:textArea name="featuredSpeakers" cols="60" rows="5" maxlength="10000" value="${conference?.featuredSpeakers}"/>
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

<div class="fieldcontain ${hasErrors(bean: conference, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="conference.active.label" default="Active" />
		
	</label>
    <g:checkBox name="active" value="${conference?.active}" />
</div>
