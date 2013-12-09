
<%@ page import="cbm.FormAPart2c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2c.label', default: 'FormAPart2c')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formAPart2c" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formAPart2c" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formAPart2c">
			
				<g:if test="${formAPart2cInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="formAPart2c.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${formAPart2cInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart2cInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="formAPart2c.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${formAPart2cInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart2cInstance?.facilityName}">
				<li class="fieldcontain">
					<span id="facilityName-label" class="property-label"><g:message code="formAPart2c.facilityName.label" default="Facility Name" /></span>
					
						<span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue bean="${formAPart2cInstance}" field="facilityName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart2cInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="formAPart2c.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${formAPart2cInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formAPart2cInstance?.mailingAddress}">
				<li class="fieldcontain">
					<span id="mailingAddress-label" class="property-label"><g:message code="formAPart2c.mailingAddress.label" default="Mailing Address" /></span>
					
						<span class="property-value" aria-labelledby="mailingAddress-label"><g:fieldValue bean="${formAPart2cInstance}" field="mailingAddress"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formAPart2cInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart2cInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>