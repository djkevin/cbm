
<%@ page import="cbm.FormF" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formF.label', default: 'FormF')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formF" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formF" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formF">
			
				<g:if test="${formFInstance?.formStatus}">
				<li class="fieldcontain">
					<span id="formStatus-label" class="property-label"><g:message code="formF.formStatus.label" default="Form Status" /></span>
					
						<span class="property-value" aria-labelledby="formStatus-label"><g:fieldValue bean="${formFInstance}" field="formStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.visibility}">
				<li class="fieldcontain">
					<span id="visibility-label" class="property-label"><g:message code="formF.visibility.label" default="Visibility" /></span>
					
						<span class="property-value" aria-labelledby="visibility-label"><g:fieldValue bean="${formFInstance}" field="visibility"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.entryIntoForceOfConvention}">
				<li class="fieldcontain">
					<span id="entryIntoForceOfConvention-label" class="property-label"><g:message code="formF.entryIntoForceOfConvention.label" default="Entry Into Force Of Convention" /></span>
					
						<span class="property-value" aria-labelledby="entryIntoForceOfConvention-label"><g:formatDate date="${formFInstance?.entryIntoForceOfConvention}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="formF.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${formFInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.defensiveActivity}">
				<li class="fieldcontain">
					<span id="defensiveActivity-label" class="property-label"><g:message code="formF.defensiveActivity.label" default="Defensive Activity" /></span>
					
						<span class="property-value" aria-labelledby="defensiveActivity-label"><g:fieldValue bean="${formFInstance}" field="defensiveActivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="formF.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${formFInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.offensiveActivity}">
				<li class="fieldcontain">
					<span id="offensiveActivity-label" class="property-label"><g:message code="formF.offensiveActivity.label" default="Offensive Activity" /></span>
					
						<span class="property-value" aria-labelledby="offensiveActivity-label"><g:fieldValue bean="${formFInstance}" field="offensiveActivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="formF.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${formFInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formFInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formFInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
