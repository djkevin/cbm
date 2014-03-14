<%@ page import="cbm.FormAPart1b" %>

<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="formAPart1b.report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formAPart1bInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formAPart1bInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'bioSafetyLevel3', 'error')} ">
	<label for="bioSafetyLevel3" class="property-label25">
		<g:message code="formAPart1b.bioSafetyLevel3.label" default="Bio Safety Level3" />
		
	</label>
	<g:checkBox name="bioSafetyLevel3" value="${formAPart1bInstance?.bioSafetyLevel3}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'bioSafetyLevel2', 'error')} ">
	<label for="bioSafetyLevel2" class="property-label25">
		<g:message code="formAPart1b.bioSafetyLevel2.label" default="Bio Safety Level2" />
		
	</label>
	<g:checkBox name="bioSafetyLevel2" value="${formAPart1bInstance?.bioSafetyLevel2}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'additionalInformation', 'error')} ">
	<label for="additionalInformation" class="property-label25">
		<g:message code="formAPart1b.additionalInformation.label" default="Additional Information" />
		
	</label>
	<g:textArea name="additionalInformation" cols="40" rows="5" maxlength="${formAPart1bInstance?.constraints?.additionalInformation?.maxSize}" value="${formAPart1bInstance?.additionalInformation}"/>
</div>

<g:set var="formInstance" value="${formAPart1bInstance}"></g:set>
<g:render template="../formStatus"/>

