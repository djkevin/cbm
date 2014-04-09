<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%

<div class="box">
    <h1><g:message code="formAPart1b.label" default="Form A Part 1b"/> </h1>
</div>
<br/><br/>

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
<br/><br/>%{--to allow gap when multi-page print--}%