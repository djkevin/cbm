
<%@ page import="cbm.FormE" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formE.label', default: 'FormE')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formE" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li>
                    <g:link class="list" controller="report" action="show" id="${formEInstance?.report?.id}">${formEInstance?.report?.reportName}</g:link>
                </li>
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-formE" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formE">

                <g:if test="${formEInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.reportName.label" default="Report Name" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formEInstance}" field="report"/></span>
                    </li>
                </g:if>

				<g:if test="${formEInstance?.additionalComments}">
				<li class="fieldcontain">
					<span id="additionalComments-label" class="property-label"><g:message code="formE.additionalComments.label" default="Additional Comments" /></span>
					
						<span class="property-value" aria-labelledby="additionalComments-label"><g:fieldValue bean="${formEInstance}" field="additionalComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formEInstance?.biosafetyAndBioSecurity}">
				<li class="fieldcontain">
					<span id="biosafetyAndBioSecurity-label" class="property-label"><g:message code="formE.biosafetyAndBioSecurity.label" default="Biosafety And Bio Security" /></span>
					
						<span class="property-value" aria-labelledby="biosafetyAndBioSecurity-label"><g:fieldValue bean="${formEInstance}" field="biosafetyAndBioSecurity"/></span>
					
				</li>
				</g:if>

				<g:if test="${formEInstance?.developmentAndMeansOfDelivery}">
				<li class="fieldcontain">
					<span id="developmentAndMeansOfDelivery-label" class="property-label"><g:message code="formE.developmentAndMeansOfDelivery.label" default="Development And Means Of Delivery" /></span>
					
						<span class="property-value" aria-labelledby="developmentAndMeansOfDelivery-label"><g:fieldValue bean="${formEInstance}" field="developmentAndMeansOfDelivery"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formEInstance?.exportsOfMicroOrganisms}">
				<li class="fieldcontain">
					<span id="exportsOfMicroOrganisms-label" class="property-label"><g:message code="formE.exportsOfMicroOrganisms.label" default="Exports Of Micro Organisms" /></span>
					
						<span class="property-value" aria-labelledby="exportsOfMicroOrganisms-label"><g:fieldValue bean="${formEInstance}" field="exportsOfMicroOrganisms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formEInstance?.importsOfMicroOrganisms}">
				<li class="fieldcontain">
					<span id="importsOfMicroOrganisms-label" class="property-label"><g:message code="formE.importsOfMicroOrganisms.label" default="Imports Of Micro Organisms" /></span>
					
						<span class="property-value" aria-labelledby="importsOfMicroOrganisms-label"><g:fieldValue bean="${formEInstance}" field="importsOfMicroOrganisms"/></span>
					
				</li>
				</g:if>

                <g:set var="formInstance" value="${formEInstance}"></g:set>
                <g:render template="../showStatus"/>
			
			</ol>
			<g:form url="[resource:formEInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formEInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
