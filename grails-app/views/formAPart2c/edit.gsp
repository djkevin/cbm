<!-- 
	Requires a URL parameter "reportId". The value of this parameter is the id of the Report linked to the FormAPart2c.
 -->
 
 <%@ page import="cbm.form.FormAPart2c" %>
<%@ page import="cbm.report.Report" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2c.label', default: 'FormAPart2c')}" />		
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-formAPart2c" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li>
                    %{--<g:link class="list" controller="report" action="show" id="${params.reportId}">${Report.get(params.reportId)}</g:link>--}%
                    <g:link class="list" controller="formAPart2b" action="show" id="${formAPart2cInstance?.formAPart2b?.id}">${formAPart2cInstance?.formAPart2b}</g:link>
                </li>
			</ul>
		</div>
		<div id="edit-formAPart2c" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
			<g:form url="[resource:formAPart2cInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${formAPart2cInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
