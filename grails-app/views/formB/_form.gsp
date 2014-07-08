<%@ page import="cbm.form.FormB" %>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report"/>
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
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'eventCategory', 'error')} required">
	<label for="eventCategory" class="property-label25" >
		<g:message code="formB.eventCategory.label" default="Event Category" />
        <span class="required-indicator">*</span>
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
    <div>
        <g:textArea class="wysiwyg" name="timeOfOutbreak" cols="40" rows="5" maxlength="${formBInstance?.constraints?.timeOfOutbreak?.maxSize}" value="${formBInstance?.timeOfOutbreak}"/>
    </div>
</div>


<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'locationAffected', 'error')} ">
	<label for="locationAffected" >
		<g:message code="formB.locationAffected.label" default="Location Affected" />
		
	</label>
	<g:textArea class="wysiwyg" name="locationAffected" cols="40" rows="5" maxlength="${formBInstance?.constraints?.locationAffected?.maxSize}" value="${formBInstance?.locationAffected}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'typeOfDisease', 'error')} ">
	<label for="typeOfDisease" >
		<g:message code="formB.typeOfDisease.label" default="Type Of Disease" />
		
	</label>
	<g:textArea class="wysiwyg" name="typeOfDisease" cols="40" rows="5" maxlength="${formBInstance?.constraints?.typeOfDisease?.maxSize}" value="${formBInstance?.typeOfDisease}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'sourceOfDisease', 'error')} ">
	<label for="possibleCause" >
		<g:message code="formB.sourceOfDisease.label" default="Source of Disease" />
		
	</label>
	<g:textArea class="wysiwyg" name="sourceOfDisease" cols="40" rows="5" maxlength="${formBInstance?.constraints?.sourceOfDisease?.maxSize}" value="${formBInstance?.sourceOfDisease}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'possibleCause', 'error')} ">
	<label for="possibleCause" >
		<g:message code="formB.possibleCause.label" default="Possible Cause" />

	</label>
	<g:textArea class="wysiwyg" name="possibleCause" cols="40" rows="5" maxlength="${formBInstance?.constraints?.possibleCause?.maxSize}" value="${formBInstance?.possibleCause}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'mainCharacteristics', 'error')} ">
	<label for="mainCharacteristics" >
		<g:message code="formB.mainCharacteristics.label" default="Main Characteristics" />
		
	</label>
	<g:textArea class="wysiwyg" name="mainCharacteristics" cols="40" rows="5" maxlength="${formBInstance?.constraints?.mainCharacteristics?.maxSize}" value="${formBInstance?.mainCharacteristics}"/>
</div>


<fieldset class="embedded"><legend><g:message code="formB.detailedSymptoms.label" default="Detailed Symptoms" /></legend>
<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'symptomRespiratory', 'error')} ">
    <label for="symptomRespiratory" class="property-label25">
        <g:message code="formB.symptomRespiratory.label" default="Symptom Respiratory" />

    </label>
    <g:textField class="inlineText" name="symptomRespiratory" maxlength="${formBInstance?.constraints?.symptomRespiratory?.maxSize}" value="${formBInstance?.symptomRespiratory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'symptomCirculatory', 'error')} ">
    <label for="symptomCirculatory" class="property-label25">
        <g:message code="formB.symptomCirculatory.label" default="Symptom Circulatory" />

    </label>
    <g:textField class="inlineText" name="symptomCirculatory" maxlength="${formBInstance?.constraints?.symptomCirculatory?.maxSize}" value="${formBInstance?.symptomCirculatory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'symptomNeurologicalBehavioral', 'error')} ">
    <label for="symptomNeurologicalBehavioral" class="property-label25">
        <g:message code="formB.symptomNeurologicalBehavioral.label" default="Symptom Neurological Behavioral" />

    </label>
    <g:textField class="inlineText" name="symptomNeurologicalBehavioral" maxlength="${formBInstance?.constraints?.symptomNeurologicalBehavioral?.maxSize}" value="${formBInstance?.symptomNeurologicalBehavioral}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'symptomIntestinal', 'error')} ">
    <label for="symptomIntestinal" class="property-label25">
        <g:message code="formB.symptomIntestinal.label" default="Symptom Intestinal" />

    </label>
    <g:textField class="inlineText" name="symptomIntestinal" maxlength="${formBInstance?.constraints?.symptomIntestinal?.maxSize}" value="${formBInstance?.symptomIntestinal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'symptomDermatological', 'error')} ">
    <label for="symptomDermatological" class="property-label25">
        <g:message code="formB.symptomDermatological.label" default="Symptom Dermatological" />

    </label>
    <g:textField class="inlineText" name="symptomDermatological" maxlength="${formBInstance?.constraints?.symptomDermatological?.maxSize}" value="${formBInstance?.symptomDermatological}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'symptomNephrological', 'error')} ">
    <label for="symptomNephrological" class="property-label25">
        <g:message code="formB.symptomNephrological.label" default="Symptom Nephrological" />

    </label>
    <g:textField class="inlineText" name="symptomNephrological" maxlength="${formBInstance?.constraints?.symptomNephrological?.maxSize}" value="${formBInstance?.symptomNephrological}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'symptomOther', 'error')} ">
    <label for="symptomOther" class="property-label25">
        <g:message code="formB.symptomOther.label" default="Symptom Other" />

    </label>
    <g:textField class="inlineText" name="symptomOther" maxlength="${formBInstance?.constraints?.symptomOther?.maxSize}" value="${formBInstance?.symptomOther}"/>
</div>
</fieldset>

<fieldset class="embedded"><legend><g:message code="formB.deviationFromNormalPattern.label" default="Deviation From Normal Pattern" /></legend>
<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationType', 'error')} ">
    <label for="deviationType" class="property-label25">
        <g:message code="formB.deviationType.label" default="Deviation Type" />

    </label>
    <g:textField class="inlineText" name="deviationType" maxlength="${formBInstance?.constraints?.deviationType?.maxSize}" value="${formBInstance?.deviationType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationPlace', 'error')} ">
    <label for="deviationPlace" class="property-label25">
        <g:message code="formB.deviationPlace.label" default="Deviation Place" />

    </label>
    <g:textField class="inlineText" name="deviationPlace" maxlength="${formBInstance?.constraints?.deviationPlace?.maxSize}" value="${formBInstance?.deviationPlace}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationTime', 'error')} ">
    <label for="deviationTime" class="property-label25">
        <g:message code="formB.deviationTime.label" default="Deviation Time" />

    </label>
    <g:textField class="inlineText" name="deviationTime" maxlength="${formBInstance?.constraints?.deviationTime?.maxSize}" value="${formBInstance?.deviationTime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationSymptoms', 'error')} ">
    <label for="deviationSymptoms" class="property-label25">
        <g:message code="formB.deviationSymptoms.label" default="Deviation Symptoms" />

    </label>
    <g:textField class="inlineText" name="deviationSymptoms" maxlength="${formBInstance?.constraints?.deviationSymptoms?.maxSize}" value="${formBInstance?.deviationSymptoms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationVirulence', 'error')} ">
    <label for="deviationVirulence" class="property-label25">
        <g:message code="formB.deviationVirulence.label" default="Deviation Virulence" />

    </label>
    <g:textField class="inlineText" name="deviationVirulence" maxlength="${formBInstance?.constraints?.deviationVirulence?.maxSize}" value="${formBInstance?.deviationVirulence}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationDrugResistance', 'error')} ">
    <label for="deviationDrugResistance" class="property-label25">
        <g:message code="formB.deviationDrugResistance.label" default="Deviation Drug Resistance" />

    </label>
    <g:textField class="inlineText" name="deviationDrugResistance" maxlength="${formBInstance?.constraints?.deviationDrugResistance?.maxSize}" value="${formBInstance?.deviationDrugResistance}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationAgentDiffToDiagnose', 'error')} ">
    <label for="deviationAgentDiffToDiagnose" class="property-label25">
        <g:message code="formB.deviationAgentDiffToDiagnose.label" default="Deviation Agent Diff To Diagnose" />

    </label>
    <g:textField class="inlineText" name="deviationAgentDiffToDiagnose" maxlength="${formBInstance?.constraints?.deviationAgentDiffToDiagnose?.maxSize}" value="${formBInstance?.deviationAgentDiffToDiagnose}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationPresenceOfUnusualVectors', 'error')} ">
    <label for="deviationPresenceOfUnusualVectors" class="property-label25">
        <g:message code="formB.deviationPresenceOfUnusualVectors.label" default="Deviation Presence Of Unusual Vectors" />

    </label>
    <g:textField class="inlineText" name="deviationPresenceOfUnusualVectors" maxlength="${formBInstance?.constraints?.deviationPresenceOfUnusualVectors?.maxSize}" value="${formBInstance?.deviationPresenceOfUnusualVectors}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'deviationOther', 'error')} ">
    <label for="deviationOther" class="property-label25">
        <g:message code="formB.deviationOther.label" default="Deviation Other" />

    </label>
    <g:textField class="inlineText" name="deviationOther" maxlength="${formBInstance?.constraints?.deviationOther?.maxSize}" value="${formBInstance?.deviationOther}"/>
</div>
</fieldset>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numOfPrimaryCases', 'error')} ">
	<label for="numOfPrimaryCases" >
		<g:message code="formB.numOfPrimaryCases.label" default="Num Of Primary Cases" />
		
	</label>
	<g:textArea class="wysiwyg" name="numOfPrimaryCases" cols="40" rows="5" maxlength="${formBInstance?.constraints?.numOfPrimaryCases?.maxSize}" value="${formBInstance?.numOfPrimaryCases}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numOfTotalCases', 'error')} ">
	<label for="numOfTotalCases" >
		<g:message code="formB.numOfTotalCases.label" default="Num Of Total Cases" />
		
	</label>
	<g:textArea class="wysiwyg" name="numOfTotalCases" cols="40" rows="5" maxlength="${formBInstance?.constraints?.numOfTotalCases?.maxSize}" value="${formBInstance?.numOfTotalCases}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'numDeaths', 'error')} ">
	<label for="numDeaths" >
		<g:message code="formB.numDeaths.label" default="Num Deaths" />
		
	</label>
	<g:textArea class="wysiwyg" name="numDeaths" cols="40" rows="5" maxlength="${formBInstance?.constraints?.numDeaths?.maxSize}" value="${formBInstance?.numDeaths}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'developmentOfOutbreak', 'error')} ">
	<label for="developmentOfOutbreak" >
		<g:message code="formB.developmentOfOutbreak.label" default="Development Of Outbreak" />
		
	</label>
	<g:textArea class="wysiwyg" name="developmentOfOutbreak" cols="40" rows="5" maxlength="${formBInstance?.constraints?.developmentOfOutbreak?.maxSize}" value="${formBInstance?.developmentOfOutbreak}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'measuresTaken', 'error')} ">
	<label for="measuresTaken" >
		<g:message code="formB.measuresTaken.label" default="Measures Taken" />
		
	</label>
	<g:textArea class="wysiwyg" name="measuresTaken" cols="40" rows="5" maxlength="${formBInstance?.constraints?.measuresTaken?.maxSize}" value="${formBInstance?.measuresTaken}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formBInstance, field: 'additionalInfo', 'error')} ">
	<label for="additionalInfo" >
		<g:message code="formB.additionalInfo.label" default="Additional Info" />
		
	</label>
    <div>
        <g:textArea class="wysiwyg" name="additionalInfo" cols="40" rows="5" maxlength="${formBInstance?.constraints?.additionalInfo?.maxSize}" value="${formBInstance?.additionalInfo}"/>
    </div>

</div>

<g:set var="formInstance" value="${formBInstance}"></g:set>
<g:render template="../formStatus"/>


