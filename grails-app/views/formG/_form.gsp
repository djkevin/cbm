<%@ page import="cbm.FormG" %>


<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'facilityName', 'error')} ">
	<label for="facilityName" class="property-label25">
		<g:message code="formG.facilityName.label" default="Facility Name" />
		
	</label>
	<g:textField name="facilityName" value="${formGInstance?.facilityName}"/>
</div>
<g:set var="addressInstance" value="${formGInstance}"></g:set>
<g:render template="../address"/>


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
    <g:hiddenField name="report.id" id="report" value="${formGInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formGInstance?.report}" readonly="true" />
</div>

<g:set var="formInstance" value="${formGInstance}"></g:set>
<g:render template="../formStatus"/>

