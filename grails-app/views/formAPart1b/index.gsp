
<%@ page import="cbm.FormAPart1b" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1b.label', default: 'FormAPart1b')}" />

	</head>
	<body>
		<a href="#list-formAPart1b" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart1b" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" />:<g:message code="formAPart1b.long.label" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="id" title="#" />

						<g:sortableColumn property="bioSafetyLevel3" title="${message(code: 'formAPart1b.bioSafetyLevel3.label', default: 'Bio Safety Level3')}" />
					
						<g:sortableColumn property="bioSafetyLevel2" title="${message(code: 'formAPart1b.bioSafetyLevel2.label', default: 'Bio Safety Level2')}" />
					
						<g:sortableColumn property="additionalInformation" title="${message(code: 'formAPart1b.additionalInformation.label', default: 'Additional Information')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'formAPart1b.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart1bInstanceList}" status="i" var="formAPart1bInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formAPart1bInstance.id}">${formAPart1bInstance.id}</g:link></td>
					
						<td><g:formatBoolean boolean="${formAPart1bInstance.bioSafetyLevel3}" /></td>
					
						<td><g:formatBoolean boolean="${formAPart1bInstance.bioSafetyLevel2}" /></td>
					
						<td>${fieldValue(bean: formAPart1bInstance, field: "additionalInformation")}</td>
					
						<td><g:formatDate format="dd-MMM-yyyy" date="${formAPart1bInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart1bInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
