
<%@ page import="cbm.FormG" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formG.label', default: 'FormG')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formG" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formG" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="formStatus" title="${message(code: 'formG.formStatus.label', default: 'Form Status')}" />
					
						<g:sortableColumn property="visibility" title="${message(code: 'formG.visibility.label', default: 'Visibility')}" />
					
						<g:sortableColumn property="facilityName" title="${message(code: 'formG.facilityName.label', default: 'Facility Name')}" />
					
						<th><g:message code="formG.location.label" default="Location" /></th>
					
						<g:sortableColumn property="typesOfDiseaseCovered" title="${message(code: 'formG.typesOfDiseaseCovered.label', default: 'Types Of Disease Covered')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'formG.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formGInstanceList}" status="i" var="formGInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formGInstance.id}">${fieldValue(bean: formGInstance, field: "formStatus")}</g:link></td>
					
						<td>${fieldValue(bean: formGInstance, field: "visibility")}</td>
					
						<td>${fieldValue(bean: formGInstance, field: "facilityName")}</td>
					
						<td>${fieldValue(bean: formGInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: formGInstance, field: "typesOfDiseaseCovered")}</td>
					
						<td><g:formatDate date="${formGInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formGInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
