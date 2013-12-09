<%@ page import="cbm.FormG" %>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'facilityName', 'error')} ">
	<label for="facilityName" class="property-label25">
		<g:message code="formG.facilityName.label" default="Facility Name" />
		
	</label>
	<g:textField name="facilityName" value="${formGInstance?.facilityName}"/>
</div>
<fieldset class="embedded"><legend><g:message code="formG.location.label" default="Location" /></legend>
<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.country', 'error')} required">
	<label for="location.country" class="property-label25">
		<g:message code="formG.location.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required="" value="${addressInstance?.country?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.postCode', 'error')} ">
	<label for="location.postCode" class="property-label25">
		<g:message code="formG.location.postCode.label" default="Post Code" />
		
	</label>
	<g:textField name="postCode" maxlength="10" value="${addressInstance?.postCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.street', 'error')} ">
	<label for="location.street" class="property-label25">
		<g:message code="formG.location.street.label" default="Street" />
		
	</label>
	<g:textField name="street" maxlength="200" value="${addressInstance?.street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.town', 'error')} ">
	<label for="location.town" class="property-label25">
		<g:message code="formG.location.town.label" default="Town" />
		
	</label>
	<g:textField name="town" maxlength="100" value="${addressInstance?.town}"/>
</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'typesOfDiseaseCovered', 'error')} ">
	<label for="typesOfDiseaseCovered" class="property-label25">
		<g:message code="formG.typesOfDiseaseCovered.label" default="Types Of Disease Covered" />
		
	</label>
	<g:textArea name="typesOfDiseaseCovered" cols="40" rows="5" maxlength="5000" value="${formGInstance?.typesOfDiseaseCovered}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="formG.report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formGInstance?.report?.id}" class="many-to-one"/>
</div>

<g:set var="formInstance" value="${formGInstance}"></g:set>
<g:render template="../formStatus"/>

