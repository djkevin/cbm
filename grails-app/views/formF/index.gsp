
<%@ page import="cbm.FormF" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formF.label', default: 'FormF')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formF" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formF" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="formStatus" title="${message(code: 'formF.formStatus.label', default: 'Form Status')}" />
					
						<g:sortableColumn property="visibility" title="${message(code: 'formF.visibility.label', default: 'Visibility')}" />
					
						<g:sortableColumn property="entryIntoForceOfConvention" title="${message(code: 'formF.entryIntoForceOfConvention.label', default: 'Entry Into Force Of Convention')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'formF.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="formF.defensiveActivity.label" default="Defensive Activity" /></th>
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'formF.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formFInstanceList}" status="i" var="formFInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formFInstance.id}">${fieldValue(bean: formFInstance, field: "formStatus")}</g:link></td>
					
						<td>${fieldValue(bean: formFInstance, field: "visibility")}</td>
					
						<td><g:formatDate date="${formFInstance.entryIntoForceOfConvention}" /></td>
					
						<td><g:formatDate date="${formFInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: formFInstance, field: "defensiveActivity")}</td>
					
						<td><g:formatDate date="${formFInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formFInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
