<%@ page import="com.cocoaconf.Partner" %>



<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="partner.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${partnerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="partner.url.label" default="Url" />
		
	</label>
	<g:field type="url" name="url" value="${partnerInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'blurb', 'error')} ">
	<label for="blurb">
		<g:message code="partner.blurb.label" default="Blurb" />
		
	</label>
	<g:textArea name="blurb" cols="40" rows="5" maxlength="5000" value="${partnerInstance?.blurb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'logoFile', 'error')} ">
	<label for="logoFile">
		<g:message code="partner.logoFile.label" default="Logo File" />
		
	</label>
	<g:textField name="logoFile" value="${partnerInstance?.logoFile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'logoStyle1', 'error')} ">
	<label for="logoStyle1">
		<g:message code="partner.logoStyle1.label" default="Logo Style1" />
		
	</label>
	<g:textField name="logoStyle1" value="${partnerInstance?.logoStyle1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'logoStyle2', 'error')} ">
	<label for="logoStyle2">
		<g:message code="partner.logoStyle2.label" default="Logo Style2" />
		
	</label>
	<g:textField name="logoStyle2" value="${partnerInstance?.logoStyle2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="partner.events.label" default="Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${partnerInstance?.events?}" var="e">
    <li><g:link controller="sponsorship" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sponsorship" action="create" params="['partner.id': partnerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sponsorship.label', default: 'Sponsorship')])}</g:link>
</li>
</ul>

</div>

