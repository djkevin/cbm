
<%@ page import="cbm.form.FormAPart1a"  %>
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
                <li>
                    <g:link class="list" controller="report" action="show" id="${formAPart1aInstance?.report?.id}">${formAPart1aInstance?.report?.reportName}</g:link>
                </li>
            </ul>
        </div>
		<div id="show-formAPart1" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formAPart1.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formAPart1">

                <g:if test="${formAPart1aInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.label" default="Report Name" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formAPart1aInstance}" field="report"/></span>
                    </li>
                </g:if>

				<g:if test="${formAPart1aInstance?.facilityName}">
                    <h4><g:message code="formAPart1.facilityName.label" default="Facility Name" /></h4>
                    <li>
                        <span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue
                                bean="${formAPart1aInstance}" field="facilityName"/>
                        </span>
                        <span class="italics">
                            <g:if test="${formAPart1aInstance.declaredInAccordanceWithFormAPart2c}">
                                (<g:message code="formAPart1.declaredInAccordanceWithFormAPart2c.label"
                                            default="Declared in accordance with FormAPart2c"/>)
                            </g:if>

                        </span>
                    </li>
				</g:if>
                <br/>

                <g:if test="${formAPart1aInstance?.responsibleOrganisation}">
                    <h4><g:message code="formAPart1.responsibleOrganisation.label"
                                   default="Responsible Organisation"/></h4>
                    <li>
                        <span class="property-value" aria-labelledby="responsibleOrganisation-label"><g:fieldValue
                                bean="${formAPart1aInstance}" field="responsibleOrganisation"/></span>
                    </li>
                </g:if>
			    <br/>


                <g:if test="${formAPart1aInstance?.location}">
                    <h4><g:message code="formAPart1.location.label" default="Location"/></h4>
                    <li>
                        <span class="property-value" aria-labelledby="address-label">
                            <g:fieldValue bean="${formAPart1aInstance}" field="location"/>, <country:name country="${formAPart1aInstance?.country}"/>
                        </span>
                    </li>
                </g:if>
                <br/>

                <g:if test="${formAPart1aInstance?.financingSources}">
                    <h4><g:message code="formAPart1.financingSources.label" default="Financing Sources"/></h4>
                    <li>
                        <span class="property-value" aria-labelledby="financingSources-label"><g:fieldValue
                                bean="${formAPart1aInstance}" field="financingSources"/></span>

                    </li>
                </g:if>
                <br/>

                <h4>
                    <g:message code="formAPart1.formAContainmentUnitList.label" default="Containment Unit"/>
                </h4>
                <g:if test="${formAPart1aInstance?.formAContainmentUnitList}">

                    <g:set var="formAPart1ContainmentUnitInstanceList" value="${formAPart1aInstance?.formAContainmentUnitList}"></g:set>
                    <tmpl:listContainmentUnits/>

                </g:if>
                <g:else>
                    <br/>
                </g:else>

                <g:if test="${formAPart1aInstance?.scope}">
                    <h4><g:message code="formAPart1.scope.label" default="Scope"/></h4>
                    <li>
                        ${formAPart1aInstance.scope}

                    </li>
                </g:if>

                <g:set var="formInstance" value="${formAPart1aInstance}"></g:set>
                <g:render template="../showStatus"/>


			</ol>
			<g:form url="[resource:formAPart1aInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart1aInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formAPart1aInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
				</fieldset>
			</g:form>
            <sec:ifAnyGranted roles="ROLE_SUBMITTER, ROLE_ADMIN">
                <ol class="property-list correspondent">
                    <g:render template="../auditLog/audit" model="['objInstance': formAPart1aInstance]"/>
                </ol>
            </sec:ifAnyGranted>
		</div>
	</body>
</html>
