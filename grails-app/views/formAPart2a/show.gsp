
<%@ page import="cbm.form.FormAPart2a" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2a.label', default: 'FormAPart2a')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formAPart2a" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li>
                    <g:link class="list" controller="report" action="show" id="${formAPart2aInstance?.report?.id}">${formAPart2aInstance?.report?.reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="show-formAPart2a" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formAPart2a.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formAPart2a">

                <g:if test="${formAPart2aInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.label" default="Report" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formAPart2aInstance}" field="report"/></span>
                    </li>
                </g:if>

				%{--<g:if test="${formAPart2aInstance?.existingNationalProgrammes}">--}%
				<li class="fieldcontain">
					<span id="existingNationalProgrammes-label" class="property-label25"><g:message code="formAPart2a.existingNationalProgrammes.label" default="Existing National Programmes" /></span>
				</li>
                    <span class="property-value" aria-labelledby="existingNationalProgrammes-label"><g:formatBoolean boolean="${formAPart2aInstance?.existingNationalProgrammes}" /></span>
				%{--</g:if>--}%

                <g:set var="formInstance" value="${formAPart2aInstance}"></g:set>
                <g:render template="../showStatus"/>

            </ol>
			<g:form url="[resource:formAPart2aInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart2aInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formAPart2aInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
