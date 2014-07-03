<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%

<div class="box">
    <h1><g:message code="formAPart2b.label" default="Form A Part 2b"/> </h1>
</div>
<br/><br/>

<g:if test="${formAPart2bInstance?.programName}">
    <h4><g:message code="formAPart2b.programName.label" default="Program Name" /></h4>
    <li class="fieldcontain">
        <span class="property-value" aria-labelledby="programName-label"><g:fieldValue bean="${formAPart2bInstance}" field="programName"/></span>

    </li>
    <br/>
</g:if>


<g:if test="${formAPart2bInstance?.objectives}">
    <h4><g:message code="formAPart2b.objectives.label" default="Objectives" /></h4>
    <li>
        <span class="property-value" aria-labelledby="objectives-label">${formAPart2bInstance.objectives}</span>
    </li>
    <br/>
</g:if>

<g:if test="${formAPart2bInstance?.source}">
    <h4><g:message code="formAPart2b.funding.label" default="Source" /></h4>
    <li class="fieldcontain">
        <span id="source-label" class="property-label"><g:message code="formAPart2b.source.label" default="Source" /></span>

        <span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${formAPart2bInstance}" field="source"/></span>

    </li>
</g:if>

<g:if test="${formAPart2bInstance?.amount}">

    <li class="fieldcontain">
        <span class="property-label"><g:message code="formAPart2b.amount.label" default="Amount" /></span>
        <span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${formAPart2bInstance}" field="amount"/></span>
    </li>
    <br/>
</g:if>

<g:if test="${formAPart2bInstance?.conductedUnderContract}">
    <h4><g:message code="formAPart2b.conductedUnderContract.label" default="Conducted Under Contract" /></h4>
    <li>
        <span class="property-value" aria-labelledby="conductedUnderContract-label"><g:formatBoolean boolean="${formAPart2bInstance?.conductedUnderContract}" /></span>
    </li>
    <br/>
</g:if>

<g:if test="${formAPart2bInstance?.proportionContracted}">
    <h4><g:message code="formAPart2b.proportionContracted.label" default="Proportion Contracted" /></h4>
    <li>
        <span class="property-value" aria-labelledby="proportionContracted-label">${formAPart2bInstance.proportionContracted}</span>
    </li>
    <br/>
</g:if>

<g:if test="${formAPart2bInstance?.summaryObjectivesContractor}">
    <h4><g:message code="formAPart2b.summaryObjectivesContractor.label" default="Summary Objectives Contractor" /></h4>
    <li>
        <span class="property-value" aria-labelledby="summaryObjectivesContractor-label">${formAPart2bInstance.summaryObjectivesContractor}</span>
    </li>
    <br/>
</g:if>


<g:if test="${formAPart2bInstance?.formAPart2bOrganigram?.organisationalStructureDiagram}">
    <h4><g:message code="formAPart2b.organisationalStructureDiagram.label" default="Organisational Structure Diagram" /></h4>
    <rendering:inlineJpeg  bytes="${formAPart2bInstance?.formAPart2bOrganigram?.organisationalStructureDiagram}" />
</g:if>

<g:if test="${formAPart2bInstance?.declaration}">
    <h4><g:message code="formAPart2b.declaration.label" default="Declaration" /></h4>
    <li>
        <span class="property-value" aria-labelledby="summaryObjectivesContractor-label">${formAPart2bInstance.declaration}</span>
    </li>
    <br/>
</g:if>


<br/><br/>

<g:if test="${formAPart2bInstance?.formAPart2c}">
    <g:each in="${formAPart2bInstance.formAPart2c}" var="f">

        <g:set var="formAPart2cInstance" value="${f}" />
        <g:render template="../formAPart2c/view"/>

    </g:each>
</g:if>
<br/><br/>%{--to allow gap when multi-page print--}%