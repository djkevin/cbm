
<%@ page import="cbm.form.FormAPart2bOrganigram" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2bOrganigram.label', default: 'FormAPart2bOrganigram')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formAPart2bOrganigram" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart2bOrganigram" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="organisationalStructureDiagram" title="${message(code: 'formAPart2bOrganigram.organisationalStructureDiagram.label', default: 'Organisational Structure Diagram')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart2bOrganigramInstanceList}" status="i" var="formAPart2bOrganigramInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formAPart2bOrganigramInstance.id}">${fieldValue(bean: formAPart2bOrganigramInstance, field: "organisationalStructureDiagram")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart2bOrganigramInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
