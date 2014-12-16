<%@ page import="cbm.form.FormG" %>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formGInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formGInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'facilityName', 'error')} ">
	<label for="facilityName" class="property-label25">
		<g:message code="formG.facilityName.label" default="Facility Name" />
        <span class="required-indicator">*</span>
	</label>
	<g:textField name="facilityName" maxlength="${formGInstance?.constraints?.facilityName?.maxSize}" value="${formGInstance?.facilityName}"/>
</div>

<g:set var="addressInstance" value="${formGInstance}"></g:set>
<g:render template="../address"/>
<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'country', 'error')} required">
    <label for="country" class="property-label25">
        <g:message code="formG.location.country.label" default="Country"/>
        <span class="required-indicator">*</span>
    </label>

    <country:select name="country" value="${formGInstance?.country?.id}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'typesOfDiseaseCovered', 'error')} ">
	<label for="typesOfDiseaseCovered">
		<g:message code="formG.typesOfDiseaseCovered.label" default="Types Of Disease Covered" />
        <span class="required-indicator">*</span>
	</label>
    <div>
	    <g:textArea class="wysiwyg"  name="typesOfDiseaseCovered" cols="40" rows="5" maxlength="${formGInstance?.constraints?.typesOfDiseaseCovered?.maxSize}" value="${formGInstance?.typesOfDiseaseCovered}"/>
    </div>
</div>

<g:set var="formInstance" value="${formGInstance}"></g:set>
<g:render template="../formStatus"/>

