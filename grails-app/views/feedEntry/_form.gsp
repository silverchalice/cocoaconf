<%@ page import="com.cocoaconf.FeedEntry" %>



<div class="fieldcontain ${hasErrors(bean: feedEntryInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="feedEntry.body.label" default="Body" />
		
	</label>
	<g:textField name="body" value="${feedEntryInstance?.body}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: feedEntryInstance, field: 'link', 'error')} ">
	<label for="link">
		<g:message code="feedEntry.link.label" default="Link" />
		
	</label>
	<g:textField name="link" value="${feedEntryInstance?.link}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: feedEntryInstance, field: 'published', 'error')} required">
	<label for="published">
		<g:message code="feedEntry.published.label" default="Published" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="published" precision="day"  value="${feedEntryInstance?.published}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: feedEntryInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="feedEntry.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${feedEntryInstance?.title}"/>
</div>

