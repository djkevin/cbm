
<%@ page import="cbm.NationalContact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nationalContact.label', default: 'NationalContact')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-nationalContact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-nationalContact" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nationalContact">
			
				<g:if test="${nationalContactInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="nationalContact.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${nationalContactInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="nationalContact.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${nationalContactInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="nationalContact.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${nationalContactInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="nationalContact.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${nationalContactInstance}" field="position"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.location}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="nationalContact.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${nationalContactInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="nationalContact.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${nationalContactInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="nationalContact.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${nationalContactInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="nationalContact.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${nationalContactInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="nationalContact.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${nationalContactInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nationalContactInstance?.stateParty}">
				<li class="fieldcontain">
					<span id="stateParty-label" class="property-label"><g:message code="nationalContact.stateParty.label" default="State Party" /></span>
					<span class="property-value" aria-labelledby="stateParty-label"><g:fieldValue bean="${nationalContactInstance}" field="stateParty"/></span>
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:nationalContactInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${nationalContactInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
