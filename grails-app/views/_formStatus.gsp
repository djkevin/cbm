
<div id="form-status-box">
<div class="inline fieldcontain ${hasErrors(bean: formInstance, field: 'title', 'error')} ">
    <label for="title" class="property-inline">
        <g:message code="form.title.label" default="Title" />

    </label>
    %{--${entityName}--}%
    <g:field type="text" name="title" value="${entityName}" readonly="true" />

</div>

<div class="inline fieldcontain ${hasErrors(bean: formInstance, field: 'formStatus', 'error')} ">
    <label for="formStatus" class="property-inline">
        <g:message code="form.formStatus.label" default="Form Status" />

    </label>

    <g:radioGroup name="formStatus"
                  values="${cbm.constants.FormStatus.values()}"
                  labels="${cbm.constants.FormStatus.values()*.name()}"
                  value="${formInstance?.formStatus?.name() }">
         ${it.radio} <g:message code="${it.label}" />&nbsp;
    </g:radioGroup>

%{--    <g:radioGroup name="formStatus"
                  values="${formInstance.constraints.formStatus.inList}"
                  labels="${formInstance.constraints.formStatus.inList}"
                  value="${formInstance?.formStatus ?: formInstance.constraints.formStatus.inList[0]}">  --}%%{--TODO i18n--}%%{--
        ${it.radio} <g:message code="${it.label}" />&nbsp;
    </g:radioGroup>--}%
</div>
    <g:hiddenField name="visibility" value="${formInstance?.visibility ?:formInstance?.visibility?:formInstance.constraints.visibility.inList[0]}" />

    <br class="clearBoth" /><!-- you may or may not need this -->
</div>