<%@ page import="cbm.FormC" %>



<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'formStatus', 'error')} ">
	<label for="formStatus">
		<g:message code="formC.formStatus.label" default="Form Status" />
		
	</label>
</div>
<div><g:select name="formStatus" from="${formCInstance.constraints.formStatus.inList}" value="${formCInstance?.formStatus}" valueMessagePrefix="formC.formStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formCInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="formC.comments.label" default="Comments" />
		
	</label>
</div>
<div><g:textArea name="comments" cols="40" rows="5" maxlength="5000" value="${formCInstance?.comments}"/></div>

