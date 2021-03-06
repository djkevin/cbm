<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%

<div class="box">
    <h1><g:message code="formAPart1.label" default="Form A Part 1a"/> </h1>
</div>

<br/><br/>

<g:if test="${formAPart1aInstance?.facilityName}">
    <h4><g:message code="formAPart1.facilityName.label" default="Facility Name" /></h4>
    <li>
        <span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue
                bean="${formAPart1aInstance}" field="facilityName"/>
        </span>
        <span class="italics">
            <g:if test="${formAPart1aInstance.declaredInAccordanceWithFormAPart2c}">
                (<g:message code="formAPart1.declaredInAccordanceWithFormAPart2c.label"
                            default="Declared in accordance with FormAPart2c"/>)
            </g:if>
        </span>
    </li>

</g:if>
<br/>

<g:if test="${formAPart1aInstance?.responsibleOrganisation}">
    <h4><g:message code="formAPart1.responsibleOrganisation.label"
                   default="Responsible Organisation"/></h4>
    <li>
        <span class="property-value" aria-labelledby="responsibleOrganisation-label"><g:fieldValue
                bean="${formAPart1aInstance}" field="responsibleOrganisation"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formAPart1aInstance?.location}">
    <h4><g:message code="formAPart1.location.label" default="Location"/></h4>
    <li>
        <span class="property-value" aria-labelledby="address-label">
            <g:fieldValue bean="${formAPart1aInstance}" field="location"/>, <country:name country="${formAPart1aInstance?.country}"/>
        </span>
    </li>
</g:if>
<br/>

%{--<g:if test="${formAPart1aInstance?.postalAddress}">
    <h4><g:message code="formAPart1.postalAddress.label" default="Postal Address"/></h4>
    <li>

        <span class="property-value" aria-labelledby="postalAddress-label"><g:fieldValue
                bean="${formAPart1aInstance}" field="postalAddress"/></span>
    </li>
</g:if>
<br/>--}%

<g:if test="${formAPart1aInstance?.financingSources}">
    <h4><g:message code="formAPart1.financingSources.label" default="Financing Sources"/></h4>
    <li>
        <span class="property-value" aria-labelledby="financingSources-label"><g:fieldValue
                bean="${formAPart1aInstance}" field="financingSources"/></span>

    </li>
</g:if>
<br/>

<h4>
    <g:message code="formAPart1.formAContainmentUnitList.label" default="Containment Unit"/>
</h4>
<g:if test="${formAPart1aInstance?.formAContainmentUnitList}">

    <g:set var="formAPart1ContainmentUnitInstanceList" value="${formAPart1aInstance?.formAContainmentUnitList}"></g:set>
    <tmpl:listContainmentUnits/>

</g:if>
<br/>

<g:if test="${formAPart1aInstance?.scope}">
    <h4><g:message code="formAPart1.scope.label" default="Scope"/></h4>
    <li>
        ${formAPart1aInstance.scope}

    </li>
</g:if>