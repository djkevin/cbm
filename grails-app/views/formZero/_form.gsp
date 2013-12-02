<%@ page import="cbm.FormZero" %>



<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formStatus', 'error')} ">
	<label for="formStatus" class="property-label25">
		<g:message code="formZero.formStatus.label" default="Form Status" />
		
	</label>
	<g:select name="formStatus" from="${formZeroInstance.constraints.formStatus.inList}" value="${formZeroInstance?.formStatus}" valueMessagePrefix="formZero.formStatus" noSelection="['': '']"/>
</div>
<fieldset class="embedded"><legend><g:message code="formZero.formAPart1.label" default="Form AP art1" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart1.nothingNewToDeclare', 'error')} ">
	<label for="formAPart1.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formAPart1.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart1.nothingToDeclare', 'error')} ">
	<label for="formAPart1.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formAPart1.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart1.yearOfLastDeclaration', 'error')} required">
	<label for="formAPart1.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formAPart1.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formAPart2a.label" default="Form AP art2a" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2a.nothingNewToDeclare', 'error')} ">
	<label for="formAPart2a.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formAPart2a.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2a.nothingToDeclare', 'error')} ">
	<label for="formAPart2a.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formAPart2a.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2a.yearOfLastDeclaration', 'error')} required">
	<label for="formAPart2a.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formAPart2a.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formAPart2b.label" default="Form AP art2b" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2b.nothingNewToDeclare', 'error')} ">
	<label for="formAPart2b.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formAPart2b.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2b.nothingToDeclare', 'error')} ">
	<label for="formAPart2b.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formAPart2b.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2b.yearOfLastDeclaration', 'error')} required">
	<label for="formAPart2b.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formAPart2b.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formAPart2c.label" default="Form AP art2c" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2c.nothingNewToDeclare', 'error')} ">
	<label for="formAPart2c.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formAPart2c.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2c.nothingToDeclare', 'error')} ">
	<label for="formAPart2c.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formAPart2c.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formAPart2c.yearOfLastDeclaration', 'error')} required">
	<label for="formAPart2c.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formAPart2c.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formB.label" default="Form B" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formB.nothingNewToDeclare', 'error')} ">
	<label for="formB.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formB.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formB.nothingToDeclare', 'error')} ">
	<label for="formB.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formB.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formB.yearOfLastDeclaration', 'error')} required">
	<label for="formB.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formB.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formC.label" default="Form C" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formC.nothingNewToDeclare', 'error')} ">
	<label for="formC.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formC.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formC.nothingToDeclare', 'error')} ">
	<label for="formC.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formC.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formC.yearOfLastDeclaration', 'error')} required">
	<label for="formC.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formC.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formE.label" default="Form E" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formE.nothingNewToDeclare', 'error')} ">
	<label for="formE.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formE.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formE.nothingToDeclare', 'error')} ">
	<label for="formE.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formE.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formE.yearOfLastDeclaration', 'error')} required">
	<label for="formE.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formE.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formF.label" default="Form F" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formF.nothingNewToDeclare', 'error')} ">
	<label for="formF.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formF.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formF.nothingToDeclare', 'error')} ">
	<label for="formF.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formF.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formF.yearOfLastDeclaration', 'error')} required">
	<label for="formF.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formF.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="formZero.formG.label" default="Form G" /></legend>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formG.nothingNewToDeclare', 'error')} ">
	<label for="formG.nothingNewToDeclare" class="property-label25">
		<g:message code="formZero.formG.nothingNewToDeclare.label" default="Nothing New To Declare" />
		
	</label>
	<g:checkBox name="nothingNewToDeclare" value="${declarationFormInstance?.nothingNewToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formG.nothingToDeclare', 'error')} ">
	<label for="formG.nothingToDeclare" class="property-label25">
		<g:message code="formZero.formG.nothingToDeclare.label" default="Nothing To Declare" />
		
	</label>
	<g:checkBox name="nothingToDeclare" value="${declarationFormInstance?.nothingToDeclare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'formG.yearOfLastDeclaration', 'error')} required">
	<label for="formG.yearOfLastDeclaration" class="property-label25">
		<g:message code="formZero.formG.yearOfLastDeclaration.label" default="Year Of Last Declaration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: declarationFormInstance, field: 'yearOfLastDeclaration')}"/>
</div>
</fieldset>
