
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
    <!-- set default value of select box to the first element -->
    %{--<g:select name="formStatus" from="${formInstance.constraints.formStatus.inList}" value="${formInstance?.formStatus?:formInstance.constraints.formStatus.inList[0]}" valueMessagePrefix="formC.formStatus" noSelection="['': '']"/>--}%

    <g:radioGroup name="formStatus"
                  values="${formInstance.constraints.formStatus.inList}"
                  labels="${formInstance.constraints.formStatus.inList}"
                  value="${formInstance?.formStatus}">  %{--TODO i18n--}%
        ${it.radio} <g:message code="${it.label}" />&nbsp;
    </g:radioGroup>
</div>
    <g:hiddenField name="visibility" value="${formInstance?.visibility ?:formInstance?.visibility?:formInstance.constraints.visibility.inList[0]}" />
%{--<div class="inline fieldcontain ${hasErrors(bean: formInstance, field: 'visibility', 'error')} ">
    <label for="visibility" class="property-inline">
        <g:message code="form.visibility.label" default="Visibility" />

    </label>
    <g:select name="visibility" from="${formInstance.constraints.visibility.inList}" value="${formInstance?.visibility?:formInstance.constraints.visibility.inList[0]}" valueMessagePrefix="formC.visibility" noSelection="['': '']"/>
</div>--}%
    <br class="clearBoth" /><!-- you may or may not need this -->
</div>