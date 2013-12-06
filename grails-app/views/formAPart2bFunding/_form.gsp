<%@ page import="cbm.FormAPart2bFunding" %>



<div class="fieldcontain ${hasErrors(bean: formAPart2bFundingInstance, field: 'organisationalStructureDiagram', 'error')} required">
	<label for="organisationalStructureDiagram" class="property-label25">
		<g:message code="formAPart2bFunding.organisationalStructureDiagram.label" default="Organisational Structure Diagram" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="organisationalStructureDiagram" name="organisationalStructureDiagram" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bFundingInstance, field: 'source', 'error')} ">
	<label for="source" class="property-label25">
		<g:message code="formAPart2bFunding.source.label" default="Source" />
		
	</label>
	<g:textField name="source" value="${formAPart2bFundingInstance?.source}"/>
</div>

