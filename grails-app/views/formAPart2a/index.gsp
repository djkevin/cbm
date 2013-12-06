
<%@ page import="cbm.FormAPart2a" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2a.label', default: 'FormAPart2a')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formAPart2a" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart2a" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" />:<g:message code="formAPart2a.long.label" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
                        <g:sortableColumn property="id" title="#" />

                        <g:sortableColumn property="existingNationalProgrammes" title="${message(code: 'formAPart2a.existingNationalProgrammes.label.short', default: 'Existing National Programmes')}" />
					
						<th><g:message code="formAPart2a.report.label" default="Report" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart2aInstanceList}" status="i" var="formAPart2aInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" id="${formAPart2aInstance.id}">${formAPart2aInstance.id}</g:link></td>

						<td>${fieldValue(bean: formAPart2aInstance, field: "existingNationalProgrammes")}</td>
					
						<td>${fieldValue(bean: formAPart2aInstance, field: "report")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart2aInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
