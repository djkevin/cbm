
<%@ page import="cbm.AuditLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'auditLog.label', default: 'AuditLog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-auditLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-auditLog" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="actor" title="${message(code: 'auditLog.actor.label', default: 'Actor')}" />
					
						<g:sortableColumn property="className" title="${message(code: 'auditLog.className.label', default: 'Class Name')}" />
					
						<g:sortableColumn property="eventName" title="${message(code: 'auditLog.eventName.label', default: 'Event Name')}" />
					
						<g:sortableColumn property="newValue" title="${message(code: 'auditLog.newValue.label', default: 'New Value')}" />
					
						<g:sortableColumn property="oldValue" title="${message(code: 'auditLog.oldValue.label', default: 'Old Value')}" />
					
						<g:sortableColumn property="persistedObjectId" title="${message(code: 'auditLog.persistedObjectId.label', default: 'Persisted Object Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${auditLogInstanceList}" status="i" var="auditLogInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${auditLogInstance.id}">${fieldValue(bean: auditLogInstance, field: "actor")}</g:link></td>
					
						<td>${fieldValue(bean: auditLogInstance, field: "className")}</td>
					
						<td>${fieldValue(bean: auditLogInstance, field: "eventName")}</td>
					
						<td>${fieldValue(bean: auditLogInstance, field: "newValue")}</td>
					
						<td>${fieldValue(bean: auditLogInstance, field: "oldValue")}</td>
					
						<td>${fieldValue(bean: auditLogInstance, field: "persistedObjectId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${auditLogInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
