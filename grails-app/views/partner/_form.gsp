<%@ page import="com.cocoaconf.Partner" %>



<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'conference', 'error')} required">
	<label for="conference">
		<g:message code="partner.conference.label" default="Conference" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" required="" value="${partnerInstance?.conference?.id}" class="many-to-one"/>
</div>

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

<div class="fieldcontain ${hasErrors(bean: partnerInstance, field: 'level', 'error')} ">
	<label for="level">
		<g:message code="partner.level.label" default="Level" />
		
	</label>
	<g:select name="level" from="${partnerInstance.constraints.level.inList}" value="${partnerInstance?.level}" valueMessagePrefix="partner.level" noSelection="['': '']"/>
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

