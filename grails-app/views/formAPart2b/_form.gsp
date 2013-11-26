<%@ page import="cbm.FormAPart2b" %>



<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'programName', 'error')} ">
	<label for="programName">
		<g:message code="formAPart2b.programName.label" default="Program Name" />
		
	</label>
</div>
<div><g:textField name="programName" value="${formAPart2bInstance?.programName}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'objectives', 'error')} required">
	<label for="objectives">
		<g:message code="formAPart2b.objectives.label" default="Objectives" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea name="objectives" cols="40" rows="5" maxlength="5000" required="" value="${formAPart2bInstance?.objectives}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'conductedUnderContract', 'error')} ">
	<label for="conductedUnderContract">
		<g:message code="formAPart2b.conductedUnderContract.label" default="Conducted Under Contract" />
		
	</label>
</div>
<div><g:checkBox name="conductedUnderContract" value="${formAPart2bInstance?.conductedUnderContract}" /></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'proportionContracted', 'error')} required">
	<label for="proportionContracted">
		<g:message code="formAPart2b.proportionContracted.label" default="Proportion Contracted" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea name="proportionContracted" cols="40" rows="5" maxlength="5000" required="" value="${formAPart2bInstance?.proportionContracted}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'summaryObjectivesContractor', 'error')} required">
	<label for="summaryObjectivesContractor">
		<g:message code="formAPart2b.summaryObjectivesContractor.label" default="Summary Objectives Contractor" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea name="summaryObjectivesContractor" cols="40" rows="5" maxlength="5000" required="" value="${formAPart2bInstance?.summaryObjectivesContractor}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'organisationalStructureDiagram', 'error')} required">
	<label for="organisationalStructureDiagram">
		<g:message code="formAPart2b.organisationalStructureDiagram.label" default="Organisational Structure Diagram" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><input type="file" id="organisationalStructureDiagram" name="organisationalStructureDiagram" /></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'formAPart2bFunding', 'error')} ">
	<label for="formAPart2bFunding">
		<g:message code="formAPart2b.formAPart2bFunding.label" default="Form AP art2b Funding" />
		
	</label>
</div>
<div><g:select name="formAPart2bFunding" from="${cbm.FormAPart2bFunding.list()}" multiple="multiple" optionKey="id" size="5" value="${formAPart2bInstance?.formAPart2bFunding*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bInstance, field: 'formAPart2c', 'error')} ">
	<label for="formAPart2c">
		<g:message code="formAPart2b.formAPart2c.label" default="Form AP art2c" />
		
	</label>
</div>
<div><g:select name="formAPart2c" from="${cbm.FormAPart2c.list()}" multiple="multiple" optionKey="id" size="5" value="${formAPart2bInstance?.formAPart2c*.id}" class="many-to-many"/></div>

