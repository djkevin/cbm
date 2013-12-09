
<%@ page import="cbm.FormAPart1a"  %>
<%@ defaultCodec="none" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1.label', default: 'FormAPart1')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formAPart1" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"  params="['reportId':formAPart1aInstance.report.id]"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create" params="['reportId':formAPart1aInstance.report.id]"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formAPart1" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formAPart1.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formAPart1">
			
				<g:if test="${formAPart1aInstance?.facilityName}">
				<li class="fieldcontain">
					<span id="facilityName-label" class="property-label"><g:message code="formAPart1.facilityName.label" default="Facility Name" /></span>
					
						<span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue bean="${formAPart1aInstance}" field="facilityName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1aInstance?.responsibleOrganisation}">
				<li class="fieldcontain">
					<span id="responsibleOrganisation-label" class="property-label"><g:message code="formAPart1.responsibleOrganisation.label" default="Responsible Organisation" /></span>
					
						<span class="property-value" aria-labelledby="responsibleOrganisation-label"><g:fieldValue bean="${formAPart1aInstance}" field="responsibleOrganisation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1aInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="formAPart1.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${formAPart1aInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1aInstance?.postalAddress}">
				<li class="fieldcontain">
					<span id="postalAddress-label" class="property-label"><g:message code="formAPart1.postalAddress.label" default="Postal Address" /></span>
					
						<span class="property-value" aria-labelledby="postalAddress-label"><g:fieldValue bean="${formAPart1aInstance}" field="postalAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1aInstance?.financingSources}">
				<li class="fieldcontain">
					<span id="financingSources-label" class="property-label"><g:message code="formAPart1.financingSources.label" default="Financing Sources" /></span>
					
						<span class="property-value" aria-labelledby="financingSources-label"><g:fieldValue bean="${formAPart1aInstance}" field="financingSources"/></span>
					
				</li>
				</g:if>

                <br/>
                <h4>
                    <g:message code="formAPart1.formAContainmentUnitList.label" default="Containment Unit"/>
                </h4>
                <g:if test="${formAPart1aInstance?.formAContainmentUnitList}">

                    <g:set var="formAPart1ContainmentUnitInstanceList" value="${formAPart1aInstance?.formAContainmentUnitList}"></g:set>
                    <g:render template="listContainmentUnits" contextPath="../formAPart1ContainmentUnit" ></g:render>

                </g:if>
                [<g:link controller="formAPart1ContainmentUnit" action="create" params="['formAPart1.id': formAPart1aInstance?.id]"><g:message code="default.button.create.label"/></g:link>]
			
				<g:if test="${formAPart1aInstance?.scope}">
				<li class="fieldcontain">
					<span id="scope-label" class="property-label"><g:message code="formAPart1.scope.label" default="Scope" /></span>
					<span class="property-value" aria-labelledby="scope-label"><%= formAPart1aInstance.scope %></span>
				</li>
				</g:if>

                <g:set var="formInstance" value="${formAPart1aInstance}"></g:set>
                <g:render template="../showStatus"/>


			</ol>
			<g:form url="[resource:formAPart1aInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart1aInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
