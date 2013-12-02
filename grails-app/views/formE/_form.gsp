<%@ page import="cbm.FormE" %>



<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'formStatus', 'error')} ">
	<label for="formStatus" class="property-label25">
		<g:message code="formE.formStatus.label" default="Form Status" />
		
	</label>
	<g:select name="formStatus" from="${formEInstance.constraints.formStatus.inList}" value="${formEInstance?.formStatus}" valueMessagePrefix="formE.formStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'visibility', 'error')} ">
	<label for="visibility" class="property-label25">
		<g:message code="formE.visibility.label" default="Visibility" />
		
	</label>
	<g:select name="visibility" from="${formEInstance.constraints.visibility.inList}" value="${formEInstance?.visibility}" valueMessagePrefix="formE.visibility" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'additionalComments', 'error')} ">
	<label for="additionalComments" class="property-label25">
		<g:message code="formE.additionalComments.label" default="Additional Comments" />
		
	</label>
	<g:textField name="additionalComments" value="${formEInstance?.additionalComments}"/>
</div>

${formEInstance.biosafetyAndBioSecurity?.constraints?.amendedSinceLastYear?.inList}
<fieldset class="embedded"><legend><g:message code="formE.biosafetyAndBioSecurity.label" default="Biosafety And Bio Security" /></legend>
<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'biosafetyAndBioSecurity.amendedSinceLastYear', 'error')} ">
	<label for="biosafetyAndBioSecurity.amendedSinceLastYear" class="property-label25">
		<g:message code="formE.biosafetyAndBioSecurity.amendedSinceLastYear.label" default="Amended Since Last Year" />
		
	</label>
<%--	<g:select name="amendedSinceLastYear" from="${formEInstance.declarationOfMeasures.constraints.amendedSinceLastYear.inList}" value="${formEInstance.declarationOfMeasuresInstance?.amendedSinceLastYear}" valueMessagePrefix="declarationOfMeasures.amendedSinceLastYear" noSelection="['': '']"/>--%>
</div>


<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'title', 'error')} ">
	<label for="title" class="property-label25">
		<g:message code="formE.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${formEInstance?.title}"/>
</div>

