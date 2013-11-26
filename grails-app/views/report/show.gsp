
<%@ page import="cbm.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-report" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-report" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list report">
			
				<g:if test="${reportInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="report.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${reportInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="report.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${reportInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.reportStatus}">
				<li class="fieldcontain">
					<span id="reportStatus-label" class="property-label"><g:message code="report.reportStatus.label" default="Report Status" /></span>
					
						<span class="property-value" aria-labelledby="reportStatus-label"><g:fieldValue bean="${reportInstance}" field="reportStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.publicationStatus}">
				<li class="fieldcontain">
					<span id="publicationStatus-label" class="property-label"><g:message code="report.publicationStatus.label" default="Publication Status" /></span>
					
						<span class="property-value" aria-labelledby="publicationStatus-label"><g:fieldValue bean="${reportInstance}" field="publicationStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.officialVersion}">
				<li class="fieldcontain">
					<span id="officialVersion-label" class="property-label"><g:message code="report.officialVersion.label" default="Official Version" /></span>
					
						<span class="property-value" aria-labelledby="officialVersion-label"><g:formatBoolean boolean="${reportInstance?.officialVersion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.formAPart1b}">
				<li class="fieldcontain">
					<span id="formAPart1b-label" class="property-label"><g:message code="report.formAPart1b.label" default="Form AP art1b" /></span>
					
						<span class="property-value" aria-labelledby="formAPart1b-label"><g:link controller="formAPart1b" action="show" id="${reportInstance?.formAPart1b?.id}">${reportInstance?.formAPart1b?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.formAPart2a}">
				<li class="fieldcontain">
					<span id="formAPart2a-label" class="property-label"><g:message code="report.formAPart2a.label" default="Form AP art2a" /></span>
					
						<span class="property-value" aria-labelledby="formAPart2a-label"><g:link controller="formAPart2a" action="show" id="${reportInstance?.formAPart2a?.id}">${reportInstance?.formAPart2a?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="report.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${reportInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.formAPart1}">
				<li class="fieldcontain">
					<span id="formAPart1-label" class="property-label"><g:message code="report.formAPart1.label" default="Form AP art1" /></span>
					
						<g:each in="${reportInstance.formAPart1}" var="f">
						<span class="property-value" aria-labelledby="formAPart1-label"><g:link controller="formAPart1a" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.formAPart2b}">
				<li class="fieldcontain">
					<span id="formAPart2b-label" class="property-label"><g:message code="report.formAPart2b.label" default="Form AP art2b" /></span>
					
						<g:each in="${reportInstance.formAPart2b}" var="f">
						<span class="property-value" aria-labelledby="formAPart2b-label"><g:link controller="formAPart2b" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="report.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${reportInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.stateParty}">
				<li class="fieldcontain">
					<span id="stateParty-label" class="property-label"><g:message code="report.stateParty.label" default="State Party" /></span>
					
						<span class="property-value" aria-labelledby="stateParty-label"><g:link controller="stateParty" action="show" id="${reportInstance?.stateParty?.id}">${reportInstance?.stateParty?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reportInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reportInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
