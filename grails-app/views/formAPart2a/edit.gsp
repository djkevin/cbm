<%@ page import="cbm.FormAPart2a" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2a.label', default: 'FormAPart2a')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-formAPart2a" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
                <li>
                    <g:link class="list" controller="report" action="show" id="${formAPart2aInstance?.report?.id}">${formAPart2aInstance?.report?.reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="edit-formAPart2a" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" />:<g:message code="formAPart2a.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${formAPart2aInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${formAPart2aInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:formAPart2aInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${formAPart2aInstance?.version}" />
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
