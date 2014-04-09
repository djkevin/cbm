<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%

%{--<g:if test="${formBInstance?.report}">
    <li class="fieldcontain">
        <span id="language-label" class="property-label"><g:message code="report.label" default="Report" /></span>
        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formBInstance}" field="report"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.eventName}">
    <li class="fieldcontain">
        <span id="eventName-label" class="property-label"><g:message code="formB.eventName.label" default="Event Name" /></span>

        <span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${formBInstance}" field="eventName"/></span>

    </li>
</g:if>

<g:if test="${formBInstance?.eventCategory}">
    <li class="fieldcontain">
        <span id="eventCategory-label" class="property-label"><g:message code="formB.eventCategory.label" default="Event Category" /></span>

        <span class="property-value" aria-labelledby="eventCategory-label"><g:fieldValue bean="${formBInstance}" field="eventCategory"/></span>

    </li>
</g:if>

<g:if test="${formBInstance?.eventDate}">
    <li class="fieldcontain">
        <span id="eventDate-label" class="property-label"><g:message code="formB.eventDate.label" default="Event Date" /></span>
        <span class="property-value" aria-labelledby="eventDate-label"><g:formatDate format="dd-MMM-yyyy" date="${formBInstance?.eventDate}" /></span>
    </li>
    <br/>
</g:if>--}%

<h4><g:message code="formB.information.label"  default="Information on outbreaks1"/> </h4>
<br/>
<g:if test="${formBInstance?.timeOfOutbreak}">
    <h4><g:message code="formB.timeOfOutbreak.label" default="Time Of Outbreak"/></h4>
    <li>
        <span class="property-value" aria-labelledby="timeOfOutbreak-label"><g:fieldValue
                bean="${formBInstance}" field="timeOfOutbreak"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formBInstance?.locationAffected}">
    <h4><g:message code="formB.locationAffected.label" default="Location Affected"/></h4>
    <li>
        <span class="property-value" aria-labelledby="locationAffected-label"><g:fieldValue
                bean="${formBInstance}" field="locationAffected"/></span>
    </li>
    <br/>
</g:if>


<g:if test="${formBInstance?.typeOfDisease}">
    <h4><g:message code="formB.typeOfDisease.label" default="Type Of Disease"/></h4>
    <li>
        <span class="property-value" aria-labelledby="typeOfDisease-label"><g:fieldValue
                bean="${formBInstance}" field="typeOfDisease"/></span>
    </li>
    <br/>
</g:if>


<g:if test="${formBInstance?.sourceOfDisease}">
    <h4><g:message code="formB.sourceOfDisease.label" default="Source Of Disease"/></h4>
    <li>
        <span class="property-value" aria-labelledby="sourceOfDisease-label"><g:fieldValue
                bean="${formBInstance}" field="sourceOfDisease"/></span>
    </li>
    <br/>
</g:if>


<g:if test="${formBInstance?.possibleCause}">
    <h4><g:message code="formB.possibleCause.label" default="Possible Cause"/></h4>
    <li>
        <span class="property-value" aria-labelledby="possibleCause-label"><g:fieldValue
                bean="${formBInstance}" field="possibleCause"/></span>
    </li>
    <br/>
</g:if>


<g:if test="${formBInstance?.mainCharacteristics}">
    <h4><g:message code="formB.mainCharacteristics.label" default="Main Characteristics"/></h4>
    <li>
        <span class="property-value" aria-labelledby="mainCharacteristics-label"><g:fieldValue
                bean="${formBInstance}" field="mainCharacteristics"/></span>
    </li>
    <br/>
</g:if>


<h4><g:message code="formB.detailedSymptoms.label" default="Detailed Symptoms" /></h4>
<g:if test="${formBInstance?.symptomRespiratory}">
    <li class="fieldcontain">
        <span id="symptomRespiratory-label" class="property-label">- <g:message code="formB.symptomRespiratory.label" default="Symptom Respiratory" />: </span>
        <span class="property-value" aria-labelledby="symptomRespiratory-label"><g:fieldValue bean="${formBInstance}" field="symptomRespiratory"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.symptomCirculatory}">
    <li class="fieldcontain">
        <span id="symptomCirculatory-label" class="property-label">- <g:message code="formB.symptomCirculatory.label" default="Symptom Circulatory" />: </span>
        <span class="property-value" aria-labelledby="symptomCirculatory-label"><g:fieldValue bean="${formBInstance}" field="symptomCirculatory"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.symptomNeurologicalBehavioral}">
    <li class="fieldcontain">
        <span id="symptomNeurologicalBehavioral-label" class="property-label">- <g:message code="formB.symptomNeurologicalBehavioral.label" default="Symptom Neurological Behavioral" />: </span>
        <span class="property-value" aria-labelledby="symptomNeurologicalBehavioral-label"><g:fieldValue bean="${formBInstance}" field="symptomNeurologicalBehavioral"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.symptomIntestinal}">
    <li class="fieldcontain">
        <span id="symptomIntestinal-label" class="property-label">- <g:message code="formB.symptomIntestinal.label" default="Symptom Intestinal" />: </span>
        <span class="property-value" aria-labelledby="symptomIntestinal-label"><g:fieldValue bean="${formBInstance}" field="symptomIntestinal"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.symptomDermatological}">
    <li class="fieldcontain">
        <span id="symptomDermatological-label" class="property-label">- <g:message code="formB.symptomDermatological.label" default="Symptom Dermatological" />: </span>
        <span class="property-value" aria-labelledby="symptomDermatological-label"><g:fieldValue bean="${formBInstance}" field="symptomDermatological"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.symptomNephrological}">
    <li class="fieldcontain">
        <span id="symptomNephrological-label" class="property-label">- <g:message code="formB.symptomNephrological.label" default="Symptom Nephrological" />: </span>
        <span class="property-value" aria-labelledby="symptomNephrological-label"><g:fieldValue bean="${formBInstance}" field="symptomNephrological"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.symptomOther}">
    <li class="fieldcontain">
        <span id="symptomOther-label" class="property-label">- <g:message code="formB.symptomOther.label" default="Symptom Other" />: </span>
        <span class="property-value" aria-labelledby="symptomOther-label"><g:fieldValue bean="${formBInstance}" field="symptomOther"/></span>
    </li>
</g:if>
<br/>


<h4><g:message code="formB.deviationFromNormalPattern.label" default="Deviation From Normal Pattern" /></h4>
<g:if test="${formBInstance?.deviationType}">
    <li class="fieldcontain">
        <span id="deviationType-label" class="property-label">- <g:message code="formB.deviationType.label" default="Deviation Type" />: </span>
        <span class="property-value" aria-labelledby="deviationType-label"><g:fieldValue bean="${formBInstance}" field="deviationType"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.deviationPlace}">
    <li class="fieldcontain">
        <span id="deviationPlace-label" class="property-label">- <g:message code="formB.deviationPlace.label" default="Deviation Place" />: </span>
        <span class="property-value" aria-labelledby="deviationPlace-label"><g:fieldValue bean="${formBInstance}" field="deviationPlace"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.deviationTime}">
    <li class="fieldcontain">
        <span id="deviationTime-label" class="property-label">- <g:message code="formB.deviationTime.label" default="Deviation Time" />: </span>
        <span class="property-value" aria-labelledby="deviationTime-label"><g:fieldValue bean="${formBInstance}" field="deviationTime"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.deviationSymptoms}">
    <li class="fieldcontain">
        <span id="deviationSymptoms-label" class="property-label">- <g:message code="formB.deviationSymptoms.label" default="Deviation Symptoms" />: </span>
        <span class="property-value" aria-labelledby="deviationSymptoms-label"><g:fieldValue bean="${formBInstance}" field="deviationSymptoms"/></span>

    </li>
</g:if>

<g:if test="${formBInstance?.deviationVirulence}">
    <li class="fieldcontain">
        <span id="deviationVirulence-label" class="property-label">- <g:message code="formB.deviationVirulence.label" default="Deviation Virulence" />: </span>

        <span class="property-value" aria-labelledby="deviationVirulence-label"><g:fieldValue bean="${formBInstance}" field="deviationVirulence"/></span>

    </li>
</g:if>

<g:if test="${formBInstance?.deviationDrugResistance}">
    <li class="fieldcontain">
        <span id="deviationDrugResistance-label" class="property-label">- <g:message code="formB.deviationDrugResistance.label" default="Deviation Drug Resistance" />: </span>
        <span class="property-value" aria-labelledby="deviationDrugResistance-label"><g:fieldValue bean="${formBInstance}" field="deviationDrugResistance"/></span>

    </li>
</g:if>

<g:if test="${formBInstance?.deviationAgentDiffToDiagnose}">
    <li class="fieldcontain">
        <span id="deviationAgentDiffToDiagnose-label" class="property-label">- <g:message code="formB.deviationAgentDiffToDiagnose.label" default="Deviation Agent Diff To Diagnose" />: </span>
        <span class="property-value" aria-labelledby="deviationAgentDiffToDiagnose-label"><g:fieldValue bean="${formBInstance}" field="deviationAgentDiffToDiagnose"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.deviationPresenceOfUnusualVectors}">
    <li class="fieldcontain">
        <span id="deviationPresenceOfUnusualVectors-label" class="property-label">- <g:message code="formB.deviationPresenceOfUnusualVectors.label" default="Deviation Presence Of Unusual Vectors" />: </span>
        <span class="property-value" aria-labelledby="deviationPresenceOfUnusualVectors-label"><g:fieldValue bean="${formBInstance}" field="deviationPresenceOfUnusualVectors"/></span>
    </li>
</g:if>

<g:if test="${formBInstance?.deviationOther}">
    <li class="fieldcontain">
        <span id="deviationOther-label" class="property-label">- <g:message code="formB.deviationOther.label" default="Deviation Other" />: </span>
        <span class="property-value" aria-labelledby="deviationOther-label"><g:fieldValue bean="${formBInstance}" field="deviationOther"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formBInstance?.numOfPrimaryCases}">
    <h4><g:message code="formB.numOfPrimaryCases.label" default="Num Of Primary Cases" /></h4>
    <li>
        <span class="property-value" aria-labelledby="numOfPrimaryCases-label"><g:fieldValue bean="${formBInstance}" field="numOfPrimaryCases"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formBInstance?.numOfTotalCases}">
    <h4><g:message code="formB.numOfTotalCases.label" default="Num Of Total Cases" /></h4>
    <li>
        <span class="property-value" aria-labelledby="numOfTotalCases-label"><g:fieldValue bean="${formBInstance}" field="numOfTotalCases"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formBInstance?.numDeaths}">
    <h4><g:message code="formB.numDeaths.label" default="Num Deaths" /></h4>
    <li>
        <span class="property-value" aria-labelledby="numDeaths-label"><g:fieldValue bean="${formBInstance}" field="numDeaths"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formBInstance?.developmentOfOutbreak}">
    <h4><g:message code="formB.developmentOfOutbreak.label" default="Development Of Outbreak" /></h4>
    <li>
        <span class="property-value" aria-labelledby="developmentOfOutbreak-label"><g:fieldValue bean="${formBInstance}" field="developmentOfOutbreak"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formBInstance?.measuresTaken}">
    <h4><g:message code="formB.measuresTaken.label" default="Measures Taken" /></h4>
    <li>
        <span class="property-value" aria-labelledby="measuresTaken-label"><g:fieldValue bean="${formBInstance}" field="measuresTaken"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formBInstance?.additionalInfo}">
    <h4><g:message code="formB.additionalInfo.label" default="Additional Info" /></h4>
    <li>
        <span class="property-value" aria-labelledby="additionalInfo-label">${formBInstance.additionalInfo}</span>
    </li>
</g:if>