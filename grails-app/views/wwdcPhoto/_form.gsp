<%@ page import="com.cocoaconf.WwdcPhoto" %>



<div class="fieldcontain ${hasErrors(bean: wwdcPhotoInstance, field: 'year', 'error')} ">
	<label for="year">
		<g:message code="wwdcPhoto.year.label" default="Year" />
		
	</label>
	<g:textField name="year" value="${wwdcPhotoInstance?.year}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wwdcPhotoInstance, field: 'caption', 'error')} ">
	<label for="caption">
		<g:message code="wwdcPhoto.caption.label" default="Caption" />
		
	</label>
	<g:textField name="caption" value="${wwdcPhotoInstance?.caption}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wwdcPhotoInstance, field: 'imagePath', 'error')} ">
	<label for="imagePath">
		<g:message code="wwdcPhoto.imagePath.label" default="Image Path" />
		
	</label>
	<g:textField name="imagePath" value="${wwdcPhotoInstance?.imagePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wwdcPhotoInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="wwdcPhoto.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${wwdcPhotoInstance?.url}"/>
</div>

