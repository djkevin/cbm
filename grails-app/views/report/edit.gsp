<%@ page import="cbm.report.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-report" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create" params="['stateParty.id':reportInstance.stateParty.id]"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
		</div>
		<div id="edit-report" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /> - ${reportInstance?.reportName}</h1>
			
			
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<g:hasErrors bean="${reportInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${reportInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			
			<g:form url="[resource:reportInstance, action:'update']" method="PUT" >
				
				
				
				<g:hiddenField name="version" value="${reportInstance?.version}" />
				
				<fieldset class="form">
					<br/>
					<g:message code="report.hint.namechange" default="report name = StateParty + Year + Language " />
					<br/>
					
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
