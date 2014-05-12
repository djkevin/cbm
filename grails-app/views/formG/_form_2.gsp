<%@ page import="cbm.form.FormG" %>



<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'formStatus', 'error')} ">
    <label for="formStatus">
        <g:message code="formG.formStatus.label" default="Form Status"/>

    </label>
</div>

<div><g:select name="formStatus" from="${formGInstance.constraints.formStatus.inList}"
               value="${formGInstance?.formStatus}" valueMessagePrefix="formG.formStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'visibility', 'error')} ">
    <label for="visibility">
        <g:message code="formG.visibility.label" default="Visibility"/>

    </label>
</div>

<div><g:select name="visibility" from="${formGInstance.constraints.visibility.inList}"
               value="${formGInstance?.visibility}" valueMessagePrefix="formG.visibility" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'facilityName', 'error')} ">
    <label for="facilityName">
        <g:message code="formG.facilityName.label" default="Facility Name"/>

    </label>
</div>

<div><g:textField name="facilityName" value="${formGInstance?.facilityName}"/></div>
<fieldset class="embedded"><legend><g:message code="formG.location.label" default="Location"/></legend>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.country', 'error')} required">
        <label for="location.country">
            <g:message code="formG.location.country.label" default="Country"/>
            <span class="required-indicator">*</span>
        </label>
    </div>

    <div><g:select name="country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required=""
                   value="${addressInstance?.country?.name()}"/></div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.postCode', 'error')} ">
        <label for="location.postCode">
            <g:message code="formG.location.postCode.label" default="Post Code"/>

        </label>
    </div>

    <div><g:textField name="postCode" maxlength="10" value="${addressInstance?.postCode}"/></div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.state', 'error')} ">
        <label for="location.state">
            <g:message code="formG.location.state.label" default="State"/>

        </label>
    </div>

    <div><g:textField name="state" maxlength="100" value="${addressInstance?.state}"/></div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.street1', 'error')} ">
        <label for="location.street1">
            <g:message code="formG.location.street1.label" default="Street1"/>

        </label>
    </div>

    <div><g:textField name="street1" maxlength="200" value="${addressInstance?.street1}"/></div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.street2', 'error')} ">
        <label for="location.street2">
            <g:message code="formG.location.street2.label" default="Street2"/>

        </label>
    </div>

    <div><g:textField name="street2" maxlength="200" value="${addressInstance?.street2}"/></div>

    <div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.town', 'error')} ">
        <label for="location.town">
            <g:message code="formG.location.town.label" default="Town"/>

        </label>
    </div>

    <div><g:textField name="town" maxlength="100" value="${addressInstance?.town}"/></div>
</fieldset>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'typesOfDiseaseCovered', 'error')} ">
    <label for="typesOfDiseaseCovered">
        <g:message code="formG.typesOfDiseaseCovered.label" default="Types Of Disease Covered"/>

    </label>
</div>

<div><g:textArea name="typesOfDiseaseCovered" cols="40" rows="5" maxlength="5000"
                 value="${formGInstance?.typesOfDiseaseCovered}"/></div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'report', 'error')} required">
    <label for="report">
        <g:message code="formG.report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>
</div>

<div><g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required=""
               value="${formGInstance?.report?.id}" class="many-to-one"/></div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="formG.title.label" default="Title"/>

    </label>
</div>

<div><g:textField name="title" value="${formGInstance?.title}"/></div>

