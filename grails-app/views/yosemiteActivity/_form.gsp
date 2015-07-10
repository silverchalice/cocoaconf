<%@ page import="com.cocoaconf.YosemiteActivity" %>



<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="yosemiteActivity.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${yosemiteActivityInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="yosemiteActivity.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${yosemiteActivityInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'groupSize', 'error')} required">
	<label for="groupSize">
		<g:message code="yosemiteActivity.groupSize.label" default="Group Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="groupSize" type="number" value="${yosemiteActivityInstance.groupSize}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'dayOne', 'error')} ">
	<label for="dayOne">
		<g:message code="yosemiteActivity.dayOne.label" default="Day One" />
		
	</label>
	<g:checkBox name="dayOne" value="${yosemiteActivityInstance?.dayOne}" />

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'dayTwo', 'error')} ">
	<label for="dayTwo">
		<g:message code="yosemiteActivity.dayTwo.label" default="Day Two" />
		
	</label>
	<g:checkBox name="dayTwo" value="${yosemiteActivityInstance?.dayTwo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: yosemiteActivityInstance, field: 'attendees', 'error')} ">
	<label for="attendees">
		<g:message code="yosemiteActivity.attendees.label" default="Attendees" />
		
	</label>
	

</div>

