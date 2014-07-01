<%@ page import="cbm.form.FormE" %>

<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formEInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formEInstance?.report}" readonly="true" />
</div>

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
            <td><g:select name="developmentAndMeansOfDelivery.legislation" from="${formEInstance?.developmentAndMeansOfDelivery?.constraints?.legislation?.inList}" value="${formEInstance?.developmentAndMeansOfDelivery?.legislation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="developmentAndMeansOfDelivery.regulation" from="${formEInstance?.developmentAndMeansOfDelivery?.constraints?.regulation?.inList}" value="${formEInstance?.developmentAndMeansOfDelivery?.regulation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="developmentAndMeansOfDelivery.otherMeasures" from="${formEInstance?.developmentAndMeansOfDelivery?.constraints?.otherMeasures?.inList}" value="${formEInstance?.developmentAndMeansOfDelivery?.otherMeasures}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="developmentAndMeansOfDelivery.amendedSinceLastYear" from="${formEInstance?.developmentAndMeansOfDelivery?.constraints?.amendedSinceLastYear?.inList}" value="${formEInstance?.developmentAndMeansOfDelivery?.amendedSinceLastYear}" valueMessagePrefix="formE.selection" /></td>
        </tr>
        <tr>
            <td><g:message code="formE.export.microorganism" default="Exports of micro-organisms and toxins" /></td>
            <td><g:select name="exportsOfMicroOrganisms.legislation" from="${formEInstance?.exportsOfMicroOrganisms?.constraints?.legislation?.inList}" value="${formEInstance?.exportsOfMicroOrganisms?.legislation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="exportsOfMicroOrganisms.regulation" from="${formEInstance?.exportsOfMicroOrganisms?.constraints?.regulation?.inList}" value="${formEInstance?.exportsOfMicroOrganisms?.regulation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="exportsOfMicroOrganisms.otherMeasures" from="${formEInstance?.exportsOfMicroOrganisms?.constraints?.otherMeasures?.inList}" value="${formEInstance?.exportsOfMicroOrganisms?.otherMeasures}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="exportsOfMicroOrganisms.amendedSinceLastYear" from="${formEInstance?.exportsOfMicroOrganisms?.constraints?.amendedSinceLastYear?.inList}" value="${formEInstance?.exportsOfMicroOrganisms?.amendedSinceLastYear}" valueMessagePrefix="formE.selection" /></td>
        </tr>
        <tr>
            <td><g:message code="formE.import.microorganism" default="Imports of micro-organisms and toxins" /></td>
            <td><g:select name="importsOfMicroOrganisms.legislation" from="${formEInstance?.importsOfMicroOrganisms?.constraints?.legislation?.inList}" value="${formEInstance?.importsOfMicroOrganisms?.legislation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="importsOfMicroOrganisms.regulation" from="${formEInstance?.importsOfMicroOrganisms?.constraints?.regulation?.inList}" value="${formEInstance?.importsOfMicroOrganisms?.regulation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="importsOfMicroOrganisms.otherMeasures" from="${formEInstance?.importsOfMicroOrganisms?.constraints?.otherMeasures?.inList}" value="${formEInstance?.importsOfMicroOrganisms?.otherMeasures}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="importsOfMicroOrganisms.amendedSinceLastYear" from="${formEInstance?.importsOfMicroOrganisms?.constraints?.amendedSinceLastYear?.inList}" value="${formEInstance?.importsOfMicroOrganisms?.amendedSinceLastYear}" valueMessagePrefix="formE.selection" /></td>
        </tr>
        <tr>
            <td><g:message code="formE.bioSafety" default="Biosafety and biosecurity" /></td>
            <td><g:select name="biosafetyAndBioSecurity.legislation" from="${formEInstance?.biosafetyAndBioSecurity?.constraints?.legislation?.inList}" value="${formEInstance?.biosafetyAndBioSecurity?.legislation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="biosafetyAndBioSecurity.regulation" from="${formEInstance?.biosafetyAndBioSecurity?.constraints?.regulation?.inList}" value="${formEInstance?.biosafetyAndBioSecurity?.regulation}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="biosafetyAndBioSecurity.otherMeasures" from="${formEInstance?.biosafetyAndBioSecurity?.constraints?.otherMeasures?.inList}" value="${formEInstance?.biosafetyAndBioSecurity?.otherMeasures}" valueMessagePrefix="formE.selection" /></td>
            <td><g:select name="biosafetyAndBioSecurity.amendedSinceLastYear" from="${formEInstance?.biosafetyAndBioSecurity?.constraints?.amendedSinceLastYear?.inList}" value="${formEInstance?.biosafetyAndBioSecurity?.amendedSinceLastYear}" valueMessagePrefix="formE.selection" /></td>
        </tr>
        </tbody>
    </table>
</div>

<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'additionalComments', 'error')} ">
    <label for="additionalComments">
        <g:message code="formE.additionalComments.label" default="Additional Comments" />
        %{--<span class="required-indicator">*</span>--}%
    </label>
    <div>
        <g:textArea class="wysiwyg" name="additionalComments" value="${formEInstance?.additionalComments}" maxlength="${formEInstance?.constraints?.additionalComments?.maxSize}"/>
    </div>
</div>
<g:set var="formInstance" value="${formEInstance}"></g:set>
<g:render template="../formStatus"/>




