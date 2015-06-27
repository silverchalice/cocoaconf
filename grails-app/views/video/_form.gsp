<%@ page import="com.cocoaconf.Video" %>



<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="video.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${videoInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'slug', 'error')} required">
	<label for="slug">
		<g:message code="video.slug.label" default="Slug" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="slug" required="" value="${videoInstance?.slug}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="video.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${videoInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'playerBlurb', 'error')} ">
	<label for="playerBlurb">
		<g:message code="video.playerBlurb.label" default="Player Blurb" />
		
	</label>
	<g:textArea name="playerBlurb" cols="40" rows="5" maxlength="10000" value="${videoInstance?.playerBlurb}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'speakerPhoto', 'error')} ">
	<label for="speakerPhoto">
		<g:message code="video.speakerPhoto.label" default="Speaker Photo" />
		
	</label>
	<g:textField name="speakerPhoto" value="${videoInstance?.speakerPhoto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'speakerBlurb', 'error')} ">
	<label for="speakerBlurb">
		<g:message code="video.speakerBlurb.label" default="Speaker Blurb" />
		
	</label>
	<g:textArea name="speakerBlurb" cols="40" rows="5" maxlength="5000" value="${videoInstance?.speakerBlurb}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'eventName', 'error')} ">
	<label for="eventName">
		<g:message code="video.eventName.label" default="Event Name" />
		
	</label>
	<g:textField name="eventName" value="${videoInstance?.eventName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'sponsorBlurb', 'error')} ">
	<label for="sponsorBlurb">
		<g:message code="video.sponsorBlurb.label" default="Sponsor Blurb" />
		
	</label>
	<g:textArea name="sponsorBlurb" cols="40" rows="5" maxlength="5000" value="${videoInstance?.sponsorBlurb}"/>

</div>

