<%@ page import="com.cocoaconf.Click" %>



<div class="fieldcontain ${hasErrors(bean: clickInstance, field: 'referer', 'error')} ">
	<label for="referer">
		<g:message code="click.referer.label" default="Referer" />
		
	</label>
	<g:textField name="referer" value="${clickInstance?.referer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clickInstance, field: 'tag', 'error')} ">
	<label for="tag">
		<g:message code="click.tag.label" default="Tag" />
		
	</label>
	<g:textField name="tag" value="${clickInstance?.tag}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clickInstance, field: 'conference', 'error')} ">
	<label for="conference">
		<g:message code="click.conference.label" default="Conference" />
		
	</label>
	<g:select id="conference" name="conference.id" from="${com.cocoaconf.Conference.list()}" optionKey="id" value="${clickInstance?.conference?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

