<%@ page import="cbm.admin.StateParty; cbm.StateParty; cbm.NationalContact" %>



<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'title', 'error')} required">
	<label for="title" class="property-label25">
		<g:message code="nationalContact.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="title" from="${nationalContactInstance.constraints.title.inList}" required="" value="${nationalContactInstance?.title}" valueMessagePrefix="nationalContact.title"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'firstName', 'error')} required">
	<label for="firstName" class="property-label25">
		<g:message code="nationalContact.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="${nationalContactInstance?.constraints?.firstName?.maxSize}" required="" value="${nationalContactInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'lastName', 'error')} required">
	<label for="lastName" class="property-label25">
		<g:message code="nationalContact.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="${nationalContactInstance?.constraints?.lastName?.maxSize}" required="" value="${nationalContactInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'position', 'error')} ">
	<label for="position" class="property-label25">
		<g:message code="nationalContact.position.label" default="Position" />
		
	</label>
	<g:textField name="position" maxlength="${nationalContactInstance?.constraints?.position?.maxSize}" value="${nationalContactInstance?.position}"/>
</div>
<h1><g:message code="nationalContact.address.label" default="Address" /></h1>
<g:set var="addressInstance" value="${nationalContactInstance}"></g:set>
<g:render template="../address"/>
%{--<fieldset class="embedded"><legend><g:message code="nationalContact.address.label" default="Address" /></legend>--}%
%{--<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'address.country', 'error')} required">
	<label for="address.country" class="property-label25">
		<g:message code="nationalContact.address.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required="" value="${addressInstance?.country?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'address.postCode', 'error')} ">
	<label for="address.postCode" class="property-label25">
		<g:message code="nationalContact.address.postCode.label" default="Post Code" />
		
	</label>
	<g:textField name="postCode" maxlength="${nationalContactInstance?.constraints?.postCode?.maxSize}" value="${addressInstance?.postCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'address.street', 'error')} ">
	<label for="address.street" class="property-label25">
		<g:message code="nationalContact.address.street.label" default="Street" />
		
	</label>
	<g:textField name="street" maxlength="${nationalContactInstance?.constraints?.street?.maxSize}" value="${addressInstance?.street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'address.town', 'error')} ">
	<label for="address.town" class="property-label25">
		<g:message code="nationalContact.address.town.label" default="Town" />
		
	</label>
	<g:textField name="town" maxlength="${nationalContactInstance?.constraints?.town?.maxSize}" value="${addressInstance?.town}"/>
</div>--}%
%{--</fieldset>--}%
<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'telephone', 'error')} ">
	<label for="telephone" class="property-label25">
		<g:message code="nationalContact.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" maxlength="${nationalContactInstance?.constraints?.telephone?.maxSize}" value="${nationalContactInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'fax', 'error')} ">
	<label for="fax" class="property-label25">
		<g:message code="nationalContact.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" maxlength="${nationalContactInstance?.constraints?.fax?.maxSize}" value="${nationalContactInstance?.fax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'email', 'error')} ">
	<label for="email" class="property-label25">
		<g:message code="nationalContact.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${nationalContactInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'url', 'error')} ">
	<label for="url" class="property-label25">
		<g:message code="nationalContact.url.label" default="Url" />
		
	</label>
	<g:textField name="url" maxlength="${nationalContactInstance?.constraints?.url?.maxSize}" value="${nationalContactInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'stateParty', 'error')} required">
	<label for="stateParty" class="property-label25">
		<g:message code="nationalContact.stateParty.label" default="State Party" />
		<span class="required-indicator">*</span>
	</label>

	%{--<g:select id="stateParty" name="stateParty.id" from="${cbm.StateParty.list()}" optionKey="id" required="" value="${nationalContactInstance?.stateParty?.id}" class="many-to-one"/>--}%
    <g:if test="${nationalContactInstance?.stateParty}">
        <g:hiddenField id="stateParty" name="stateParty.id" value="${nationalContactInstance?.stateParty?.id}" />
        <g:textField id="stateParty.country" name="stateParty.country" value="${nationalContactInstance?.stateParty?.country}" readonly=""/>
    </g:if>
    <g:else>
        <g:hiddenField id="stateParty" name="stateParty.id" value="${params?.stateParty?.id}" />
        <g:textField id="stateParty.country" name="stateParty.country" value="${cbm.admin.StateParty.get(params?.stateParty?.id)}" readonly=""/>
    </g:else>
</div>

