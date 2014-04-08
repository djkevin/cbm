
<%@ page import="cbm.FormAPart1b" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1b.label', default: 'FormAPart1b')}" />
	</head>
	<body>
		<a href="#show-formAPart1b" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li>
                    <g:link class="list" controller="report" action="show" id="${formAPart1bInstance?.report?.id}">${formAPart1bInstance?.report?.reportName}</g:link>
                </li>
%{--				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-formAPart1b" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formAPart1b.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formAPart1b">

                <g:if test="${formAPart1bInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.label" default="Report Name" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formAPart1bInstance}" field="report"/></span>
                    </li>
                </g:if>
                <br/>

                <h4><g:message code="formAPart1b.highestBSL.label" default="Indicate the highest BSL" /></h4>
				<li class="fieldcontain">
					<span id="bioSafetyLevel3-label" class="property-label"><g:message code="formAPart1b.bioSafetyLevel3.label" default="Bio Safety Level3" /></span>
					<span class="property-value" aria-labelledby="bioSafetyLevel3-label"><g:formatBoolean boolean="${formAPart1bInstance?.bioSafetyLevel3}" /></span>
					
				</li>

				<li class="fieldcontain">
					<span id="bioSafetyLevel2-label" class="property-label"><g:message code="formAPart1b.bioSafetyLevel2.label" default="Bio Safety Level2" /></span>
					<span class="property-value" aria-labelledby="bioSafetyLevel2-label"><g:formatBoolean boolean="${formAPart1bInstance?.bioSafetyLevel2}" /></span>
					
				</li>
                <br/>

				<g:if test="${formAPart1bInstance?.additionalInformation}">
                <h4><g:message code="formAPart1b.additionalInformation.label" default="Additional Information" /></h4>
				<li class="fieldcontain">

						<span  aria-labelledby="additionalInformation-label"><g:fieldValue bean="${formAPart1bInstance}" field="additionalInformation"/></span>
					
				</li>
				</g:if>
			
                <g:set var="formInstance" value="${formAPart1bInstance}"></g:set>
                <g:render template="../showStatus"/>
			
			</ol>
			<g:form url="[resource:formAPart1bInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart1bInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formAPart1bInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
