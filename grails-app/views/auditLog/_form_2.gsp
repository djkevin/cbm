<%@ page import="cbm.AuditLog" %>



<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'actor', 'error')} ">
	<label for="actor">
		<g:message code="auditLog.actor.label" default="Actor" />
		
	</label>
</div>
<div><g:textField name="actor" value="${auditLogInstance?.actor}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'className', 'error')} ">
	<label for="className">
		<g:message code="auditLog.className.label" default="Class Name" />
		
	</label>
</div>
<div><g:textField name="className" value="${auditLogInstance?.className}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'eventName', 'error')} ">
	<label for="eventName">
		<g:message code="auditLog.eventName.label" default="Event Name" />
		
	</label>
</div>
<div><g:textField name="eventName" value="${auditLogInstance?.eventName}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'newValue', 'error')} ">
	<label for="newValue">
		<g:message code="auditLog.newValue.label" default="New Value" />
		
	</label>
</div>
<div><g:textField name="newValue" value="${auditLogInstance?.newValue}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'oldValue', 'error')} ">
	<label for="oldValue">
		<g:message code="auditLog.oldValue.label" default="Old Value" />
		
	</label>
</div>
<div><g:textField name="oldValue" value="${auditLogInstance?.oldValue}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'persistedObjectId', 'error')} ">
	<label for="persistedObjectId">
		<g:message code="auditLog.persistedObjectId.label" default="Persisted Object Id" />
		
	</label>
</div>
<div><g:textField name="persistedObjectId" value="${auditLogInstance?.persistedObjectId}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'persistedObjectVersion', 'error')} ">
	<label for="persistedObjectVersion">
		<g:message code="auditLog.persistedObjectVersion.label" default="Persisted Object Version" />
		
	</label>
</div>
<div><g:field name="persistedObjectVersion" type="number" value="${auditLogInstance?.persistedObjectVersion}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'propertyName', 'error')} ">
	<label for="propertyName">
		<g:message code="auditLog.propertyName.label" default="Property Name" />
		
	</label>
</div>
<div><g:textField name="propertyName" value="${auditLogInstance?.propertyName}"/></div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'uri', 'error')} ">
	<label for="uri">
		<g:message code="auditLog.uri.label" default="Uri" />
		
	</label>
</div>
<div><g:textField name="uri" value="${auditLogInstance?.uri}"/></div>

