<%@ page import="cbm.FormB" %>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="formB.report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formBInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formBInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'eventName', 'error')} required">
	<label for="eventName" class="property-label25">
		<g:message code="formB.eventName.label" default="Event Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="eventName" required="" maxlength="${formBInstance?.constraints?.eventName?.maxSize}" value="${formBInstance?.eventName}"/>
</div>                                                 .

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'eventCategory', 'error')} ">
	<label for="eventCategory" class="property-label25" >
		<g:message code="formB.eventCategory.label" default="Event Category" />
		
	</label>
	<g:select name="eventCategory" from="${formBInstance.constraints.eventCategory.inList}" value="${formBInstance?.eventCategory}" valueMessagePrefix="formB.eventCategory" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'eventDate', 'error')} required">
    <label for="eventDate" class="property-label25" >
        <g:message code="formB.eventDate.label" default="Event Date" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="eventDate" precision="day"  value="${formBInstance?.eventDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'timeOfOutbreak', 'error')} ">
	<label for="timeOfOutbreak" >
		<g:message code="formB.timeOfOutbreak.label" default="Time Of Outbreak" />
		
	</label>
</div>
<div>
	<g:textArea class="longTextMed" name="timeOfOutbreak" cols="40" rows="5" maxlength="${formBInstance?.constraints?.timeOfOutbreak?.maxSize}" value="${formBInstance?.timeOfOutbreak}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'locationAffected', 'error')} ">
	<label for="locationAffected" >
		<g:message code="formB.locationAffected.label" default="Location Affected" />
		
	</label>
	<g:textArea class="longTextMed" name="locationAffected" cols="40" rows="5" maxlength="${formBInstance?.constraints?.locationAffected?.maxSize}" value="${formBInstance?.locationAffected}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'typeOfDisease', 'error')} ">
	<label for="typeOfDisease" >
		<g:message code="formB.typeOfDisease.label" default="Type Of Disease" />
		
	</label>
	<g:textArea class="longTextMed" name="typeOfDisease" cols="40" rows="5" maxlength="${formBInstance?.constraints?.typeOfDisease?.maxSize}" value="${formBInstance?.typeOfDisease}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'sourceOfDisease', 'error')} ">
	<label for="possibleCause" >
		<g:message code="formB.sourceOfDisease.label" default="Source of Disease" />
		
	</label>
	<g:textArea class="longTextMed" name="sourceOfDisease" cols="40" rows="5" maxlength="${formBInstance?.constraints?.sourceOfDisease?.maxSize}" value="${formBInstance?.sourceOfDisease}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'possibleCause', 'error')} ">
	<label for="possibleCause" >
		<g:message code="formB.possibleCause.label" default="Possible Cause" />

	</label>
	<g:textArea class="longTextMed" name="possibleCause" cols="40" rows="5" maxlength="${formBInstance?.constraints?.possibleCause?.maxSize}" value="${formBInstance?.possibleCause}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'mainCharacteristics', 'error')} ">
	<label for="mainCharacteristics" >
		<g:message code="formB.mainCharacteristics.label" default="Main Characteristics" />
		
	</label>
	<g:textArea class="longTextMed" name="mainCharacteristics" cols="40" rows="5" maxlength="${formBInstance?.constraints?.mainCharacteristics?.maxSize}" value="${formBInstance?.mainCharacteristics}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'detailedSymptoms', 'error')} ">
	<label for="detailedSymptoms" >
		<g:message code="formB.detailedSymptoms.label" default="Detailed Symptoms" />
		
	</label>
	<g:textArea class="longTextMed" name="detailedSymptoms" cols="40" rows="5" maxlength="${formBInstance?.constraints?.detailedSymptoms?.maxSize}" value="${formBInstance?.detailedSymptoms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationFromNormalPattern', 'error')} ">
	<label for="deviationFromNormalPattern" >
		<g:message code="formB.deviationFromNormalPattern.label" default="Deviation From Normal Pattern" />
		
	</label>
	<g:textArea class="longTextMed" name="deviationFromNormalPattern" cols="40" rows="5" maxlength="${formBInstance?.constraints?.deviationFromNormalPattern?.maxSize}" value="${formBInstance?.deviationFromNormalPattern}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numOfPrimaryCases', 'error')} ">
	<label for="numOfPrimaryCases" >
		<g:message code="formB.numOfPrimaryCases.label" default="Num Of Primary Cases" />
		
	</label>
	<g:textArea class="longTextMed" name="numOfPrimaryCases" cols="40" rows="5" maxlength="${formBInstance?.constraints?.numOfPrimaryCases?.maxSize}" value="${formBInstance?.numOfPrimaryCases}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numOfTotalCases', 'error')} ">
	<label for="numOfTotalCases" >
		<g:message code="formB.numOfTotalCases.label" default="Num Of Total Cases" />
		
	</label>
	<g:textArea class="longTextMed" name="numOfTotalCases" cols="40" rows="5" maxlength="${formBInstance?.constraints?.numOfTotalCases?.maxSize}" value="${formBInstance?.numOfTotalCases}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numDeaths', 'error')} ">
	<label for="numDeaths" >
		<g:message code="formB.numDeaths.label" default="Num Deaths" />
		
	</label>
	<g:textArea class="longTextMed" name="numDeaths" cols="40" rows="5" maxlength="${formBInstance?.constraints?.numDeaths?.maxSize}" value="${formBInstance?.numDeaths}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'developmentOfOutbreak', 'error')} ">
	<label for="developmentOfOutbreak" >
		<g:message code="formB.developmentOfOutbreak.label" default="Development Of Outbreak" />
		
	</label>
	<g:textArea class="longTextMed" name="developmentOfOutbreak" cols="40" rows="5" maxlength="${formBInstance?.constraints?.developmentOfOutbreak?.maxSize}" value="${formBInstance?.developmentOfOutbreak}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'measuresTaken', 'error')} ">
	<label for="measuresTaken" >
		<g:message code="formB.measuresTaken.label" default="Measures Taken" />
		
	</label>
	<g:textArea class="longTextMed" name="measuresTaken" cols="40" rows="5" maxlength="${formBInstance?.constraints?.measuresTaken?.maxSize}" value="${formBInstance?.measuresTaken}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'additionalInfo', 'error')} ">
	<label for="additionalInfo" >
		<g:message code="formB.additionalInfo.label" default="Additional Info" />
		
	</label>
	<g:textArea class="wysiwyg" name="additionalInfo" cols="40" rows="5" maxlength="${formBInstance?.constraints?.additionalInfo?.maxSize}" value="${formBInstance?.additionalInfo}"/>
</div>

<g:set var="formInstance" value="${formBInstance}"></g:set>
<g:render template="../formStatus"/>


