<%@ page import="cbm.FormF" %>
<%@ defaultCodec="none" %>
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
                <li>
                    <g:link class="list" controller="report" action="show" id="${formFInstance?.report?.id}">${formFInstance?.report?.reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="show-formF" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formF.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formF">

                <g:if test="${formFInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.label" default="Report" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formFInstance}" field="report"/></span>
                    </li>
                    <br>
                </g:if>

				<g:if test="${formFInstance?.entryIntoForceOfConvention}">
				<li>
					<span id="entryIntoForceOfConvention-label" class="property-label-b"><label><g:message code="formF.entryIntoForceOfConvention.label" default="Entry Into Force Of Convention" /></label></span>
					<span class="property-value" aria-labelledby="entryIntoForceOfConvention-label"><g:formatDate format="dd-MMM-yyyy" date="${formFInstance?.entryIntoForceOfConvention}" /></span>
				</li>
                <br>
				</g:if>

                <g:if test="${formFInstance?.offensiveActivity}">
                    <g:set var="activity" value="${formFInstance.offensiveActivity}"></g:set>

                    <g:if test="${activity?.pastBiologicalActivity}">
                        <li>
                            <span id="pastBiologicalActivity-label" class="property-label-b"><g:message code="formF.offensiveActivity.pastBiologicalActivity.label" default="Past biological activity" /></span>
                            <span class="property-value" aria-labelledby="pastBiologicalActivity-label"><g:formatBoolean boolean="${activity.pastBiologicalActivity}"/></span>
                        </li>
                        <br>
                    </g:if>

                    <g:if test="${activity?.periodOfActivity}">
                        <h4><span id="periodOfActivity-label" class="property-label"><g:message code="formF.offensiveActivity.periodOfActivity.label" default="Period of activity" /></span></h4>
                        <li>
                            <span class="property-value" aria-labelledby="periodOfActivity-label"><g:fieldValue bean="${activity}" field="periodOfActivity"/></span>
                        </li>
                        <br>
                    </g:if>


                    <g:if test="${activity?.summaryOfRnDActivities}">
                        <h4><span id="summaryOfRnDActivities-label" class="property-label"><g:message code="formF.offensiveActivity.summaryOfRnDActivities.label" default="Summary of R&D activities" /></span></h4>
                        <li>
                            <span class="property-value" aria-labelledby="summaryOfRnDActivities-label">${activity.summaryOfRnDActivities}</span>
                        </li>
                        <br>
                    </g:if>

                </g:if>
			
				<g:if test="${formFInstance?.defensiveActivity}">
                    <g:set var="activity" value="${formFInstance.defensiveActivity}"></g:set>

                    <g:if test="${activity?.pastBiologicalActivity}">
                        <li>
                            <span id="pastBiologicalDActivity-label" class="property-label-b"><g:message code="formF.defensiveActivity.pastBiologicalActivity.label" default="Past biological activity" /></span>
                            <span class="property-value" aria-labelledby="pastBiologicalDActivity-label"><g:formatBoolean boolean="${activity.pastBiologicalActivity}"/></span>
                        </li>
                        <br>
                    </g:if>

                    <g:if test="${activity?.periodOfActivity}">
                        <h4> <span id="periodOfDActivity-label" class="property-label"><g:message code="formF.defensiveActivity.periodOfActivity.label" default="Period of activity" /></span></h4>
                        <li>
                            <span class="property-value" aria-labelledby="periodOfDActivity-label"><g:fieldValue bean="${activity}" field="periodOfActivity"/></span>
                        </li>
                        <br>
                    </g:if>

                    <g:if test="${activity?.summaryOfRnDActivities}">
                        <h4><span id="summaryOfDRnDActivities-label" class="property-label"><g:message code="formF.defensiveActivity.summaryOfRnDActivities.label" default="Summary of R&D activities" /></span></h4>
                        <li>
                            <span class="property-value" aria-labelledby="summaryOfDRnDActivities-label">${activity.summaryOfRnDActivities}</span>
                        </li>
                        <br>
                    </g:if>

				</g:if>
			
                <g:set var="formInstance" value="${formFInstance}"></g:set>
                <g:render template="../showStatus"/>
			
			</ol>
			<g:form url="[resource:formFInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formFInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formFInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
