
<%@ page import="cbm.FormZero" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formZero.label', default: 'FormZero')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formZero" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formZero" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formZero.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formZero">

				<g:if test="${formZeroInstance?.formAPart1}">
				<li class="fieldcontain">
					<span id="formAPart1-label" class="property-label"><g:message code="formZero.formAPart1.label" default="Form A Part 1a" /></span>
					
						<span class="property-value" aria-labelledby="formAPart1-label"><g:fieldValue bean="${formZeroInstance}" field="formAPart1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formAPart2a}">
				<li class="fieldcontain">
					<span id="formAPart2a-label" class="property-label"><g:message code="formZero.formAPart2a.label" default="Form A Part 2a" /></span>
					
						<span class="property-value" aria-labelledby="formAPart2a-label"><g:fieldValue bean="${formZeroInstance}" field="formAPart2a"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formAPart2b}">
				<li class="fieldcontain">
					<span id="formAPart2b-label" class="property-label"><g:message code="formZero.formAPart2b.label" default="Form A Part 2b" /></span>
					
						<span class="property-value" aria-labelledby="formAPart2b-label"><g:fieldValue bean="${formZeroInstance}" field="formAPart2b"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formAPart2c}">
				<li class="fieldcontain">
					<span id="formAPart2c-label" class="property-label"><g:message code="formZero.formAPart2c.label" default="Form A Part 2c" /></span>
					
						<span class="property-value" aria-labelledby="formAPart2c-label"><g:fieldValue bean="${formZeroInstance}" field="formAPart2c"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formB}">
				<li class="fieldcontain">
					<span id="formB-label" class="property-label"><g:message code="formZero.formB.label" default="Form B" /></span>
					
						<span class="property-value" aria-labelledby="formB-label"><g:fieldValue bean="${formZeroInstance}" field="formB"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formC}">
				<li class="fieldcontain">
					<span id="formC-label" class="property-label"><g:message code="formZero.formC.label" default="Form C" /></span>
					
						<span class="property-value" aria-labelledby="formC-label"><g:fieldValue bean="${formZeroInstance}" field="formC"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formE}">
				<li class="fieldcontain">
					<span id="formE-label" class="property-label"><g:message code="formZero.formE.label" default="Form E" /></span>
					
						<span class="property-value" aria-labelledby="formE-label"><g:fieldValue bean="${formZeroInstance}" field="formE"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formF}">
				<li class="fieldcontain">
					<span id="formF-label" class="property-label"><g:message code="formZero.formF.label" default="Form F" /></span>
					
						<span class="property-value" aria-labelledby="formF-label"><g:fieldValue bean="${formZeroInstance}" field="formF"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formZeroInstance?.formG}">
				<li class="fieldcontain">
					<span id="formG-label" class="property-label"><g:message code="formZero.formG.label" default="Form G" /></span>
					
						<span class="property-value" aria-labelledby="formG-label"><g:fieldValue bean="${formZeroInstance}" field="formG"/></span>
					
				</li>
				</g:if>

                <g:set var="formInstance" value="${formZeroInstance}"></g:set>
                <g:render template="../showStatus"/>

			
			</ol>
			<g:form url="[resource:formZeroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formZeroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
