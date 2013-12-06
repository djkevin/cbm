<div id="form-status-box">
<div class="inline fieldcontain ${hasErrors(bean: formInstance, field: 'title', 'error')} ">
    <label for="title" class="property-inline">
        <g:message code="formC.title.label" default="Title" />

    </label>
    <g:textField name="title" value="${formInstance?.title}" />
</div>

<div class="inline fieldcontain ${hasErrors(bean: formInstance, field: 'formStatus', 'error')} ">
    <label for="formStatus" class="property-inline">
        <g:message code="formC.formStatus.label" default="Form Status" />

    </label>
    <g:select name="formStatus" from="${formInstance.constraints.formStatus.inList}" value="${formInstance?.formStatus}" valueMessagePrefix="formC.formStatus" noSelection="['': '']"/>
</div>

<div class="inline fieldcontain ${hasErrors(bean: formInstance, field: 'visibility', 'error')} ">
    <label for="visibility" class="property-inline">
        <g:message code="formC.visibility.label" default="Visibility" />

    </label>
    <g:select name="visibility" from="${formInstance.constraints.visibility.inList}" value="${formInstance?.visibility}" valueMessagePrefix="formC.visibility" noSelection="['': '']"/>
</div>
    <br class="clearBoth" /><!-- you may or may not need this -->
</div>