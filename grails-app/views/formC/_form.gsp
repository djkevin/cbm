<%@ page import="cbm.FormC" %>



<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'comments', 'error')} ">
    <label for="comments">
        <g:message code="formC.comments.label" default="Comments" />

    </label>
</div>
<div> <g:textArea class="wysiwyg" name="comments" cols="40" rows="5" maxlength="5000" value="${formCInstance?.comments}"/></div>
<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'report', 'error')} required">
	<label for="report" class="property-label25">
		<g:message code="formC.report.label" default="Report" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formCInstance?.report?.id}" class="many-to-one"/>
</div>

<g:set var="formInstance" value="${formCInstance}"></g:set>
<g:render template="../formStatus"/>



