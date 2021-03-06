<%@ page import="cbm.form.FormAPart2a" %>

<div class="fieldcontain ${hasErrors(bean: formAPart2aInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formAPart2aInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formAPart2aInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2aInstance, field: 'existingNationalProgrammes', 'error')} ">
    <label for="existingNationalProgrammes">
        <g:message code="formAPart2a.existingNationalProgrammes.label" default="Existing National Programmes"/>

    </label>
</div>

<div class="fieldcontain">%{-- style="text-align:center" <g:checkBox name="existingNationalProgrammes" value="${formAPart2aInstance?.existingNationalProgrammes}"/>--}%
    <g:radioGroup name="existingNationalProgrammes" value="${formAPart2aInstance?.existingNationalProgrammes == null?'false': formAPart2aInstance?.existingNationalProgrammes}"
                  values="['true','false']"
                  labels="['Yes','No']" >     %{--TODO i18n--}%
        <span>${it.radio} ${it.label}</span>
    </g:radioGroup>
</div>

<g:set var="formInstance" value="${formAPart2aInstance}"></g:set>
<g:render template="../formStatus"/>



