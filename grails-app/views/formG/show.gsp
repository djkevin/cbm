
<%@ page import="cbm.FormG" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formG.label', default: 'FormG')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formG" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formG" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formG">
			
				<g:if test="${formGInstance?.formStatus}">
				<li class="fieldcontain">
					<span id="formStatus-label" class="property-label"><g:message code="formG.formStatus.label" default="Form Status" /></span>
					
						<span class="property-value" aria-labelledby="formStatus-label"><g:fieldValue bean="${formGInstance}" field="formStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formGInstance?.facilityName}">
				<li class="fieldcontain">
					<span id="facilityName-label" class="property-label"><g:message code="formG.facilityName.label" default="Facility Name" /></span>
					
						<span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue bean="${formGInstance}" field="facilityName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formGInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="formG.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${formGInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formGInstance?.typesOfDiseaseCovered}">
				<li class="fieldcontain">
					<span id="typesOfDiseaseCovered-label" class="property-label"><g:message code="formG.typesOfDiseaseCovered.label" default="Types Of Disease Covered" /></span>
					
						<span class="property-value" aria-labelledby="typesOfDiseaseCovered-label"><g:fieldValue bean="${formGInstance}" field="typesOfDiseaseCovered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formGInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="formG.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${formGInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formGInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="formG.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${formGInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formGInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formGInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
