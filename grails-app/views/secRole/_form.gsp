<%@ page import="cbm.usermgt.SecRole" %>



<div class="fieldcontain ${hasErrors(bean: secRoleInstance, field: 'authority', 'error')} required">
	<label for="authority" class="property-label25">
		<g:message code="secRole.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="authority" from="${secRoleInstance.constraints.authority.inList}" required="" value="${secRoleInstance?.authority}" valueMessagePrefix="secRole.authority"/>
</div>

