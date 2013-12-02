<%@ page import="cbm.FormF" %>



<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'formStatus', 'error')} ">
	<label for="formStatus">
		<g:message code="formF.formStatus.label" default="Form Status" />
		
	</label>
</div>
<div><g:select name="formStatus" from="${formFInstance.constraints.formStatus.inList}" value="${formFInstance?.formStatus}" valueMessagePrefix="formF.formStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'visibility', 'error')} ">
	<label for="visibility">
		<g:message code="formF.visibility.label" default="Visibility" />
		
	</label>
</div>
<div><g:select name="visibility" from="${formFInstance.constraints.visibility.inList}" value="${formFInstance?.visibility}" valueMessagePrefix="formF.visibility" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'entryIntoForceOfConvention', 'error')} required">
	<label for="entryIntoForceOfConvention">
		<g:message code="formF.entryIntoForceOfConvention.label" default="Entry Into Force Of Convention" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:datePicker name="entryIntoForceOfConvention" precision="day"  value="${formFInstance?.entryIntoForceOfConvention}"  /></div>
<fieldset class="embedded"><legend><g:message code="formF.defensiveActivity.label" default="Defensive Activity" /></legend>
<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.pastBiologicalActivity', 'error')} ">
	<label for="defensiveActivity.pastBiologicalActivity">
		<g:message code="formF.defensiveActivity.pastBiologicalActivity.label" default="Past Biological Activity" />
		
	</label>
</div>
<div><g:checkBox name="pastBiologicalActivity" value="${pastBiologicalRnDActivityInstance?.pastBiologicalActivity}" /></div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.periodOfActivity', 'error')} ">
	<label for="defensiveActivity.periodOfActivity">
		<g:message code="formF.defensiveActivity.periodOfActivity.label" default="Period Of Activity" />
		
	</label>
</div>
<div><g:textField name="periodOfActivity" maxlength="100" value="${pastBiologicalRnDActivityInstance?.periodOfActivity}"/></div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.summaryOfRnDActivities', 'error')} ">
	<label for="defensiveActivity.summaryOfRnDActivities">
		<g:message code="formF.defensiveActivity.summaryOfRnDActivities.label" default="Summary Of Rn DA ctivities" />
		
	</label>
</div>
<div><g:textArea name="summaryOfRnDActivities" cols="40" rows="5" maxlength="5000" value="${pastBiologicalRnDActivityInstance?.summaryOfRnDActivities}"/></div>
</fieldset><fieldset class="embedded"><legend><g:message code="formF.offensiveActivity.label" default="Offensive Activity" /></legend>
<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.pastBiologicalActivity', 'error')} ">
	<label for="offensiveActivity.pastBiologicalActivity">
		<g:message code="formF.offensiveActivity.pastBiologicalActivity.label" default="Past Biological Activity" />
		
	</label>
</div>
<div><g:checkBox name="pastBiologicalActivity" value="${pastBiologicalRnDActivityInstance?.pastBiologicalActivity}" /></div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.periodOfActivity', 'error')} ">
	<label for="offensiveActivity.periodOfActivity">
		<g:message code="formF.offensiveActivity.periodOfActivity.label" default="Period Of Activity" />
		
	</label>
</div>
<div><g:textField name="periodOfActivity" maxlength="100" value="${pastBiologicalRnDActivityInstance?.periodOfActivity}"/></div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.summaryOfRnDActivities', 'error')} ">
	<label for="offensiveActivity.summaryOfRnDActivities">
		<g:message code="formF.offensiveActivity.summaryOfRnDActivities.label" default="Summary Of Rn DA ctivities" />
		
	</label>
</div>
<div><g:textArea name="summaryOfRnDActivities" cols="40" rows="5" maxlength="5000" value="${pastBiologicalRnDActivityInstance?.summaryOfRnDActivities}"/></div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="formF.title.label" default="Title" />
		
	</label>
</div>
<div><g:textField name="title" value="${formFInstance?.title}"/></div>

