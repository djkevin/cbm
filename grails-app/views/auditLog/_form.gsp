<%@ page import="cbm.AuditLog" %>



<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'actor', 'error')} ">
	<label for="actor" class="property-label25">
		<g:message code="auditLog.actor.label" default="Actor" />
		
	</label>
	<g:textField name="actor" value="${auditLogInstance?.actor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'className', 'error')} ">
	<label for="className" class="property-label25">
		<g:message code="auditLog.className.label" default="Class Name" />
		
	</label>
	<g:textField name="className" value="${auditLogInstance?.className}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'eventName', 'error')} ">
	<label for="eventName" class="property-label25">
		<g:message code="auditLog.eventName.label" default="Event Name" />
		
	</label>
	<g:textField name="eventName" value="${auditLogInstance?.eventName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'newValue', 'error')} ">
	<label for="newValue" class="property-label25">
		<g:message code="auditLog.newValue.label" default="New Value" />
		
	</label>
	<g:textField name="newValue" value="${auditLogInstance?.newValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'oldValue', 'error')} ">
	<label for="oldValue" class="property-label25">
		<g:message code="auditLog.oldValue.label" default="Old Value" />
		
	</label>
	<g:textField name="oldValue" value="${auditLogInstance?.oldValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'persistedObjectId', 'error')} ">
	<label for="persistedObjectId" class="property-label25">
		<g:message code="auditLog.persistedObjectId.label" default="Persisted Object Id" />
		
	</label>
	<g:textField name="persistedObjectId" value="${auditLogInstance?.persistedObjectId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'persistedObjectVersion', 'error')} ">
	<label for="persistedObjectVersion" class="property-label25">
		<g:message code="auditLog.persistedObjectVersion.label" default="Persisted Object Version" />
		
	</label>
	<g:field name="persistedObjectVersion" type="number" value="${auditLogInstance?.persistedObjectVersion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'propertyName', 'error')} ">
	<label for="propertyName" class="property-label25">
		<g:message code="auditLog.propertyName.label" default="Property Name" />
		
	</label>
	<g:textField name="propertyName" value="${auditLogInstance?.propertyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogInstance, field: 'uri', 'error')} ">
	<label for="uri" class="property-label25">
		<g:message code="auditLog.uri.label" default="Uri" />
		
	</label>
	<g:textField name="uri" value="${auditLogInstance?.uri}"/>
</div>

