<%@ page import="com.cocoaconf.Sponsorship" %>



<div class="fieldcontain ${hasErrors(bean: sponsorshipInstance, field: 'conference', 'error')} required">
	<label for="conference">
		<g:message code="sponsorship.conference.label" default="Conference" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" required="" value="${sponsorshipInstance?.conference?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorshipInstance, field: 'partner', 'error')} required">
	<label for="partner">
		<g:message code="sponsorship.partner.label" default="Partner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="partner" name="partner.id" from="${com.cocoaconf.Partner.list()}" optionKey="id" required="" value="${sponsorshipInstance?.partner?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorshipInstance, field: 'level', 'error')} ">
	<label for="level">
		<g:message code="sponsorship.level.label" default="Level" />
		
	</label>
	<g:select name="level" from="${sponsorshipInstance.constraints.level.inList}" value="${sponsorshipInstance?.level}" valueMessagePrefix="sponsorship.level" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorshipInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="sponsorship.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="priority" required="" value="${sponsorshipInstance.priority}"/>
</div>

