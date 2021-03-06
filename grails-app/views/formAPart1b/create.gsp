<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1b.label', default: 'FormAPart1b')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-formAPart1b" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li>
                    <g:link class="list" controller="report" action="show" id="${formAPart1bInstance?.report?.id}">${formAPart1bInstance?.report?.reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="create-formAPart1b" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" />:<g:message code="formAPart1b.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${formAPart1bInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${formAPart1bInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:formAPart1bInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
                    <g:if test="${!formAPart1bInstance?.report?.hasBSL4()}">
                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}"  />
                    </g:if>

				</fieldset>
			</g:form>
		</div>
	</body>
</html>
