
<%@ page import="cbm.FormAPart1ContainmentUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1ContainmentUnit.label', default: 'FormAPart1ContainmentUnit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formAPart1ContainmentUnit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formAPart1ContainmentUnit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bioSafetyLevel" title="${message(code: 'formAPart1ContainmentUnit.bioSafetyLevel.label', default: 'Bio Safety Level')}" />
					
						<g:sortableColumn property="unitType" title="${message(code: 'formAPart1ContainmentUnit.unitType.label', default: 'Unit Type')}" />
					
						<g:sortableColumn property="unitSize" title="${message(code: 'formAPart1ContainmentUnit.unitSize.label', default: 'Unit Size')}" />
					
						<g:sortableColumn property="comment" title="${message(code: 'formAPart1ContainmentUnit.comment.label', default: 'Comment')}" />
					
						<th><g:message code="formAPart1ContainmentUnit.facility.label" default="Facility" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formAPart1ContainmentUnitInstanceList}" status="i" var="formAPart1ContainmentUnitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formAPart1ContainmentUnitInstance.id}">${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "bioSafetyLevel")}</g:link></td>
					
						<td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "unitType")}</td>
					
						<td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "unitSize")}</td>
					
						<td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "comment")}</td>
					
						<td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "facility")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formAPart1ContainmentUnitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
