<%@ page import="cbm.FormF" %>


<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'entryIntoForceOfConvention', 'error')} required">
	<label for="entryIntoForceOfConvention" class="property-label25">
		<g:message code="formF.entryIntoForceOfConvention.label" default="Entry Into Force Of Convention" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="entryIntoForceOfConvention" precision="day"  value="${formFInstance?.entryIntoForceOfConvention}"  />
</div>
<fieldset class="embedded"><legend><g:message code="formF.defensiveActivity.label" default="Defensive Activity" /></legend>
<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.pastBiologicalActivity', 'error')} ">
	<label for="defensiveActivity.pastBiologicalActivity" class="property-label25">
		<g:message code="formF.defensiveActivity.pastBiologicalActivity.label" default="Past Biological Activity" />
		
	</label>
	<g:checkBox name="pastBiologicalActivity" value="${pastBiologicalRnDActivityInstance?.pastBiologicalActivity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.periodOfActivity', 'error')} ">
	<label for="defensiveActivity.periodOfActivity" class="property-label25">
		<g:message code="formF.defensiveActivity.periodOfActivity.label" default="Period Of Activity" />
		
	</label>
	<g:textField name="periodOfActivity" maxlength="100" value="${pastBiologicalRnDActivityInstance?.periodOfActivity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.summaryOfRnDActivities', 'error')} ">
	<label for="defensiveActivity.summaryOfRnDActivities" class="property-label25">
		<g:message code="formF.defensiveActivity.summaryOfRnDActivities.label" default="Summary of R&D Activities" />
		
	</label>
	<g:textArea name="summaryOfRnDActivities" cols="40" rows="5" maxlength="5000" value="${pastBiologicalRnDActivityInstance?.summaryOfRnDActivities}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formF.offensiveActivity.label" default="Offensive Activity" /></legend>
<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.pastBiologicalActivity', 'error')} ">
	<label for="offensiveActivity.pastBiologicalActivity" class="property-label25">
		<g:message code="formF.offensiveActivity.pastBiologicalActivity.label" default="Past Biological Activity" />
		
	</label>
	<g:checkBox name="pastBiologicalActivity" value="${pastBiologicalRnDActivityInstance?.pastBiologicalActivity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.periodOfActivity', 'error')} ">
	<label for="offensiveActivity.periodOfActivity" class="property-label25">
		<g:message code="formF.offensiveActivity.periodOfActivity.label" default="Period Of Activity" />
		
	</label>
	<g:textField name="periodOfActivity" maxlength="100" value="${pastBiologicalRnDActivityInstance?.periodOfActivity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.summaryOfRnDActivities', 'error')} ">
	<label for="offensiveActivity.summaryOfRnDActivities" class="property-label25">
		<g:message code="formF.offensiveActivity.summaryOfRnDActivities.label" default="Summary of R&D Activities" />
		
	</label>
	<g:textArea name="summaryOfRnDActivities" cols="40" rows="5" maxlength="5000" value="${pastBiologicalRnDActivityInstance?.summaryOfRnDActivities}"/>
</div>
</fieldset>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="formF.report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formFInstance?.report?.id}" class="many-to-one"/>
</div>

<g:set var="formInstance" value="${formFInstance}"></g:set>
<g:render template="../formStatus"/>

