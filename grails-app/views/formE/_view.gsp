<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%
<h4><g:message code="formE.long.label" default="Declaration of legislation"/></h4>
<br/>

<div id="list-formZero" class="content scaffold-list" role="main">
    <table>
        <thead>
        <tr>
            <th><g:message code="formE.relatingTo.label" default="Relating to" /></th>
            <th><g:message code="formE.legislation.label" default="Legislation" /></th>
            <th><g:message code="formE.regulation.label" default="Regulations" /></th>
            <th><g:message code="formE.otherMeasures.label" default="Other Measures"/> </th>
            <th><g:message code="formE.amendedSinceLastYear.label" default="Amended since last year" /></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><g:message code="formE.development.production" default="Development, production stockpiling, acquisition or retention" /></td>
            <td>${formEInstance?.developmentAndMeansOfDelivery?.legislation}</td>
            <td>${formEInstance?.developmentAndMeansOfDelivery?.regulation}</td>
            <td>${formEInstance?.developmentAndMeansOfDelivery?.otherMeasures}</td>
            <td>${formEInstance?.developmentAndMeansOfDelivery?.amendedSinceLastYear}</td>
        </tr>
        <tr>
            <td><g:message code="formE.export.microorganism" default="Exports of micro-organisms and toxins" /></td>
            <td>${formEInstance?.exportsOfMicroOrganisms?.legislation}</td>
            <td>${formEInstance?.exportsOfMicroOrganisms?.regulation}</td>
            <td>${formEInstance?.exportsOfMicroOrganisms?.otherMeasures}</td>
            <td>${formEInstance?.exportsOfMicroOrganisms?.amendedSinceLastYear}</td>
        </tr>
        <tr>
            <td><g:message code="formE.import.microorganism" default="Imports of micro-organisms and toxins" /></td>
            <td>${formEInstance?.importsOfMicroOrganisms?.legislation}</td>
            <td>${formEInstance?.importsOfMicroOrganisms?.regulation}</td>
            <td>${formEInstance?.importsOfMicroOrganisms?.otherMeasures}</td>
            <td>${formEInstance?.importsOfMicroOrganisms?.amendedSinceLastYear}</td>
        </tr>
        <tr>
            <td><g:message code="formE.bioSafety" default="Biosafety and biosecurity" /></td>
            <td>${formEInstance?.biosafetyAndBioSecurity?.legislation}</td>
            <td>${formEInstance?.biosafetyAndBioSecurity?.regulation}</td>
            <td>${formEInstance?.biosafetyAndBioSecurity?.otherMeasures}</td>
            <td>${formEInstance?.biosafetyAndBioSecurity?.amendedSinceLastYear}</td>
        </tr>
        </tbody>
    </table>
</div>

<br/>

<li>
    <h4><g:message code="formE.additionalComments.label" default="Additional Comments" /></h4>
    <span class="property-value" aria-labelledby="additionalComments-label">${formEInstance.additionalComments}</span>
</li>
