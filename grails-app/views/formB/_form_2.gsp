<%@ page import="cbm.FormB" %>



<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'formStatus', 'error')} ">
	<label for="formStatus">
		<g:message code="formB.formStatus.label" default="Form Status" />
		
	</label>
</div>
<div><g:select name="formStatus" from="${formBInstance.constraints.formStatus.inList}" value="${formBInstance?.formStatus}" valueMessagePrefix="formB.formStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'eventName', 'error')} required">
	<label for="eventName">
		<g:message code="formB.eventName.label" default="Event Name" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textField name="eventName" required="" value="${formBInstance?.eventName}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'eventCategory', 'error')} ">
	<label for="eventCategory">
		<g:message code="formB.eventCategory.label" default="Event Category" />
		
	</label>
</div>
<div><g:select name="eventCategory" from="${formBInstance.constraints.eventCategory.inList}" value="${formBInstance?.eventCategory}" valueMessagePrefix="formB.eventCategory" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'timeOfOutbreak', 'error')} ">
	<label for="timeOfOutbreak">
		<g:message code="formB.timeOfOutbreak.label" default="Time Of Outbreak" />
		
	</label>
</div>
<div><g:textArea name="timeOfOutbreak" cols="40" rows="5" maxlength="500" value="${formBInstance?.timeOfOutbreak}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'locationAffected', 'error')} ">
	<label for="locationAffected">
		<g:message code="formB.locationAffected.label" default="Location Affected" />
		
	</label>
</div>
<div><g:textArea name="locationAffected" cols="40" rows="5" maxlength="500" value="${formBInstance?.locationAffected}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'typeOfDisease', 'error')} ">
	<label for="typeOfDisease">
		<g:message code="formB.typeOfDisease.label" default="Type Of Disease" />
		
	</label>
</div>
<div><g:textArea name="typeOfDisease" cols="40" rows="5" maxlength="500" value="${formBInstance?.typeOfDisease}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'possibleCause', 'error')} ">
	<label for="possibleCause">
		<g:message code="formB.possibleCause.label" default="Possible Cause" />
		
	</label>
</div>
<div><g:textArea name="possibleCause" cols="40" rows="5" maxlength="500" value="${formBInstance?.possibleCause}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'mainCharacteristics', 'error')} ">
	<label for="mainCharacteristics">
		<g:message code="formB.mainCharacteristics.label" default="Main Characteristics" />
		
	</label>
</div>
<div><g:textArea name="mainCharacteristics" cols="40" rows="5" maxlength="500" value="${formBInstance?.mainCharacteristics}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'detailedSymptoms', 'error')} ">
	<label for="detailedSymptoms">
		<g:message code="formB.detailedSymptoms.label" default="Detailed Symptoms" />
		
	</label>
</div>
<div><g:textArea name="detailedSymptoms" cols="40" rows="5" maxlength="500" value="${formBInstance?.detailedSymptoms}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationFromNormalPattern', 'error')} ">
	<label for="deviationFromNormalPattern">
		<g:message code="formB.deviationFromNormalPattern.label" default="Deviation From Normal Pattern" />
		
	</label>
</div>
<div><g:textArea name="deviationFromNormalPattern" cols="40" rows="5" maxlength="500" value="${formBInstance?.deviationFromNormalPattern}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numOfPrimaryCases', 'error')} ">
	<label for="numOfPrimaryCases">
		<g:message code="formB.numOfPrimaryCases.label" default="Num Of Primary Cases" />
		
	</label>
</div>
<div><g:textArea name="numOfPrimaryCases" cols="40" rows="5" maxlength="500" value="${formBInstance?.numOfPrimaryCases}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numOfTotalCases', 'error')} ">
	<label for="numOfTotalCases">
		<g:message code="formB.numOfTotalCases.label" default="Num Of Total Cases" />
		
	</label>
</div>
<div><g:textArea name="numOfTotalCases" cols="40" rows="5" maxlength="500" value="${formBInstance?.numOfTotalCases}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numDeaths', 'error')} ">
	<label for="numDeaths">
		<g:message code="formB.numDeaths.label" default="Num Deaths" />
		
	</label>
</div>
<div><g:textArea name="numDeaths" cols="40" rows="5" maxlength="500" value="${formBInstance?.numDeaths}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'developmentOfOutbreak', 'error')} ">
	<label for="developmentOfOutbreak">
		<g:message code="formB.developmentOfOutbreak.label" default="Development Of Outbreak" />
		
	</label>
</div>
<div><g:textArea name="developmentOfOutbreak" cols="40" rows="5" maxlength="500" value="${formBInstance?.developmentOfOutbreak}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'measuresTaken', 'error')} ">
	<label for="measuresTaken">
		<g:message code="formB.measuresTaken.label" default="Measures Taken" />
		
	</label>
</div>
<div><g:textArea name="measuresTaken" cols="40" rows="5" maxlength="500" value="${formBInstance?.measuresTaken}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'additionalInfo', 'error')} ">
	<label for="additionalInfo">
		<g:message code="formB.additionalInfo.label" default="Additional Info" />
		
	</label>
</div>
<div><g:textArea name="additionalInfo" cols="40" rows="5" maxlength="5000" value="${formBInstance?.additionalInfo}"/></div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'eventDate', 'error')} required">
	<label for="eventDate">
		<g:message code="formB.eventDate.label" default="Event Date" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:datePicker name="eventDate" precision="day"  value="${formBInstance?.eventDate}"  /></div>

