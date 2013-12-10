
<%@ page import="cbm.FormB" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formB.label', default: 'FormB')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formB" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li>
                    <g:link class="list" controller="report" action="show" id="${formBInstance?.report?.id}">${formBInstance?.report?.reportName}</g:link>
                </li>
			%{--	<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-formB" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formB">

                <g:if test="${formBInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.reportName.label" default="Report Name" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formBInstance}" field="report"/></span>
                    </li>
                </g:if>

				<g:if test="${formBInstance?.formStatus}">
				<li class="fieldcontain">
					<span id="formStatus-label" class="property-label"><g:message code="formB.formStatus.label" default="Form Status" /></span>
					
						<span class="property-value" aria-labelledby="formStatus-label"><g:fieldValue bean="${formBInstance}" field="formStatus"/></span>
					
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
			
				<g:if test="${formBInstance?.timeOfOutbreak}">
				<li class="fieldcontain">
					<span id="timeOfOutbreak-label" class="property-label"><g:message code="formB.timeOfOutbreak.label" default="Time Of Outbreak" /></span>
					
						<span class="property-value" aria-labelledby="timeOfOutbreak-label"><g:fieldValue bean="${formBInstance}" field="timeOfOutbreak"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.locationAffected}">
				<li class="fieldcontain">
					<span id="locationAffected-label" class="property-label"><g:message code="formB.locationAffected.label" default="Location Affected" /></span>
					
						<span class="property-value" aria-labelledby="locationAffected-label"><g:fieldValue bean="${formBInstance}" field="locationAffected"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.typeOfDisease}">
				<li class="fieldcontain">
					<span id="typeOfDisease-label" class="property-label"><g:message code="formB.typeOfDisease.label" default="Type Of Disease" /></span>
					
						<span class="property-value" aria-labelledby="typeOfDisease-label"><g:fieldValue bean="${formBInstance}" field="typeOfDisease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.sourceOfDisease}">
				<li class="fieldcontain">
					<span id="sourceOfDisease-label" class="property-label"><g:message code="formB.sourceOfDisease.label" default="Source Of Disease" /></span>
					
						<span class="property-value" aria-labelledby="sourceOfDisease-label"><g:fieldValue bean="${formBInstance}" field="sourceOfDisease"/></span>
					
				</li>
				</g:if>

                <g:if test="${formBInstance?.possibleCause}">
				<li class="fieldcontain">
					<span id="possibleCause-label" class="property-label"><g:message code="formB.possibleCause.label" default="Possible Cause" /></span>

						<span class="property-value" aria-labelledby="possibleCause-label"><g:fieldValue bean="${formBInstance}" field="possibleCause"/></span>

				</li>
				</g:if>
			
				<g:if test="${formBInstance?.mainCharacteristics}">
				<li class="fieldcontain">
					<span id="mainCharacteristics-label" class="property-label"><g:message code="formB.mainCharacteristics.label" default="Main Characteristics" /></span>
					
						<span class="property-value" aria-labelledby="mainCharacteristics-label"><g:fieldValue bean="${formBInstance}" field="mainCharacteristics"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.detailedSymptoms}">
				<li class="fieldcontain">
					<span id="detailedSymptoms-label" class="property-label"><g:message code="formB.detailedSymptoms.label" default="Detailed Symptoms" /></span>
					
						<span class="property-value" aria-labelledby="detailedSymptoms-label"><g:fieldValue bean="${formBInstance}" field="detailedSymptoms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.deviationFromNormalPattern}">
				<li class="fieldcontain">
					<span id="deviationFromNormalPattern-label" class="property-label"><g:message code="formB.deviationFromNormalPattern.label" default="Deviation From Normal Pattern" /></span>
					
						<span class="property-value" aria-labelledby="deviationFromNormalPattern-label"><g:fieldValue bean="${formBInstance}" field="deviationFromNormalPattern"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.numOfPrimaryCases}">
				<li class="fieldcontain">
					<span id="numOfPrimaryCases-label" class="property-label"><g:message code="formB.numOfPrimaryCases.label" default="Num Of Primary Cases" /></span>
					
						<span class="property-value" aria-labelledby="numOfPrimaryCases-label"><g:fieldValue bean="${formBInstance}" field="numOfPrimaryCases"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.numOfTotalCases}">
				<li class="fieldcontain">
					<span id="numOfTotalCases-label" class="property-label"><g:message code="formB.numOfTotalCases.label" default="Num Of Total Cases" /></span>
					
						<span class="property-value" aria-labelledby="numOfTotalCases-label"><g:fieldValue bean="${formBInstance}" field="numOfTotalCases"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.numDeaths}">
				<li class="fieldcontain">
					<span id="numDeaths-label" class="property-label"><g:message code="formB.numDeaths.label" default="Num Deaths" /></span>
					
						<span class="property-value" aria-labelledby="numDeaths-label"><g:fieldValue bean="${formBInstance}" field="numDeaths"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.developmentOfOutbreak}">
				<li class="fieldcontain">
					<span id="developmentOfOutbreak-label" class="property-label"><g:message code="formB.developmentOfOutbreak.label" default="Development Of Outbreak" /></span>
					
						<span class="property-value" aria-labelledby="developmentOfOutbreak-label"><g:fieldValue bean="${formBInstance}" field="developmentOfOutbreak"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.measuresTaken}">
				<li class="fieldcontain">
					<span id="measuresTaken-label" class="property-label"><g:message code="formB.measuresTaken.label" default="Measures Taken" /></span>
					
						<span class="property-value" aria-labelledby="measuresTaken-label"><g:fieldValue bean="${formBInstance}" field="measuresTaken"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.additionalInfo}">
				<li class="fieldcontain">
					<span id="additionalInfo-label" class="property-label"><g:message code="formB.additionalInfo.label" default="Additional Info" /></span>
					
						<span class="property-value" aria-labelledby="additionalInfo-label"><g:fieldValue bean="${formBInstance}" field="additionalInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="formB.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${formBInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.eventDate}">
				<li class="fieldcontain">
					<span id="eventDate-label" class="property-label"><g:message code="formB.eventDate.label" default="Event Date" /></span>
					
						<span class="property-value" aria-labelledby="eventDate-label"><g:formatDate date="${formBInstance?.eventDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formBInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="formB.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${formBInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>

                <g:if test="${formBInstance?.report}">
                    <li class="fieldcontain">
                        <span id="report-label" class="property-label"><g:message code="formB.report.label" default="Report" /></span>

                        <span class="property-value" aria-labelledby="report-label"><g:link controller="report" action="show" id="${formBInstance?.report?.id}">${formBInstance?.report?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

                <g:set var="formInstance" value="${formBInstance}"></g:set>
                <g:render template="../showStatus"/>
			
			</ol>
			<g:form url="[resource:formBInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formBInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
