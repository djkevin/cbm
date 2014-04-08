<%@ defaultCodec="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

    <title><g:message code="formAPart2b.label"/></title>
    <%-- TODO Once rendering plugin can handle paths properly, use use resource plugin to provision stylesheet --%>
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'print.css', absolute: true)}"
          type="text/css"/>
</head>

<body>
<g:set var="formInstance" value="${formAPart2bInstance}" />
<g:render template="../common/printHeader"/>


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

<h4><g:message code="formAPart2b.organisationalStructureDiagram.label" default="Organisational Structure Diagram" /></h4>
<div style="width:100%">
    <g:if test="${formAPart2bInstance?.formAPart2bOrganigram}">
        [<g:link controller="formAPart2bOrganigram" action="edit" params="['id': formAPart2bInstance.formAPart2bOrganigram.id, 'formAPart2b.id': formAPart2bInstance?.id]"><g:message code="default.button.edit.label"/></g:link>]
        <img style="width:100%" src="${createLink(controller:'image', id:formAPart2bInstance?.formAPart2bOrganigram?.id, params:[fieldName:'organisationalStructureDiagram', classname:'cbm.FormAPart2bOrganigram',mime:'image/jpeg'])}"/>
        <br/>
    </g:if>
  %{--  <g:else>
        [<g:link controller="formAPart2bOrganigram" action="create" params="['formAPart2b.id': formAPart2bInstance?.id]"><g:message code="default.button.create.label"/></g:link>]
    </g:else>--}%
</div>


<g:if test="${formAPart2bInstance?.declaration}">
    <h4><g:message code="formAPart2b.declaration.label" default="Declaration" /></h4>
    <li>
        <span class="property-value" aria-labelledby="summaryObjectivesContractor-label">${formAPart2bInstance.declaration}</span>
    </li>
    <br/>
</g:if>

%{--<span class="property-label-b"><g:message code="formAPart2b.formAPart2c.label" default="Form A Part 2c" />
[<g:link controller="formAPart2c" action="create" params="['formAPart2b.id': formAPart2bInstance?.id]"><g:message code="default.button.create.label"/></g:link>]
</span>--}%

<br/>
<g:if test="${formAPart2bInstance?.formAPart2c}">
    <ul class="one-to-many">
        <g:each in="${formAPart2bInstance.formAPart2c}" var="f">
            <li>
                <g:link controller="formAPart2c" action="show"  params="['formAPart2b.id': formAPart2bInstance?.id]" id="${f.id}" >${f?.encodeAsHTML()}</g:link>
            </li>
        </g:each>
    </ul>
</g:if>


</body>
</html>