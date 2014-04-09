<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%
<h4><g:message code="formG.long.label" default="Declaration of vaccine production facilities" /></h4>
<br/>

<g:if test="${formGInstance?.facilityName}">
    <li class="fieldcontain">
        <h4><g:message code="formG.facilityName.label" default="Facility Name" /></h4>

        <span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue bean="${formGInstance}" field="facilityName"/></span>

    </li>
</g:if>
<br/>

<g:if test="${formGInstance?.location}">
    <li class="fieldcontain">
        <h4><g:message code="formG.location.label" default="Location" /></h4>

        <span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${formGInstance}" field="location"/></span>

    </li>
</g:if>
<br/>

<g:if test="${formGInstance?.typesOfDiseaseCovered}">
    <h4><g:message code="formG.typesOfDiseaseCovered.label" default="Types Of Disease Covered" /></h4>
    <li>
        <span class="property-value" aria-labelledby="typesOfDiseaseCovered-label">${formGInstance.typesOfDiseaseCovered}</span>
    </li>
</g:if>