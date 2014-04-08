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
<g:set var="formInstance" value="${formAPart1bInstance}" />
<g:render template="../common/printHeader"/>

<h4><g:message code="formAPart1b.highestBSL.label" default="Indicate the highest BSL" /></h4>
<li class="fieldcontain">
    <span id="bioSafetyLevel3-label" class="property-label"><g:message code="formAPart1b.bioSafetyLevel3.label" default="Bio Safety Level3" /></span>
    <span class="property-value" aria-labelledby="bioSafetyLevel3-label"><g:formatBoolean boolean="${formAPart1bInstance?.bioSafetyLevel3}" /></span>

</li>

<li class="fieldcontain">
    <span id="bioSafetyLevel2-label" class="property-label"><g:message code="formAPart1b.bioSafetyLevel2.label" default="Bio Safety Level2" /></span>
    <span class="property-value" aria-labelledby="bioSafetyLevel2-label"><g:formatBoolean boolean="${formAPart1bInstance?.bioSafetyLevel2}" /></span>

</li>
<br/>

<g:if test="${formAPart1bInstance?.additionalInformation}">
    <h4><g:message code="formAPart1b.additionalInformation.label" default="Additional Information" /></h4>
    <li class="fieldcontain">

        <span  aria-labelledby="additionalInformation-label"><g:fieldValue bean="${formAPart1bInstance}" field="additionalInformation"/></span>

    </li>
</g:if>





</body>
</html>