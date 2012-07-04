<li class="fieldcontain">
	<span id="events-label" class="property-label"><g:message code="partner.events.label" default="Events" /></span>
	
		<g:each in="${partnerInstance.events}" var="e">
		<span class="property-value" aria-labelledby="events-label"><g:link controller="sponsorship" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
		</g:each>
	
</li>
