<%@ page import="cbm.FormAPart2b" %>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'programName', 'error')} ">
    <label for="programName">
        <g:message code="formAPart2b.programName.label" default="Program Name"/>

    </label>
</div>
<div><g:textField class="longText" name="programName" value="${formAPart2bInstance?.programName}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'objectives', 'error')} required">
    <label for="objectives">
        <g:message code="formAPart2b.objectives.label" default="Objectives"/>
        <span class="required-indicator">*</span>
    </label>
</div>
<div><g:textArea class="wysiwyg" name="objectives" cols="40" rows="5" maxlength="5000" required=""
                 value="${formAPart2bInstance?.objectives}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'source', 'error')} ">
    <label for="source">
        <g:message code="formAPart2b.source.label" default="Source" />

    </label>
    <g:textArea class="longTextSml" name="source" value="${formAPart2bInstance?.source}" maxlength="500"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'amount', 'error')} required">
    <label for="amount" class="property-label25">
        <g:message code="formAPart2b.amount.label" default="Amount" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="amount" value="${fieldValue(bean: formAPart2bInstance, field: 'amount')}" required="" type="number"/>
</div>


<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'conductedUnderContract', 'error')} ">
    <label for="conductedUnderContract">
        <g:message code="formAPart2b.conductedUnderContract.label" default="Conducted Under Contract"/>

    </label>
</div>
<div><g:checkBox name="conductedUnderContract" value="${formAPart2bInstance?.conductedUnderContract}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'proportionContracted', 'error')} required">
    <label for="proportionContracted">
        <g:message code="formAPart2b.proportionContracted.label" default="Proportion Contracted"/>
        <span class="required-indicator">*</span>
    </label>
</div>
<div><g:textArea class="wysiwyg" name="proportionContracted" cols="40" rows="5" maxlength="5000" required=""
                 value="${formAPart2bInstance?.proportionContracted}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'summaryObjectivesContractor', 'error')} required">
    <label for="summaryObjectivesContractor">
        <g:message code="formAPart2b.summaryObjectivesContractor.label" default="Summary Objectives Contractor"/>
        <span class="required-indicator">*</span>
    </label>
</div>
<div><g:textArea class="wysiwyg" name="summaryObjectivesContractor" cols="40" rows="5" maxlength="5000" required=""
                 value="${formAPart2bInstance?.summaryObjectivesContractor}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'organisationalStructureDiagram', 'error')} required">
    <label for="organisationalStructureDiagram">
        <g:message code="formAPart2b.organisationalStructureDiagram.label" default="Organisational Structure Diagram"/>
        <span class="required-indicator">*</span>
    </label>
</div>
<div><input type="file" id="organisationalStructureDiagram" name="organisationalStructureDiagram"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'declaration', 'error')} required">
    <label for="declaration">
        <g:message code="formAPart2b.declaration.label" default="Declaration"/>
        <span class="required-indicator">*</span>
    </label>
</div>
<div><g:textArea class="wysiwyg" name="declaration" cols="40" rows="5" maxlength="5000" required=""
                 value="${formAPart2bInstance?.declaration}"/></div>


<g:message code="formAPart2b.formAPart2c.label" default="Form A Part2c"/>
<div>
    <ul class="one-to-many">
        <g:each in="${formAPart2bInstance?.formAPart2c?}" var="f">
            <g:link controller="formAPart2c" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link>&nbsp;
        </g:each>
    </ul>
</div>
<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'report', 'error')} required">
    <label for="report">
        <g:message code="formAPart2a.report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>
</div>

<div><g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required=""
               value="${formAPart2bInstance?.report?.id}" class="many-to-one"/></div>

<g:set var="formInstance" value="${formAPart2bInstance}"></g:set>
<g:render template="../formStatus"/>