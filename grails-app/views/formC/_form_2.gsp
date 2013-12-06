<%@ page import="cbm.FormC" %>



<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'formStatus', 'error')} ">
	<label for="formStatus">
		<g:message code="formC.formStatus.label" default="Form Status" />
		
	</label>
</div>
<div><g:select name="formStatus" from="${formCInstance.constraints.formStatus.inList}" value="${formCInstance?.formStatus}" valueMessagePrefix="formC.formStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'visibility', 'error')} ">
	<label for="visibility">
		<g:message code="formC.visibility.label" default="Visibility" />
		
	</label>
</div>
<div><g:select name="visibility" from="${formCInstance.constraints.visibility.inList}" value="${formCInstance?.visibility}" valueMessagePrefix="formC.visibility" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="formC.comments.label" default="Comments" />
		
	</label>
</div>
<div><g:textArea name="comments" cols="40" rows="5" maxlength="5000" value="${formCInstance?.comments}"/></div>

<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'report', 'error')} required">
	<label for="report">
		<g:message code="formC.report.label" default="Report" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formCInstance?.report?.id}" class="many-to-one"/></div>

<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="formC.title.label" default="Title" />
		
	</label>
</div>
<div><g:textField name="title" value="${formCInstance?.title}"/></div>

