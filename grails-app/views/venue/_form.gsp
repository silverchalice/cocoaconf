<%@ page import="com.cocoaconf.Venue" %>



<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="venue.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="10000" value="${venueInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'googleMapsCode', 'error')} ">
	<label for="googleMapsCode">
		<g:message code="venue.googleMapsCode.label" default="Google Maps Code" />
		
	</label>
	<g:textArea name="googleMapsCode" cols="40" rows="5" maxlength="9999999" value="${venueInstance?.googleMapsCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="venue.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${venueInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="venue.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${venueInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'imagePath', 'error')} ">
	<label for="imagePath">
		<g:message code="venue.imagePath.label" default="Image Path" />
		
	</label>
	<g:textField name="imagePath" value="${venueInstance?.imagePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="venue.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${venueInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="venue.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${venueInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="venue.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${venueInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="venue.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${venueInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="venue.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${venueInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="venue.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${venueInstance?.zip}"/>
</div>

