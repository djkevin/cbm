<%@ page import="cbm.FormAPart2a" %>



<div class="fieldcontain ${hasErrors(bean: formAPart2aInstance, field: 'existingNationalProgrammes', 'error')} ">
	<label for="existingNationalProgrammes">
		<g:message code="formAPart2a.existingNationalProgrammes.label" default="Existing National Programmes" />
	</label>
</div>
<div>
	<g:checkBox name="existingNationalProgrammes" widget="radio" value="${formAPart2aInstance?.existingNationalProgrammes}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2aInstance, field: 'report', 'error')} required">
	<label for="report" class="property-label">
		<g:message code="formAPart2a.report.label" default="Report" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formAPart2aInstance?.report?.id}" class="many-to-one"/>
</div>

