
<%@ page import="cbm.FormAPart1a" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1.label', default: 'FormAPart1a')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formAPart1a" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
            <div class="nav-left">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="create" action="create" params="['report.id':reportId]"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <g:render template="/navMenu" ></g:render>
        </div>
		<div id="list-formAPart1a" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" />:<g:message code="formAPart1.long.label" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="facilityName" title="${message(code: 'formAPart1.facilityName.label', default: 'Facility Name')}" />
					
						<g:sortableColumn property="responsibleOrganisation" title="${message(code: 'formAPart1.responsibleOrganisation.label', default: 'Responsible Organisation')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'formAPart1.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="postalAddress" title="${message(code: 'formAPart1.postalAddress.label', default: 'Postal Address')}" />
					
<%--						<g:sortableColumn property="financingSources" title="${message(code: 'formAPart1.financingSources.label', default: 'Financing Sources')}" />--%>
					
<%--						<g:sortableColumn property="scope" title="${message(code: 'formAPart1.scope.label', default: 'Scope')}" />--%>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart1aInstanceList}" status="i" var="formAPart1aInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formAPart1aInstance.id}">${fieldValue(bean: formAPart1aInstance, field: "facilityName")}</g:link></td>
					
						<td>${fieldValue(bean: formAPart1aInstance, field: "responsibleOrganisation")}</td>
					
						<td>${fieldValue(bean: formAPart1aInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: formAPart1aInstance, field: "postalAddress")}</td>
					
<%--						<td>${fieldValue(bean: formAPart1Instance, field: "financingSources")}</td>--%>
					
<%--						<td>${fieldValue(bean: formAPart1Instance, field: "scope")}</td>--%>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart1aInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
