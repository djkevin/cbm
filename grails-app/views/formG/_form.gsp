<%@ page import="cbm.FormG" %>



<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'formStatus', 'error')} ">
	<label for="formStatus" class="property-label25">
		<g:message code="formG.formStatus.label" default="Form Status" />
		
	</label>
	<g:select name="formStatus" from="${formGInstance.constraints.formStatus.inList}" value="${formGInstance?.formStatus}" valueMessagePrefix="formG.formStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'visibility', 'error')} ">
	<label for="visibility" class="property-label25">
		<g:message code="formG.visibility.label" default="Visibility" />
		
	</label>
	<g:select name="visibility" from="${formGInstance.constraints.visibility.inList}" value="${formGInstance?.visibility}" valueMessagePrefix="formG.visibility" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'facilityName', 'error')} ">
	<label for="facilityName" class="property-label25">
		<g:message code="formG.facilityName.label" default="Facility Name" />
		
	</label>
	<g:textField name="facilityName" value="${formGInstance?.facilityName}"/>
</div>
<g:set var="addressInstance" value="${formGInstance?.location}"></g:set>
<g:render template="../address"/>

<fieldset class="embedded"><legend><g:message code="formG.location.label" default="Location" /></legend>
    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.street1', 'error')} ">
        <label for="location.street1" class="property-label25">
            <g:message code="formG.location.street1.label" default="Street1" />

        </label>
        <g:textField name="street1" maxlength="200" value="${addressInstance?.street1}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.street2', 'error')} ">
        <label for="location.street2" class="property-label25">
            <g:message code="formG.location.street2.label" default="Street2" />

        </label>
        <g:textField name="street2" maxlength="200" value="${addressInstance?.street2}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.postCode', 'error')} ">
        <label for="location.postCode" class="property-label25">
            <g:message code="formG.location.postCode.label" default="Post Code" />

        </label>
        <g:textField name="postCode" maxlength="10" value="${addressInstance?.postCode}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.town', 'error')} ">
        <label for="location.town" class="property-label25">
            <g:message code="formG.location.town.label" default="Town" />

        </label>
        <g:textField name="town" maxlength="100" value="${addressInstance?.town}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.state', 'error')} ">
        <label for="location.state" class="property-label25">
            <g:message code="formG.location.state.label" default="State" />

        </label>
        <g:textField name="state" maxlength="100" value="${addressInstance?.state}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.country', 'error')} required">
        <label for="location.country" class="property-label25">
            <g:message code="formG.location.country.label" default="Country" />
            <span class="required-indicator">*</span>
        </label>
        <g:select name="country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required="" value="${addressInstance?.country?.name()}"/>
    </div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'typesOfDiseaseCovered', 'error')} ">
	<label for="typesOfDiseaseCovered" class="property-label25">
		<g:message code="formG.typesOfDiseaseCovered.label" default="Types Of Disease Covered" />
		
	</label>
	<g:textArea name="typesOfDiseaseCovered" cols="40" rows="5" maxlength="5000" value="${formGInstance?.typesOfDiseaseCovered}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'report', 'error')} required">
	<label for="report" class="property-label25">
		<g:message code="formG.report.label" default="Report" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formGInstance?.report?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'title', 'error')} ">
	<label for="title" class="property-label25">
		<g:message code="formG.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${formGInstance?.title}"/>
</div>

