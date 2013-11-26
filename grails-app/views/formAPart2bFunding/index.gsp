
<%@ page import="cbm.FormAPart2bFunding" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2bFunding.label', default: 'FormAPart2bFunding')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formAPart2bFunding" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart2bFunding" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="amount" title="${message(code: 'formAPart2bFunding.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="source" title="${message(code: 'formAPart2bFunding.source.label', default: 'Source')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart2bFundingInstanceList}" status="i" var="formAPart2bFundingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formAPart2bFundingInstance.id}">${fieldValue(bean: formAPart2bFundingInstance, field: "amount")}</g:link></td>
					
						<td>${fieldValue(bean: formAPart2bFundingInstance, field: "source")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart2bFundingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
