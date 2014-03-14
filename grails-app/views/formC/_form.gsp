<%@ page import="cbm.FormC" %>

<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="formC.report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formCInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formCInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'comments', 'error')} ">
    <label for="comments">
        <g:message code="formC.comments.label" default="Comments" />

    </label>
</div>
<div> <g:textArea class="wysiwyg" name="comments" cols="40" rows="5" maxlength="${formCInstance?.constraints?.comments?.maxSize}" value="${formCInstance?.comments}"/></div>


<g:set var="formInstance" value="${formCInstance}"></g:set>
<g:render template="../formStatus"/>



