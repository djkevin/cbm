<%@ defaultCodec="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

    <title><g:message code="formAPart1.label"/></title>
    <%-- TODO Once rendering plugin can handle paths properly, use use resource plugin to provision stylesheet --%>
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'print.css', absolute: true)}"
          type="text/css"/>
</head>

<body>

<div class="table header">
    <div>
        <div>
            <h1><g:message code="global.label.organization"/></h1>

            <h2><g:message code="global.label.division"/></h2>

            %{--<h3><g:message code="global.label.unit"/></h3>--}%
        </div>

        <div>
            <%-- Removing brackets in message() is syntactically correct, but leads to internal server error when .gsp is transformed to servlet --%>
            <img  src="${resource(dir: 'images', file: 'unlogo.png', absolute: 'true')}"
                 alt="${message(code: 'global.label.logo')}"/>
        </div>

        <div>
            <h1><g:message code="report.label"/> </h1>
            <h2>${formAPart1aInstance.report.stateParty}</h2>

            <h3><g:message code="formAPart1.label"/></h3>
        </div>
    </div>
</div>

<g:if test="${formAPart1aInstance?.facilityName}">
    <h4><g:message code="formAPart1.facilityName.label" default="Facility Name"/></h4>
    <li>
        <span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue
                bean="${formAPart1aInstance}" field="facilityName"/></span>
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
        <span class="property-value" aria-labelledby="location-label"><g:fieldValue
                bean="${formAPart1aInstance}" field="location"/></span>
    </li>
</g:if>
<br/>

<g:if test="${formAPart1aInstance?.postalAddress}">
    <h4><g:message code="formAPart1.postalAddress.label" default="Postal Address"/></h4>
    <li>

        <span class="property-value" aria-labelledby="postalAddress-label"><g:fieldValue
                bean="${formAPart1aInstance}" field="postalAddress"/></span>
    </li>
</g:if>
<br/>

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
    <g:render template="listContainmentUnits" contextPath="../formAPart1ContainmentUnit" ></g:render>

</g:if>
<br/>

<g:if test="${formAPart1aInstance?.scope}">
    <h4><g:message code="formAPart1.scope.label" default="Scope"/></h4>
    <li>
        ${formAPart1aInstance.scope}

    </li>
</g:if>
<br/>


</body>
</html>