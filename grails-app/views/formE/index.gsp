
<%@ page import="cbm.form.FormE" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formE.label', default: 'FormE')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formE" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formE" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="formStatus" title="${message(code: 'formE.formStatus.label', default: 'Form Status')}" />
					
						<g:sortableColumn property="visibility" title="${message(code: 'formE.visibility.label', default: 'Visibility')}" />
					
						<g:sortableColumn property="additionalComments" title="${message(code: 'formE.additionalComments.label', default: 'Additional Comments')}" />
					
						<th><g:message code="formE.biosafetyAndBioSecurity.label" default="Biosafety And Bio Security" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'formE.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="formE.developmentAndMeansOfDelivery.label" default="Development And Means Of Delivery" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formEInstanceList}" status="i" var="formEInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formEInstance.id}">${fieldValue(bean: formEInstance, field: "formStatus")}</g:link></td>
					
						<td>${fieldValue(bean: formEInstance, field: "visibility")}</td>
					
						<td>${fieldValue(bean: formEInstance, field: "additionalComments")}</td>
					
						<td>${fieldValue(bean: formEInstance, field: "biosafetyAndBioSecurity")}</td>
					
						<td><g:formatDate date="${formEInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: formEInstance, field: "developmentAndMeansOfDelivery")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formEInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
