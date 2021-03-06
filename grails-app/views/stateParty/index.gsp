
<%@ page import="cbm.admin.StateParty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stateParty.label', default: 'StateParty')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stateParty" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-stateParty" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="country" title="${message(code: 'stateParty.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="accessionRatification" title="${message(code: 'stateParty.accessionRatification.label', default: 'Accession Ratification')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${statePartyInstanceList}" status="i" var="statePartyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${statePartyInstance.id}">
                            <country:name country="${statePartyInstance?.country}"/>
                            </g:link>
                            %{--${fieldValue(bean: statePartyInstance, field: "country")}--}%
                        </td>
					
						<td><g:formatDate format="dd-MMM-yyyy" date="${statePartyInstance.accessionRatification}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${statePartyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
