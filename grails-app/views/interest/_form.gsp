<%@ page import="com.cocoaconf.Interest" %>



<div class="fieldcontain ${hasErrors(bean: interestInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="interest.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${interestInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: interestInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="interest.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${interestInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: interestInstance, field: 'needHotel', 'error')} ">
	<label for="needHotel">
		<g:message code="interest.needHotel.label" default="Need Hotel" />
		
	</label>
	<g:checkBox name="needHotel" value="${interestInstance?.needHotel}" />
</div>

<div class="fieldcontain ${hasErrors(bean: interestInstance, field: 'conference', 'error')} required">
	<label for="conference">
		<g:message code="interest.conference.label" default="Conference" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" required="" value="${interestInstance?.conference?.id}" class="many-to-one"/>
</div>

