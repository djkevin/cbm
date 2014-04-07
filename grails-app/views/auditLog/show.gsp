
<%@ page import="cbm.AuditLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auditLog.label', default: 'AuditLog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-auditLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-auditLog" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list auditLog">
			
				<g:if test="${auditLogInstance?.actor}">
				<li class="fieldcontain">
					<span id="actor-label" class="property-label"><g:message code="auditLog.actor.label" default="Actor" /></span>
					
						<span class="property-value" aria-labelledby="actor-label"><g:fieldValue bean="${auditLogInstance}" field="actor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.className}">
				<li class="fieldcontain">
					<span id="className-label" class="property-label"><g:message code="auditLog.className.label" default="Class Name" /></span>
					
						<span class="property-value" aria-labelledby="className-label"><g:fieldValue bean="${auditLogInstance}" field="className"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.eventName}">
				<li class="fieldcontain">
					<span id="eventName-label" class="property-label"><g:message code="auditLog.eventName.label" default="Event Name" /></span>
					
						<span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${auditLogInstance}" field="eventName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.newValue}">
				<li class="fieldcontain">
					<span id="newValue-label" class="property-label"><g:message code="auditLog.newValue.label" default="New Value" /></span>
					
						<span class="property-value" aria-labelledby="newValue-label"><g:fieldValue bean="${auditLogInstance}" field="newValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.oldValue}">
				<li class="fieldcontain">
					<span id="oldValue-label" class="property-label"><g:message code="auditLog.oldValue.label" default="Old Value" /></span>
					
						<span class="property-value" aria-labelledby="oldValue-label"><g:fieldValue bean="${auditLogInstance}" field="oldValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.persistedObjectId}">
				<li class="fieldcontain">
					<span id="persistedObjectId-label" class="property-label"><g:message code="auditLog.persistedObjectId.label" default="Persisted Object Id" /></span>
					
						<span class="property-value" aria-labelledby="persistedObjectId-label"><g:fieldValue bean="${auditLogInstance}" field="persistedObjectId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.persistedObjectVersion}">
				<li class="fieldcontain">
					<span id="persistedObjectVersion-label" class="property-label"><g:message code="auditLog.persistedObjectVersion.label" default="Persisted Object Version" /></span>
					
						<span class="property-value" aria-labelledby="persistedObjectVersion-label"><g:fieldValue bean="${auditLogInstance}" field="persistedObjectVersion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.propertyName}">
				<li class="fieldcontain">
					<span id="propertyName-label" class="property-label"><g:message code="auditLog.propertyName.label" default="Property Name" /></span>
					
						<span class="property-value" aria-labelledby="propertyName-label"><g:fieldValue bean="${auditLogInstance}" field="propertyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.uri}">
				<li class="fieldcontain">
					<span id="uri-label" class="property-label"><g:message code="auditLog.uri.label" default="Uri" /></span>
					
						<span class="property-value" aria-labelledby="uri-label"><g:fieldValue bean="${auditLogInstance}" field="uri"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="auditLog.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${auditLogInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="auditLog.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${auditLogInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:auditLogInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${auditLogInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
