<%@ page import="cbm.FormE" %>


<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="formE.report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formEInstance?.report?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'additionalComments', 'error')} ">
	<label for="additionalComments" class="property-label25">
		<g:message code="formE.additionalComments.label" default="Additional Comments" />
		
	</label>
	<g:textField name="additionalComments" value="${formEInstance?.additionalComments}"/>
</div>

${formEInstance.biosafetyAndBioSecurity?.constraints?.amendedSinceLastYear?.inList}
<fieldset class="embedded"><legend><g:message code="formE.biosafetyAndBioSecurity.label" default="Biosafety And Bio Security" /></legend>
<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'biosafetyAndBioSecurity.amendedSinceLastYear', 'error')} ">
	<label for="biosafetyAndBioSecurity.amendedSinceLastYear" class="property-label25">
		<g:message code="formE.biosafetyAndBioSecurity.amendedSinceLastYear.label" default="Amended Since Last Year" />
		
	</label>
<%--	<g:select name="amendedSinceLastYear" from="${formEInstance.declarationOfMeasures.constraints.amendedSinceLastYear.inList}" value="${formEInstance.declarationOfMeasuresInstance?.amendedSinceLastYear}" valueMessagePrefix="declarationOfMeasures.amendedSinceLastYear" noSelection="['': '']"/>--%>
</div>
</fieldset>
<g:set var="formInstance" value="${formEInstance}"></g:set>
<g:render template="../formStatus"/>




