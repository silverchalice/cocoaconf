<%@ page import="com.cocoaconf.Availability" %>



<div class="fieldcontain ${hasErrors(bean: availabilityInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="availability.comments.label" default="Comments" />
		
	</label>
	<g:textArea name="comments" cols="40" rows="5" maxlength="10000" value="${availabilityInstance?.comments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: availabilityInstance, field: 'available', 'error')} ">
	<label for="available">
		<g:message code="availability.available.label" default="Available" />
		
	</label>
	<g:checkBox name="available" value="${availabilityInstance?.available}" />
</div>

<div class="fieldcontain ${hasErrors(bean: availabilityInstance, field: 'conference', 'error')} required">
	<label for="conference">
		<g:message code="availability.conference.label" default="Conference" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" required="" value="${availabilityInstance?.conference?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: availabilityInstance, field: 'numberOfTalks', 'error')} required">
	<label for="numberOfTalks">
		<g:message code="availability.numberOfTalks.label" default="Number Of Talks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfTalks" type="number" value="${availabilityInstance.numberOfTalks}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: availabilityInstance, field: 'travelHelp', 'error')} ">
	<label for="travelHelp">
		<g:message code="availability.travelHelp.label" default="Travel Help" />
		
	</label>
	<g:checkBox name="travelHelp" value="${availabilityInstance?.travelHelp}" />
</div>

<div class="fieldcontain ${hasErrors(bean: availabilityInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="availability.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.cocoaconf.User.list()}" optionKey="id" required="" value="${availabilityInstance?.user?.id}" class="many-to-one"/>
</div>

