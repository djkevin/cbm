
<%@ page import="cbm.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-report" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-report" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="year" title="${message(code: 'report.year.label', default: 'Year')}" />
						
						<g:sortableColumn property="language" title="${message(code: 'report.language.label', default: 'Language')}" />
					
						<g:sortableColumn property="reportStatus" title="${message(code: 'report.reportStatus.label', default: 'Report Status')}" />
					
						<g:sortableColumn property="publicationStatus" title="${message(code: 'report.publicationStatus.label', default: 'Publication Status')}" />
					
						<g:sortableColumn property="officialVersion" title="${message(code: 'report.officialVersion.label', default: 'Official Version')}" />
						
						<g:sortableColumn property="lastUpdated" title="${message(code: 'report.lastUpdated.label', default: 'Last Updated')}" />
					
<%--						<th><g:message code="report.formAPart1b.label" default="Form AP art1b" /></th>--%>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reportInstanceList}" status="i" var="reportInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${reportInstance.year}</td>
						
						<td><g:link action="show" id="${reportInstance.id}">${fieldValue(bean: reportInstance, field: "language")}</g:link></td>
					
						<td>${fieldValue(bean: reportInstance, field: "reportStatus")}</td>
					
						<td>${fieldValue(bean: reportInstance, field: "publicationStatus")}</td>
						
					
						<td><g:formatBoolean boolean="${reportInstance.officialVersion}" /></td>
					
					<td><g:formatDate format="yyyy-MM-dd" date="${reportInstance.lastUpdated}"/></td>
<%--						<td>${fieldValue(bean: reportInstance, field: "lastUpdated")}</td>--%>
<%--						<td>${fieldValue(bean: reportInstance, field: "formAPart1b")}</td>--%>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reportInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
