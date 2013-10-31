<%@ page import="cbm.FormAPart1ContainmentUnit" %>



<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'bioSafetyLevel', 'error')} ">
	<label for="bioSafetyLevel">
		<g:message code="formAPart1ContainmentUnit.bioSafetyLevel.label" default="Bio Safety Level" />
		
	</label>
</div>
<div><g:select name="bioSafetyLevel" from="${formAPart1ContainmentUnitInstance.constraints.bioSafetyLevel.inList}" value="${formAPart1ContainmentUnitInstance?.bioSafetyLevel}" valueMessagePrefix="formAPart1ContainmentUnit.bioSafetyLevel" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'unitType', 'error')} ">
	<label for="unitType">
		<g:message code="formAPart1ContainmentUnit.unitType.label" default="Unit Type" />
		
	</label>
</div>
<div><g:select name="unitType" from="${formAPart1ContainmentUnitInstance.constraints.unitType.inList}" value="${formAPart1ContainmentUnitInstance?.unitType}" valueMessagePrefix="formAPart1ContainmentUnit.unitType" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'unitSize', 'error')} required">
	<label for="unitSize">
		<g:message code="formAPart1ContainmentUnit.unitSize.label" default="Unit Size" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:select name="unitSize" from="${0..2000000}" class="range" required="" value="${fieldValue(bean: formAPart1ContainmentUnitInstance, field: 'unitSize')}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="formAPart1ContainmentUnit.comment.label" default="Comment" />
		
	</label>
</div>
<div><g:textField name="comment" maxlength="100" value="${formAPart1ContainmentUnitInstance?.comment}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="formAPart1ContainmentUnit.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:select id="facility" name="facility.id" from="${cbm.FormAPart1.list()}" optionKey="id" required="" value="${formAPart1ContainmentUnitInstance?.facility?.id}" class="many-to-one"/></div>

