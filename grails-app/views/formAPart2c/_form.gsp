<%@ page import="cbm.FormAPart2c" %>



<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'addressLine2', 'error')} ">
	<label for="addressLine2" class="property-label25">
		<g:message code="formAPart2c.addressLine2.label" default="Address Line2" />
		
	</label>
	<g:textField name="addressLine2" value="${formAPart2cInstance?.addressLine2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'city', 'error')} ">
	<label for="city" class="property-label25">
		<g:message code="formAPart2c.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${formAPart2cInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'facilityName', 'error')} ">
	<label for="facilityName" class="property-label25">
		<g:message code="formAPart2c.facilityName.label" default="Facility Name" />
		
	</label>
	<g:textField name="facilityName" value="${formAPart2cInstance?.facilityName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'location', 'error')} ">
	<label for="location" class="property-label25">
		<g:message code="formAPart2c.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${formAPart2cInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'mailingAddress', 'error')} ">
	<label for="mailingAddress" class="property-label25">
		<g:message code="formAPart2c.mailingAddress.label" default="Mailing Address" />
		
	</label>
	<g:textField name="mailingAddress" value="${formAPart2cInstance?.mailingAddress}"/>
</div>

