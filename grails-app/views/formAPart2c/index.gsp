
<%@ page import="cbm.form.FormAPart2c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2c.label', default: 'FormAPart2c')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formAPart2c" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart2c" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<%-- g:sortableColumn property="addressLine2" title="${message(code: 'formAPart2c.addressLine2.label', default: 'Address Line2')}" / --%>
					
						<%-- g:sortableColumn property="city" title="${message(code: 'formAPart2c.city.label', default: 'City')}" / --%>
					
						<g:sortableColumn property="facilityName" title="${message(code: 'formAPart2c.facilityName.label', default: 'Facility Name')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'formAPart2c.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="mailingAddress" title="${message(code: 'formAPart2c.geolocation.label', default: 'Postal Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart2cInstanceList}" status="i" var="formAPart2cInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<%--  td><g:link action="show" id="${formAPart2cInstance.id}">${fieldValue(bean: formAPart2cInstance, field: "addressLine2")}</g:link></td --%>
					
						<%-- td>${fieldValue(bean: formAPart2cInstance, field: "city")}</td --%>
					
						<td><g:link action="show" id="${formAPart2cInstance.id}">${fieldValue(bean: formAPart2cInstance, field: "facilityName")}</g:link></td>
					
						<td>${fieldValue(bean: formAPart2cInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: formAPart2cInstance, field: "geolocation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart2cInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
