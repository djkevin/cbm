
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
                <li>
                    <g:link class="list" controller="report" action="show" id="${formFInstance?.report?.id}">${formFInstance?.report?.reportName}</g:link>
                </li>
			%{--	<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-formF" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formF">

                <g:if test="${formFInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.reportName.label" default="Report Name" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formFInstance}" field="report"/></span>
                    </li>
                </g:if>

				<g:if test="${formFInstance?.entryIntoForceOfConvention}">
				<li class="fieldcontain">
					<span id="entryIntoForceOfConvention-label" class="property-label"><g:message code="formF.entryIntoForceOfConvention.label" default="Entry Into Force Of Convention" /></span>
					<span class="property-value" aria-labelledby="entryIntoForceOfConvention-label"><g:formatDate date="${formFInstance?.entryIntoForceOfConvention}" /></span>
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.defensiveActivity}">
				<li class="fieldcontain">
					<span id="defensiveActivity-label" class="property-label"><g:message code="formF.defensiveActivity.label" default="Defensive Activity" /></span>
					
						<span class="property-value" aria-labelledby="defensiveActivity-label"><g:fieldValue bean="${formFInstance}" field="defensiveActivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formFInstance?.offensiveActivity}">
				<li class="fieldcontain">
					<span id="offensiveActivity-label" class="property-label"><g:message code="formF.offensiveActivity.label" default="Offensive Activity" /></span>
					
						<span class="property-value" aria-labelledby="offensiveActivity-label"><g:fieldValue bean="${formFInstance}" field="offensiveActivity"/></span>
					
				</li>
				</g:if>

                <g:if test="${formFInstance?.report}">
                    <li class="fieldcontain">
                        <span id="report-label" class="property-label"><g:message code="formF.report.label" default="Report" /></span>

                        <span class="property-value" aria-labelledby="report-label"><g:link controller="report" action="show" id="${formFInstance?.report?.id}">${formFInstance?.report?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

                <g:set var="formInstance" value="${formFInstance}"></g:set>
                <g:render template="../showStatus"/>
			
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
