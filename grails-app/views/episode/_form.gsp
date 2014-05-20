<%@ page import="com.cocoaconf.Episode" %>



<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="episode.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${episodeInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'subTitle', 'error')} ">
	<label for="subTitle">
		<g:message code="episode.subTitle.label" default="Sub Title" />
		
	</label>
	<g:textField name="subTitle" value="${episodeInstance?.subTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'signalLeafBlurb', 'error')} ">
	<label for="signalLeafBlurb">
		<g:message code="episode.signalLeafBlurb.label" default="Signal Leaf Blurb" />
		
	</label>
	<g:textField name="signalLeafBlurb" value="${episodeInstance?.signalLeafBlurb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'showNotes', 'error')} ">
	<label for="showNotes">
		<g:message code="episode.showNotes.label" default="Show Notes" />
		
	</label>
	<g:textArea name="showNotes" cols="40" rows="5" maxlength="10000" value="${episodeInstance?.showNotes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'episodeNumber', 'error')} required">
	<label for="episodeNumber">
		<g:message code="episode.episodeNumber.label" default="Episode Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="episodeNumber" type="number" value="${episodeInstance.episodeNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'datePublished', 'error')} ">
	<label for="datePublished">
		<g:message code="episode.datePublished.label" default="Date Published" />
		
	</label>
	<g:datePicker name="datePublished" precision="day"  value="${episodeInstance?.datePublished}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'sponsorName', 'error')} ">
	<label for="sponsorName">
		<g:message code="episode.sponsorName.label" default="Sponsor Name" />
		
	</label>
	<g:textField name="sponsorName" value="${episodeInstance?.sponsorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'sponsorLink', 'error')} ">
	<label for="sponsorLink">
		<g:message code="episode.sponsorLink.label" default="Sponsor Link" />
		
	</label>
	<g:textField name="sponsorLink" value="${episodeInstance?.sponsorLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'sponsorBlurb', 'error')} ">
	<label for="sponsorBlurb">
		<g:message code="episode.sponsorBlurb.label" default="Sponsor Blurb" />
		
	</label>
	<g:textArea name="sponsorBlurb" cols="40" rows="5" maxlength="2000" value="${episodeInstance?.sponsorBlurb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'downloadLink', 'error')} ">
	<label for="downloadLink">
		<g:message code="episode.downloadLink.label" default="Download Link" />
		
	</label>
	<g:textField name="downloadLink" value="${episodeInstance?.downloadLink}"/>
</div>

