<%@ page import="cbm.form.FormF" %>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formFInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formFInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'entryIntoForceOfConvention', 'error')} required">
	<label for="entryIntoForceOfConvention" >
		<g:message code="formF.entryIntoForceOfConvention.label" default="Entry Into Force Of Convention" />
		<span class="required-indicator">*</span>
	</label>

	<g:datePicker name="entryIntoForceOfConvention" precision="day"  value="${formFInstance?.entryIntoForceOfConvention}"  />
</div>
<!-- Offensive activities -->
<h1><g:message code="formF.offensiveActivity.label" default="Offensive Activity" /></h1>

    <div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.pastBiologicalActivity', 'error')} ">
        <label for="offensiveActivity.pastBiologicalActivity" >
            <g:message code="formF.offensiveActivity.pastBiologicalActivity.label" default="Past Biological Activity" />
        </label>
        %{--<g:checkBox name="offensiveActivity.pastBiologicalActivity" value="${formFInstance?.offensiveActivity?.pastBiologicalActivity}" />--}%
        <g:radioGroup name="offensiveActivity.pastBiologicalActivity" value="${formFInstance?.offensiveActivity ? formFInstance?.offensiveActivity?.pastBiologicalActivity:'false'}"
                      values="['true','false']"
                      labels="['Yes','No']" >     %{--TODO i18n--}%
            <span>${it.radio} ${it.label}</span>
        </g:radioGroup>
    </div>

    <div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.periodOfActivity', 'error')} ">
        <label for="offensiveActivity.periodOfActivity" >
            <g:message code="formF.offensiveActivity.periodOfActivity.label" default="Period Of Activity" />
        </label>
    </div>
    <div>
        <g:textArea class="longTextSml" name="offensiveActivity.periodOfActivity" maxlength="250" value="${formFInstance?.offensiveActivity?.periodOfActivity}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'offensiveActivity.summaryOfRnDActivities', 'error')} ">
        <label for="offensiveActivity.summaryOfRnDActivities" >
            <g:message code="formF.offensiveActivity.summaryOfRnDActivities.label" default="Summary of R&D Activities" />
        </label>
    </div>
    <div>
        <g:textArea class="wysiwyg" name="offensiveActivity.summaryOfRnDActivities" cols="40" rows="5"
                    maxlength="${formFInstance?.offensiveActivity?.constraints?.summaryOfRnDActivities?.maxSize}" value="${formFInstance?.offensiveActivity?.summaryOfRnDActivities}"/>
    </div>

<!-- Defensive activities -->
<h1><g:message code="formF.defensiveActivity.label" default="Defensive Activity" /></h1>
<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.pastBiologicalActivity', 'error')} ">
	<label for="defensiveActivity.pastBiologicalActivity" >
		<g:message code="formF.defensiveActivity.pastBiologicalActivity.label" default="Past Biological Activity" />
	</label>
	%{--<g:checkBox name="defensiveActivity.pastBiologicalActivity" value="${formFInstance.defensiveActivity?.pastBiologicalActivity}" />--}%
    <g:radioGroup name="defensiveActivity.pastBiologicalActivity" value="${formFInstance?.defensiveActivity ? formFInstance?.defensiveActivity?.pastBiologicalActivity:'false'}"
                  values="['true','false']"
                  labels="['Yes','No']" >      %{--TODO i18n--}%
        <span>${it.radio} ${it.label}</span>
    </g:radioGroup>
</div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.periodOfActivity', 'error')} ">
	<label for="defensiveActivity.periodOfActivity" >
		<g:message code="formF.defensiveActivity.periodOfActivity.label" default="Period Of Activity" />
	</label>
</div>
<div>
    <g:textArea class="longTextSml" name="defensiveActivity.periodOfActivity" maxlength="250" value="${formFInstance.defensiveActivity?.periodOfActivity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formFInstance, field: 'defensiveActivity.summaryOfRnDActivities', 'error')} ">
	<label for="defensiveActivity.summaryOfRnDActivities" >
		<g:message code="formF.defensiveActivity.summaryOfRnDActivities.label" default="Summary of R&D Activities" />
	</label>
</div>
<div>
	<g:textArea class="wysiwyg" name="defensiveActivity.summaryOfRnDActivities" cols="40" rows="5" maxlength="${formFInstance?.defensiveActivity?.constraints?.summaryOfRnDActivities?.maxSize}" value="${formFInstance.defensiveActivity?.summaryOfRnDActivities}"/>
</div>

<g:set var="formInstance" value="${formFInstance}"></g:set>
<g:render template="../formStatus"/>

