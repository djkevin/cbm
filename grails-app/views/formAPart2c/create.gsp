<!-- 
	Requires a URL parameter "formAPart2b.id". The value of this parameter is the id of the FormAPart2b linked to the FormAPart2c.
 -->
 
<%@ page import="cbm.form.FormAPart2b; cbm.form.FormAPart2b; cbm.report.Report" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2c.label', default: 'FormAPart2c')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-formAPart2c" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li>
                    %{--<g:link class="list" controller="formAPart2b" action="show" id="${params.formAPart2b.id}">${cbm.form.FormAPart2b.get(params.formAPart2b.id)}</g:link>--}%
                    <g:link class="list" controller="report" action="show" id="${params.report?.id}">${Report.get(params.long('report.id')).reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="create-formAPart2c" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${formAPart2cInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${formAPart2cInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:formAPart2cInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
                    <g:if test="${formAPart2bs}"> <!-- We can only create if there is at least 1 Form A Part 2 b -->
					    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </g:if>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
