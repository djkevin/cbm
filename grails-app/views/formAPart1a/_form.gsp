<%@ page import="cbm.FormAPart1a" %>



<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'facilityName', 'error')} required">
	<label for="facilityName">
		<g:message code="formAPart1.facilityName.label" default="Facility Name" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textField class="longText" name="facilityName" maxlength="250" required="" value="${formAPart1aInstance?.facilityName}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'responsibleOrganisation', 'error')} required">
	<label for="responsibleOrganisation">
		<g:message code="formAPart1.responsibleOrganisation.label" default="Responsible Organisation" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea class="longTextSml" name="responsibleOrganisation" cols="40" rows="5" maxlength="500" required="" value="${formAPart1aInstance?.responsibleOrganisation}"/></div>

<div class="wrapper">
	<div class="left1">
		<div
			class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'location', 'error')} required">
			<label for="location"> <g:message
					code="formAPart1.location.label" default="Location" /> <span
				class="required-indicator">*</span>
			</label>
		</div>
		<div>
			<g:textArea class="twoCol" name="location" cols="40" rows="5"
				maxlength="500" required="" value="${formAPart1aInstance?.location}" />
		</div>
	</div>
	<div class="left2">
		<div
			class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'postalAddress', 'error')} required">
			<label for="postalAddress"> <g:message
					code="formAPart1.postalAddress.label" default="Postal Address" />
				<span class="required-indicator">*</span>
			</label>
		</div>
		<div>
			<g:textArea class="twoCol" name="postalAddress" cols="40" rows="5"
				maxlength="500" required=""
				value="${formAPart1aInstance?.postalAddress}" />
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'financingSources', 'error')} required">
	<label for="financingSources">
		<g:message code="formAPart1.financingSources.label" default="Financing Sources" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea class="longTextSml" name="financingSources" cols="40" rows="5" maxlength="500" required="" value="${formAPart1aInstance?.financingSources}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'formAContainmentUnitList', 'error')} ">
    <label for="formAContainmentUnitList">
        <g:message code="formAPart1.formAContainmentUnitList.label" default="Form A Containment Unit List" />

    </label>
</div>
<div>
    <ul class="one-to-many">
        <g:each in="${formAPart1aInstance?.formAContainmentUnitList?}" var="f">
            <g:link controller="formAPart1ContainmentUnit" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link>&nbsp;
        </g:each>
        <!--li class="add">
            <g:link controller="formAPart1ContainmentUnit" action="create" params="['formAPart1.id': formAPart1Instance?.id]">${message(code: 'default.add.label', args: [message(code: 'formAPart1ContainmentUnit.label', default: 'FormAPart1ContainmentUnit')])}</g:link>
        </li-->
    </ul>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'scope', 'error')} required long">
	<label for="scope">
		<g:message code="formAPart1.scope.label" default="Scope" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea class="wysiwyg" name="scope" cols="40" rows="5" maxlength="1000" required="" value="${formAPart1aInstance?.scope}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart2aInstance, field: 'report', 'error')} required">
    <label for="report">
        <g:message code="formAPart2a.report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>

    <g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required=""
               value="${formAPart2aInstance?.report?.id}" class="many-to-one"/>
</div>

<g:set var="formInstance" value="${formAPart1aInstance}"></g:set>
<g:render template="../formStatus"/>



