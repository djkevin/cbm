<%@ page import="cbm.FormAPart2bOrganigram" %>

<div class="fieldcontain ${hasErrors(bean: formAPart2bOrganigramInstance, field: 'formAPart2b', 'error')} required">
    <label for="formAPart2b">
        <g:message code="formAPart2c.program.label" default="Program"/>
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="formAPart2b.id" id="formAPart2b" value="${formAPart2bOrganigramInstance?.formAPart2b?.id}" />
    <g:field type="text" id="formAPart2b.name" name="formAPart2b.name" value="${formAPart2bOrganigramInstance?.formAPart2b}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bOrganigramInstance, field: 'organisationalStructureDiagram', 'error')} ">
	<label for="organisationalStructureDiagram" class="property-label25">
		<g:message code="formAPart2bOrganigram.organisationalStructureDiagram.label" default="Organisational Structure Diagram" />
		
	</label>
	<input type="file" id="organisationalStructureDiagram" name="organisationalStructureDiagram" />
</div>

