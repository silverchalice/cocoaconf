<%@ page import="com.cocoaconf.Term" %>



<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="term.courses.label" default="Courses" />
		
	</label>
	<g:select name="courses" from="${com.cocoaconf.Course.list()}" multiple="multiple" optionKey="id" size="5" value="${termInstance?.courses*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'venue', 'error')} ">
	<label for="venue">
		<g:message code="term.venue.label" default="Venue" />
		
	</label>
	<g:select id="venue" name="venue.id" from="${com.cocoaconf.Venue.list()}" optionKey="id" value="${termInstance?.venue?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="term.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${termInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="term.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${termInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="term.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${termInstance?.isActive}" />

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'registrationBlurb', 'error')} required">
	<label for="registrationBlurb">
		<g:message code="term.registrationBlurb.label" default="Registration Blurb" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="registrationBlurb" required="" value="${termInstance?.registrationBlurb}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'slug', 'error')} required">
	<label for="slug">
		<g:message code="term.slug.label" default="Slug" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="slug" required="" value="${termInstance?.slug}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="term.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${termInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="term.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${termInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: termInstance, field: 'messageText', 'error')}">
	<label for="messageText">
		<g:message code="term.messageText.label" default="Message Text" />
	</label>
	<g:textArea name="messageText" value="${termInstance?.messageText}"/>

</div>

