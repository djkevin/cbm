
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
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart2b" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="programName" title="${message(code: 'formAPart2b.programName.label', default: 'Program Name')}" />
					
						<g:sortableColumn property="objectives" title="${message(code: 'formAPart2b.objectives.label', default: 'Objectives')}" />
					
						<g:sortableColumn property="conductedUnderContract" title="${message(code: 'formAPart2b.conductedUnderContract.label', default: 'Conducted Under Contract')}" />
					
						<g:sortableColumn property="proportionContracted" title="${message(code: 'formAPart2b.proportionContracted.label', default: 'Proportion Contracted')}" />
					
						<g:sortableColumn property="summaryObjectivesContractor" title="${message(code: 'formAPart2b.summaryObjectivesContractor.label', default: 'Summary Objectives Contractor')}" />
					
						<g:sortableColumn property="organisationalStructureDiagram" title="${message(code: 'formAPart2b.organisationalStructureDiagram.label', default: 'Organisational Structure Diagram')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart2bInstanceList}" status="i" var="formAPart2bInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formAPart2bInstance.id}">${fieldValue(bean: formAPart2bInstance, field: "programName")}</g:link></td>
					
						<td>${fieldValue(bean: formAPart2bInstance, field: "objectives")}</td>
					
						<td><g:formatBoolean boolean="${formAPart2bInstance.conductedUnderContract}" /></td>
					
						<td>${fieldValue(bean: formAPart2bInstance, field: "proportionContracted")}</td>
					
						<td>${fieldValue(bean: formAPart2bInstance, field: "summaryObjectivesContractor")}</td>
					
						<td>${fieldValue(bean: formAPart2bInstance, field: "organisationalStructureDiagram")}</td>
					
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
