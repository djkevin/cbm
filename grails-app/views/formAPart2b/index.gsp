
<%@ page import="cbm.FormAPart2b" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2b.label', default: 'FormAPart2b')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formAPart2b" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create" params="['report.id':reportId]"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart2b" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" />:<g:message code="formAPart2b.long.label" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="formStatus" title="#" />

						<g:sortableColumn property="programName" title="${message(code: 'formAPart2b.programName.label', default: 'Program Name')}" />
					
						<g:sortableColumn property="conductedUnderContract" title="${message(code: 'formAPart2b.conductedUnderContract.label.short', default: 'Conducted Under Contract')}" />
					
						<g:sortableColumn property="proportionContracted" title="${message(code: 'formAPart2b.proportionContracted.label.short', default: 'Proportion Contracted')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart2bInstanceList}" status="i" var="formAPart2bInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formAPart2bInstance.id}">${formAPart2bInstance.id}</g:link></td>
					
						<td>${fieldValue(bean: formAPart2bInstance, field: "programName")}</td>
					
						<td><g:formatBoolean boolean="${formAPart2bInstance.conductedUnderContract}" /></td>
					
						<td>${fieldValue(bean: formAPart2bInstance, field: "proportionContracted")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart2bInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
