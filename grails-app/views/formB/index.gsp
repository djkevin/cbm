
<%@ page import="cbm.FormB" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formB.label', default: 'FormB')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formB" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formB" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="formStatus" title="${message(code: 'formStatus.label', default: 'Form Status')}" />
					
						<g:sortableColumn property="eventName" title="${message(code: 'formB.eventName.label', default: 'Event Name')}" />
					
						<g:sortableColumn property="eventCategory" title="${message(code: 'formB.eventCategory.label', default: 'Event Category')}" />
					
						<g:sortableColumn property="timeOfOutbreak" title="${message(code: 'formB.timeOfOutbreak.label', default: 'Time Of Outbreak')}" />
					
						<g:sortableColumn property="locationAffected" title="${message(code: 'formB.locationAffected.label', default: 'Location Affected')}" />
					
						<g:sortableColumn property="typeOfDisease" title="${message(code: 'formB.typeOfDisease.label', default: 'Type Of Disease')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formBInstanceList}" status="i" var="formBInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formBInstance.id}">${fieldValue(bean: formBInstance, field: "formStatus")}</g:link></td>
					
						<td>${fieldValue(bean: formBInstance, field: "eventName")}</td>
					
						<td>${fieldValue(bean: formBInstance, field: "eventCategory")}</td>
					
						<td>${fieldValue(bean: formBInstance, field: "timeOfOutbreak")}</td>
					
						<td>${fieldValue(bean: formBInstance, field: "locationAffected")}</td>
					
						<td>${fieldValue(bean: formBInstance, field: "typeOfDisease")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formBInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
