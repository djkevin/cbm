
<%@ page import="cbm.FormC" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formC.label', default: 'FormC')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formC" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="formStatus" title="${message(code: 'formC.formStatus.label', default: 'Form Status')}" />
					
						<g:sortableColumn property="visibility" title="${message(code: 'formC.visibility.label', default: 'Visibility')}" />
					
						<g:sortableColumn property="comments" title="${message(code: 'formC.comments.label', default: 'Comments')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'formC.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'formC.lastUpdated.label', default: 'Last Updated')}" />
					
						<th><g:message code="formC.report.label" default="Report" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formCInstanceList}" status="i" var="formCInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formCInstance.id}">${fieldValue(bean: formCInstance, field: "formStatus")}</g:link></td>
					
						<td>${fieldValue(bean: formCInstance, field: "visibility")}</td>
					
						<td>${fieldValue(bean: formCInstance, field: "comments")}</td>
					
						<td><g:formatDate date="${formCInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${formCInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: formCInstance, field: "report")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formCInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
