<%@ page import="com.cocoaconf.MugShot" %>



<div class="fieldcontain ${hasErrors(bean: mugShotInstance, field: 'caption', 'error')} ">
	<label for="caption">
		<g:message code="mugShot.caption.label" default="Caption" />
		
	</label>
	<g:textField name="caption" value="${mugShotInstance?.caption}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mugShotInstance, field: 'imagePath', 'error')} ">
	<label for="imagePath">
		<g:message code="mugShot.imagePath.label" default="Image Path" />
		
	</label>
	<g:textField name="imagePath" value="${mugShotInstance?.imagePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mugShotInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="mugShot.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${mugShotInstance?.url}"/>
</div>

