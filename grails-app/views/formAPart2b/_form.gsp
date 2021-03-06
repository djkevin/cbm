<%@ page import="cbm.form.FormAPart2b" %>


<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formAPart2bInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formAPart2bInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'programName', 'error')} ">
    <label for="programName">
        <g:message code="formAPart2b.programName.label" default="Program Name"/>
        <span class="required-indicator">*</span>
    </label>
</div>
<div><g:textField class="longText" name="programName" value="${formAPart2bInstance?.programName}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'objectives', 'error')} required">
    <label for="objectives">
        <g:message code="formAPart2b.objectives.label" default="Objectives"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea class="wysiwyg" name="objectives" cols="40" rows="5" maxlength="${formAPart2bInstance?.constraints?.objectives?.maxSize}" required=""
                     value="${formAPart2bInstance?.objectives}"/>
</div>


<div class="fieldcontain ">
    <label>
        <g:message code="formAPart2b.funding.label" default="Source"/>
    </label>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'source', 'error')} ">
    <label for="source">
        <g:message code="formAPart2b.source.label" default="Source" />
        <span class="required-indicator">*</span>
    </label>
    <g:textArea class="longTextSml" name="source" value="${formAPart2bInstance?.source}" maxlength="${formAPart2bInstance?.constraints?.source?.maxSize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'amount', 'error')} required">
    <label for="amount" class="property-label25">
        <g:message code="formAPart2b.amount.label" default="Amount" />
        <span class="required-indicator">*</span>

    </label>
    <g:textField name="amount" value="${formAPart2bInstance.amount}" required="" />
    <g:currencySelect name="currency" value="${formAPart2bInstance.currency}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'fundingSourceRemarks', 'error')} ">
    <label for="summaryObjectivesContractor">
        2.3 <g:message code="default.additional.comments.label" default="Additional comments"/>
    </label>
    <g:textArea class="wysiwyg" name="fundingSourceRemarks" cols="40" rows="5" maxlength="${formAPart2bInstance?.constraints?.fundingSourceRemarks?.maxSize}" required=""
                value="${formAPart2bInstance?.fundingSourceRemarks}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'conductedUnderContract', 'error')} ">
    <label for="conductedUnderContract">
        <g:message code="formAPart2b.conductedUnderContract.label" default="Conducted Under Contract"/>
        <span class="required-indicator">*</span>
    </label>
</div>
%{--<div><g:checkBox name="conductedUnderContract" value="${formAPart2bInstance?.conductedUnderContract}"/></div>--}%
<div class="fieldcontain">
    <g:radioGroup name="conductedUnderContract" value="${formAPart2bInstance?.conductedUnderContract == null ? 'false': formAPart2bInstance?.conductedUnderContract}"
                  values="['true','false']"
                  labels="['Yes','No']" >     %{--TODO i18n--}%
        <span>${it.radio} ${it.label}</span>

    </g:radioGroup>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'proportionContracted', 'error')} ">
    <label for="proportionContracted">
        <g:message code="formAPart2b.proportionContracted.label" default="Proportion Contracted"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea class="wysiwyg" name="proportionContracted" cols="40" rows="5" maxlength="${formAPart2bInstance?.constraints?.proportionContracted?.maxSize}" required=""
                     value="${formAPart2bInstance?.proportionContracted}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'summaryObjectivesContractor', 'error')} ">
    <label for="summaryObjectivesContractor">
        <g:message code="formAPart2b.summaryObjectivesContractor.label" default="Summary Objectives Contractor"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea class="wysiwyg" name="summaryObjectivesContractor" cols="40" rows="5" maxlength="${formAPart2bInstance?.constraints?.summaryObjectivesContractor?.maxSize}" required=""
                     value="${formAPart2bInstance?.summaryObjectivesContractor}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance?.formAPart2bOrganigram, field: 'organisationalStructureDiagram', 'error')} required">
    <label for="formAPart2bOrganigram.organisationalStructureDiagram">
        <g:message code="formAPart2b.organisationalStructureDiagram.label" default="Organisational Structure Diagram"/>
    </label>

</div>
<!-- file upload - value is readonly and can only be set by user selecting a file -->
<div><input type="file" id="formAPart2bOrganigram.organisationalStructureDiagram" name="organisationalStructureDiagram" value="" accept="image/*" />


    <g:if test = "${formAPart2bInstance?.formAPart2bOrganigram}">
        <g:link action="displayImage" target="_blank" params="['formAPart2bOrganigram.id': formAPart2bInstance.formAPart2bOrganigram.id]">${formAPart2bInstance.formAPart2bOrganigram.fileName}</g:link>
    </g:if>

    <br/>
    <span class="instructions"><g:message code="formAPart2b.orgdiagram.format" /> </span>
    %{--<g:else><g:message code="formAPart2b.orgStructureDiagram.no.file" default="No file uploaded yet" /></g:else>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'organigramDescription', 'error')} ">
    <label for="summaryObjectivesContractor">
        6.1 <g:message code="formAPart2b.organigramDescription.label" default="Additional comments"/>
        %{--<span class="required-indicator">*</span>--}%
    </label>
    <g:textArea class="wysiwyg" name="organigramDescription" cols="40" rows="5" maxlength="${formAPart2bInstance?.constraints?.organigramDescription?.maxSize}" required=""
                value="${formAPart2bInstance?.organigramDescription}"/>
</div>

<br>

<div>
    <g:message code="formAPart2b.declaration.label" default="Description"/>
</div>




<g:set var="formInstance" value="${formAPart2bInstance}"></g:set>
<g:render template="../formStatus"/>
