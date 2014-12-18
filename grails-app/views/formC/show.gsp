
<%@ page import="cbm.form.FormC" %>
<%@ defaultCodec="none" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formC.label', default: 'FormC')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li>
                    <g:link class="list" controller="report" action="show" id="${formCInstance?.report?.id}">${formCInstance?.report?.reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="show-formC" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formC.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formC">

                <g:if test="${formCInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.label" default="Report" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formCInstance}" field="report"/></span>
                    </li>
                </g:if>

                <g:if test="${formCInstance?.comments}">
                    <h4><g:message code="formC.comments.label" default="Comments" /></h4>
                    <li>
                        <span class="property-value" aria-labelledby="comments-label">${formCInstance.comments}</span>
                    </li>
                </g:if>

                <g:set var="formInstance" value="${formCInstance}"></g:set>
                <g:render template="../showStatus"/>
			
			</ol>
			<g:form url="[resource:formCInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formCInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formCInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
				</fieldset>
			</g:form>
            <sec:ifAnyGranted roles="ROLE_SUBMITTER, ROLE_ADMIN">
                <ol class="property-list correspondent">
                    <g:render template="../auditLog/audit" model="['objInstance': formCInstance]"/>
                </ol>
            </sec:ifAnyGranted>
		</div>
	</body>
</html>
