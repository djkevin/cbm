<%@ page import="cbm.FormAPart1ContainmentUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1ContainmentUnit.label', default: 'FormAPart1ContainmentUnit')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-formAPart1ContainmentUnit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-formAPart1ContainmentUnit" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${formAPart1ContainmentUnitInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${formAPart1ContainmentUnitInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
            <g:form url="[resource:formAPart1ContainmentUnitInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${formAPart1ContainmentUnitInstance?.version}" />
				<fieldset class="form">
					<g:hiddenField name="id" value="${formAPart1ContainmentUnitInstance?.id}"/>
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete" action="cancelEdit" value="${message(code: 'default.button.cancel.label', default: 'Cancel')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
