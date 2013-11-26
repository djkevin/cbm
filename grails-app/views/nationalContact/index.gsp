
<%@ page import="cbm.NationalContact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nationalContact.label', default: 'NationalContact')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-nationalContact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-nationalContact" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'nationalContact.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'nationalContact.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'nationalContact.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="position" title="${message(code: 'nationalContact.position.label', default: 'Position')}" />
					
						<th><g:message code="nationalContact.address.label" default="Address" /></th>
					
						<g:sortableColumn property="telephone" title="${message(code: 'nationalContact.telephone.label', default: 'Telephone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${nationalContactInstanceList}" status="i" var="nationalContactInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${nationalContactInstance.id}">${fieldValue(bean: nationalContactInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: nationalContactInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: nationalContactInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: nationalContactInstance, field: "position")}</td>
					
						<td>${fieldValue(bean: nationalContactInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: nationalContactInstance, field: "telephone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${nationalContactInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
