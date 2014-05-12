
<%@ page import="cbm.form.FormZero" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formZero.label', default: 'FormZero')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formZero" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formZero" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" />:<g:message code="formZero.long.label" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="formStatus" title="${message(code: 'formZero.formStatus.label', default: 'Form Status')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'formZero.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="formZero.formAPart1.label" default="Form AP art1" /></th>
					
						<th><g:message code="formZero.formAPart2a.label" default="Form AP art2a" /></th>
					
						<th><g:message code="formZero.formAPart2b.label" default="Form AP art2b" /></th>
					
						<th><g:message code="formZero.formAPart2c.label" default="Form AP art2c" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formZeroInstanceList}" status="i" var="formZeroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formZeroInstance.id}">${fieldValue(bean: formZeroInstance, field: "formStatus")}</g:link></td>
					
						<td><g:formatDate date="${formZeroInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: formZeroInstance, field: "formAPart1")}</td>
					
						<td>${fieldValue(bean: formZeroInstance, field: "formAPart2a")}</td>
					
						<td>${fieldValue(bean: formZeroInstance, field: "formAPart2b")}</td>
					
						<td>${fieldValue(bean: formZeroInstance, field: "formAPart2c")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formZeroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
