<%@ page import="cbm.FormAPart1ContainmentUnit" %>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="formAPart1ContainmentUnit.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField id="facility" name="facility.id"  value="${params.formAPart1.id}" readonly="readonly" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'bioSafetyLevel', 'error')} ">
	<label for="bioSafetyLevel">
		<g:message code="formAPart1ContainmentUnit.bioSafetyLevel.label" default="Bio Safety Level" />
	</label>
<g:select name="bioSafetyLevel" from="${formAPart1ContainmentUnitInstance.constraints.bioSafetyLevel.inList}" value="${formAPart1ContainmentUnitInstance?.bioSafetyLevel}" valueMessagePrefix="formAPart1ContainmentUnit.bioSafetyLevel" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'unitType', 'error')} ">
	<label for="unitType">
		<g:message code="formAPart1ContainmentUnit.unitType.label" default="Unit Type" />
		
	</label>
<g:select name="unitType" from="${formAPart1ContainmentUnitInstance.constraints.unitType.inList}" value="${formAPart1ContainmentUnitInstance?.unitType}" valueMessagePrefix="formAPart1ContainmentUnit.unitType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'unitSize', 'error')} required">
	<label for="unitSize">
		<g:message code="formAPart1ContainmentUnit.unitSize.label" default="Unit Size" />
		<span class="required-indicator">*</span>
	</label>
<g:field name="unitSize" type="number" value="${formAPart1ContainmentUnitInstance.unitSize}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="formAPart1ContainmentUnit.comment.label" default="Comment" />
		
	</label>
<g:textField name="comment" maxlength="200" value="${formAPart1ContainmentUnitInstance?.comment}"/>
</div>




