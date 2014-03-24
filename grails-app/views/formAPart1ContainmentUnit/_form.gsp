<%@ page import="cbm.FormAPart1a; cbm.FormAPart1ContainmentUnit" %>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'facility', 'error')} required">
	<label for="facility" class="property-label">
		<g:message code="formAPart1ContainmentUnit.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
    <g:textField id="facility.name" class="medText" name="facility.name" value="${formAPart1ContainmentUnitInstance?.facility?.facilityName}" readonly="readonly"/>
	<g:hiddenField id="facility" name="facility.id"  value="${formAPart1ContainmentUnitInstance?.facility?.id}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'bioSafetyLevel', 'error')} ">
	<label for="bioSafetyLevel" class="property-label">
		<g:message code="formAPart1ContainmentUnit.bioSafetyLevel.label" default="Bio Safety Level" />
	</label>
<g:select name="bioSafetyLevel" from="${formAPart1ContainmentUnitInstance.constraints.bioSafetyLevel.inList}" value="${formAPart1ContainmentUnitInstance?.bioSafetyLevel}" valueMessagePrefix="formAPart1ContainmentUnit.bioSafetyLevel" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'unitType', 'error')} ">
	<label for="unitType" class="property-label">
		<g:message code="formAPart1ContainmentUnit.unitType.label" default="Unit Type" />
		
	</label>
<g:select name="unitType" from="${formAPart1ContainmentUnitInstance.constraints.unitType.inList}" value="${formAPart1ContainmentUnitInstance?.unitType}" valueMessagePrefix="formAPart1ContainmentUnit.unitType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'unitSize', 'error')} required">
	<label for="unitSize" class="property-label">
		<g:message code="formAPart1ContainmentUnit.unitSize.label" default="Unit Size" />
		<span class="required-indicator">*</span>
	</label>
<g:field name="unitSize" type="number" value="${formAPart1ContainmentUnitInstance.unitSize}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1ContainmentUnitInstance, field: 'comment', 'error')} ">
	<label for="comment" class="property-label">
		<g:message code="formAPart1ContainmentUnit.comment.label" default="Comment" />
		
	</label>
<g:textField name="comment" class="medText" maxlength="${formAPart1ContainmentUnitInstance?.constraints?.comment?.maxSize}" value="${formAPart1ContainmentUnitInstance?.comment}"/>
</div>




