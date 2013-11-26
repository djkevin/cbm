
<%@ page import="cbm.FormAPart1ContainmentUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart1ContainmentUnit.label', default: 'FormAPart1ContainmentUnit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formAPart1ContainmentUnit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formAPart1ContainmentUnit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formAPart1ContainmentUnit">
			
				<g:if test="${formAPart1ContainmentUnitInstance?.bioSafetyLevel}">
				<li class="fieldcontain">
					<span id="bioSafetyLevel-label" class="property-label"><g:message code="formAPart1ContainmentUnit.bioSafetyLevel.label" default="Bio Safety Level" /></span>
					
						<span class="property-value" aria-labelledby="bioSafetyLevel-label"><g:fieldValue bean="${formAPart1ContainmentUnitInstance}" field="bioSafetyLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1ContainmentUnitInstance?.unitType}">
				<li class="fieldcontain">
					<span id="unitType-label" class="property-label"><g:message code="formAPart1ContainmentUnit.unitType.label" default="Unit Type" /></span>
					
						<span class="property-value" aria-labelledby="unitType-label"><g:fieldValue bean="${formAPart1ContainmentUnitInstance}" field="unitType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1ContainmentUnitInstance?.unitSize}">
				<li class="fieldcontain">
					<span id="unitSize-label" class="property-label"><g:message code="formAPart1ContainmentUnit.unitSize.label" default="Unit Size" /></span>
					
						<span class="property-value" aria-labelledby="unitSize-label"><g:fieldValue bean="${formAPart1ContainmentUnitInstance}" field="unitSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1ContainmentUnitInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="formAPart1ContainmentUnit.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${formAPart1ContainmentUnitInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart1ContainmentUnitInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="formAPart1ContainmentUnit.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="formAPart1a" action="show" id="${formAPart1ContainmentUnitInstance?.facility?.id}">${formAPart1ContainmentUnitInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formAPart1ContainmentUnitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart1ContainmentUnitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
