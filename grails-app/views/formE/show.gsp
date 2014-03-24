
<%@ page import="cbm.FormE" %>
<%@ defaultCodec="none" %>
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
			</ul>
		</div>
		<div id="show-formE" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formE.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formE">

                <g:if test="${formEInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.label" default="Report Name" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formEInstance}" field="report"/></span>
                    </li>
                </g:if>
                <br/>
                <div id="list-formZero" class="content scaffold-list" role="main">
                    <table>
                        <thead>
                        <tr>
                            <th><g:message code="formE.relatingTo.label" default="Relating to" /></th>
                            <th><g:message code="formE.legislation.label" default="Legislation" /></th>
                            <th><g:message code="formE.regulation.label" default="Regulations" /></th>
                            <th><g:message code="formE.otherMeasures.label" default="Other Measures"/> </th>
                            <th><g:message code="formE.amendedSinceLastYear.label" default="Amended since last year" /></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><g:message code="formE.development.production" default="Development, production stockpiling, acquisition or retention" /></td>
                            <td>${formEInstance?.developmentAndMeansOfDelivery?.legislation}</td>
                            <td>${formEInstance?.developmentAndMeansOfDelivery?.regulation}</td>
                            <td>${formEInstance?.developmentAndMeansOfDelivery?.otherMeasures}</td>
                            <td>${formEInstance?.developmentAndMeansOfDelivery?.amendedSinceLastYear}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formE.export.microorganism" default="Exports of micro-organisms and toxins" /></td>
                            <td>${formEInstance?.exportsOfMicroOrganisms?.legislation}</td>
                            <td>${formEInstance?.exportsOfMicroOrganisms?.regulation}</td>
                            <td>${formEInstance?.exportsOfMicroOrganisms?.otherMeasures}</td>
                            <td>${formEInstance?.exportsOfMicroOrganisms?.amendedSinceLastYear}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formE.import.microorganism" default="Imports of micro-organisms and toxins" /></td>
                            <td>${formEInstance?.importsOfMicroOrganisms?.legislation}</td>
                            <td>${formEInstance?.importsOfMicroOrganisms?.regulation}</td>
                            <td>${formEInstance?.importsOfMicroOrganisms?.otherMeasures}</td>
                            <td>${formEInstance?.importsOfMicroOrganisms?.amendedSinceLastYear}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formE.bioSafety" default="Biosafety and biosecurity" /></td>
                            <td>${formEInstance?.biosafetyAndBioSecurity?.legislation}</td>
                            <td>${formEInstance?.biosafetyAndBioSecurity?.regulation}</td>
                            <td>${formEInstance?.biosafetyAndBioSecurity?.otherMeasures}</td>
                            <td>${formEInstance?.biosafetyAndBioSecurity?.amendedSinceLastYear}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <g:if test="${formEInstance?.additionalComments}">
                    <li>
                        <span id="additionalComments-label" class="property-label-b"><g:message code="formE.additionalComments.label" default="Additional Comments" /></span>
                        <span class="property-value" aria-labelledby="additionalComments-label">${formEInstance.additionalComments}</span>

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
