<%@ page import="cbm.FormAPart1" %>
	
<div class="fieldcontain ${hasErrors(bean: formAPart1Instance, field: 'facilityName', 'error')} required">
	<label for="facilityName">
		<g:message code="formAPart1.facilityName.label" default="Facility Name" />
		<span class="required-indicator">*</span>
	</label>	
</div>
<div><g:textField class="longText" name="facilityName" maxlength="250" required="" value="${formAPart1Instance?.facilityName}"/></div>


	
	<div class="fieldcontain ${hasErrors(bean: formAPart1Instance, field: 'responsibleOrganisation', 'error')} required">
	<label for="responsibleOrganisation">
		<g:message code="formAPart1.responsibleOrganisation.label" default="Responsible Organisation" />
		<span class="required-indicator">*</span>
	</label>	
</div>
<div><g:textArea class="small" name="responsibleOrganisation" cols="40" rows="5" maxlength="500" required="" value="${formAPart1Instance?.responsibleOrganisation}"/></div>

<div class="wrapper">
	<div class="left1">
		<div
			class="fieldcontain ${hasErrors(bean: formAPart1Instance, field: 'location', 'error')} required">
			<label for="location"> <g:message
					code="formAPart1.location.label" default="Location" /> <span
				class="required-indicator">*</span>
			</label>
		</div>
		<div>
			<g:textArea class="twoCol" name="location" cols="40" rows="5"
				maxlength="500" required="" value="${formAPart1Instance?.location}" />
		</div>
	</div>
	<div class="left2">
		<div
			class="fieldcontain ${hasErrors(bean: formAPart1Instance, field: 'postalAddress', 'error')} required">
			<label for="postalAddress"> <g:message
					code="formAPart1.postalAddress.label" default="Postal Address" />
				<span class="required-indicator">*</span>
			</label>
		</div>
		<div>
			<g:textArea class="twoCol" name="postalAddress" cols="40" rows="5"
				maxlength="500" required=""
				value="${formAPart1Instance?.postalAddress}" />
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1Instance, field: 'financingSources', 'error')} required">
	<label for="financingSources">
		<g:message code="formAPart1.financingSources.label" default="Financing Sources" />
		<span class="required-indicator">*</span>
	</label>	
</div>
<div><g:textArea class="small" name="financingSources" cols="40" rows="5" maxlength="500" required="" value="${formAPart1Instance?.financingSources}"/></div>


	
	<div class="fieldcontain ${hasErrors(bean: formAPart1Instance, field: 'scope', 'error')} required">
	<label for="scope">
		<g:message code="formAPart1.scope.label" default="Scope" />
		<span class="required-indicator">*</span>
	</label>	
</div>
<div><g:textArea class="wysiwyg" name="scope" cols="40" rows="5" maxlength="1000" required="" value="${formAPart1Instance?.scope}"/></div>
<%--<div><ckeditor:editor  name="scope" height="400px" width="750px" toolbar="Mytoolbar">${formAPart1Instance?.scope}</ckeditor:editor></div>--%>

