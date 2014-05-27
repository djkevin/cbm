
<%@ page import="cbm.admin.StateParty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stateParty.label', default: 'StateParty')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-stateParty" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-stateParty" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stateParty">
			
				<g:if test="${statePartyInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="stateParty.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label">${statePartyInstance.country?.getName()}</span>
					
				</li>
				</g:if>
			
				<g:if test="${statePartyInstance?.accessionRatification}">
				<li class="fieldcontain">
					<span id="accessionRatification-label" class="property-label"><g:message code="stateParty.accessionRatification.label" default="Accession Ratification" /></span>
					
						<span class="property-value" aria-labelledby="accessionRatification-label"><g:formatDate format="dd-MMM-yyyy" date="${statePartyInstance?.accessionRatification}"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statePartyInstance?.nationalContact}">
				<li class="fieldcontain">
					<span id="nationalContact-label" class="property-label"><g:message code="stateParty.nationalContact.label" default="National Contact" /></span>
					
						<g:each in="${statePartyInstance.nationalContact}" var="n">
						<span class="property-value" aria-labelledby="nationalContact-label"><g:link controller="nationalContact" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${statePartyInstance?.report}">
				<li class="fieldcontain">
					<span id="report-label" class="property-label"><g:message code="stateParty.report.label" default="Report" /></span>
					
						<g:each in="${statePartyInstance.report}" var="r">
						<span class="property-value" aria-labelledby="report-label"><g:link controller="report" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:statePartyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${statePartyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
