<%@ page import="com.cocoaconf.TextBit" %>



<div class="fieldcontain ${hasErrors(bean: textBitInstance, field: 'contents', 'error')} ">
	<label for="contents">
		<g:message code="textBit.contents.label" default="Contents" />
		
	</label>
	<g:textArea name="contents" cols="40" rows="5" maxlength="1000000000" value="${textBitInstance?.contents}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: textBitInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="textBit.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="10000" required="" value="${textBitInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: textBitInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="textBit.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${textBitInstance?.name}"/>

</div>

