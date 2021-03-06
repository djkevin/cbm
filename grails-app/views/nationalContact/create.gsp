<%@ page import="cbm.report.Report" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nationalContact.label', default: 'NationalContact')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-nationalContact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<%-- li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li --%>
				<g:if test="${params?.report.id}">
                    <li>
                        <g:link class="list" controller="report" action="show" id="${params?.report.id}">${Report.get(params?.report.id).reportName}</g:link>
                    </li>
                </g:if>
			</ul>
		</div>
		<div id="create-nationalContact" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${nationalContactInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${nationalContactInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:nationalContactInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
