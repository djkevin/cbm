<%@ defaultCodec="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

    <title><g:message code="formF.label"/></title>
    <%-- TODO Once rendering plugin can handle paths properly, use use resource plugin to provision stylesheet --%>
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'print.css', absolute: true)}"
          type="text/css"/>
</head>

<body>
<g:set var="formInstance" value="${formFInstance}" />
<g:render template="../common/printHeader"/>

<h4><g:message code="formF.long.label" default="Declaration of past activities" /></h4>
<br/>
<g:if test="${formFInstance?.entryIntoForceOfConvention}">
    <li>
        <h4><g:message code="formF.entryIntoForceOfConvention.label" default="Entry Into Force Of Convention" /></h4>
        <span class="property-value" aria-labelledby="entryIntoForceOfConvention-label"><g:formatDate format="dd-MMM-yyyy" date="${formFInstance?.entryIntoForceOfConvention}" /></span>
    </li>
    <br/>
</g:if>

<g:if test="${formFInstance?.offensiveActivity}">
    <g:set var="activity" value="${formFInstance.offensiveActivity}"></g:set>

    <g:if test="${activity?.pastBiologicalActivity}">
        <li>
            <h4><g:message code="formF.offensiveActivity.pastBiologicalActivity.label" default="Past biological activity" /></h4>
            <span class="property-value" aria-labelledby="pastBiologicalActivity-label"><g:formatBoolean boolean="${activity.pastBiologicalActivity}"/></span>
        </li>
        <br/>
    </g:if>

    <g:if test="${activity?.periodOfActivity}">
        <h4><span id="periodOfActivity-label" class="property-label"><g:message code="formF.offensiveActivity.periodOfActivity.label" default="Period of activity" /></span></h4>
        <li>
            <span class="property-value" aria-labelledby="periodOfActivity-label"><g:fieldValue bean="${activity}" field="periodOfActivity"/></span>
        </li>
        <br/>
    </g:if>


    <g:if test="${activity?.summaryOfRnDActivities}">
        <h4><span id="summaryOfRnDActivities-label" class="property-label"><g:message code="formF.offensiveActivity.summaryOfRnDActivities.label" default="Summary of Resaearch And Development activities" /></span></h4>
        <li>
            <span class="property-value" aria-labelledby="summaryOfRnDActivities-label">${activity.summaryOfRnDActivities}</span>
        </li>
        <br/>
    </g:if>

</g:if>

<g:if test="${formFInstance?.defensiveActivity}">
    <g:set var="activity" value="${formFInstance.defensiveActivity}"></g:set>

    <g:if test="${activity?.pastBiologicalActivity}">
        <li>
            <h4><g:message code="formF.defensiveActivity.pastBiologicalActivity.label" default="Past biological activity" /></h4>
            <span class="property-value" aria-labelledby="pastBiologicalDActivity-label"><g:formatBoolean boolean="${activity.pastBiologicalActivity}"/></span>
        </li>
        <br/>
    </g:if>

    <g:if test="${activity?.periodOfActivity}">
        <h4> <span id="periodOfDActivity-label" class="property-label"><g:message code="formF.defensiveActivity.periodOfActivity.label" default="Period of activity" /></span></h4>
        <li>
            <span class="property-value" aria-labelledby="periodOfDActivity-label"><g:fieldValue bean="${activity}" field="periodOfActivity"/></span>
        </li>
        <br/>
    </g:if>

    <g:if test="${activity?.summaryOfRnDActivities}">
        <h4><span id="summaryOfDRnDActivities-label" class="property-label"><g:message code="formF.defensiveActivity.summaryOfRnDActivities.label" default="Summary of Research and Development activities" /></span></h4>
        <li>
            <span class="property-value" aria-labelledby="summaryOfDRnDActivities-label">${activity.summaryOfRnDActivities}</span>
        </li>
        <br/>
    </g:if>

</g:if>

</body>
</html>