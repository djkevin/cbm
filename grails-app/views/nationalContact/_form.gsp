<%@ page import="cbm.NationalContact" %>



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
	<g:textField name="firstName" maxlength="100" required="" value="${nationalContactInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'lastName', 'error')} required">
	<label for="lastName" class="property-label25">
		<g:message code="nationalContact.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="100" required="" value="${nationalContactInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'position', 'error')} ">
	<label for="position" class="property-label25">
		<g:message code="nationalContact.position.label" default="Position" />
		
	</label>
	<g:textField name="position" maxlength="100" value="${nationalContactInstance?.position}"/>
</div>
<fieldset class="embedded"><legend><g:message code="nationalContact.address.label" default="Address" /></legend>
<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'address.country', 'error')} required">
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
	<g:textField name="postCode" maxlength="10" value="${addressInstance?.postCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'address.street', 'error')} ">
	<label for="address.street" class="property-label25">
		<g:message code="nationalContact.address.street.label" default="Street" />
		
	</label>
	<g:textField name="street" maxlength="200" value="${addressInstance?.street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'address.town', 'error')} ">
	<label for="address.town" class="property-label25">
		<g:message code="nationalContact.address.town.label" default="Town" />
		
	</label>
	<g:textField name="town" maxlength="100" value="${addressInstance?.town}"/>
</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'telephone', 'error')} ">
	<label for="telephone" class="property-label25">
		<g:message code="nationalContact.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" maxlength="20" value="${nationalContactInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'fax', 'error')} ">
	<label for="fax" class="property-label25">
		<g:message code="nationalContact.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" maxlength="20" value="${nationalContactInstance?.fax}"/>
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
	<g:textField name="url" maxlength="100" value="${nationalContactInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'stateParty', 'error')} required">
	<label for="stateParty" class="property-label25">
		<g:message code="nationalContact.stateParty.label" default="State Party" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stateParty" name="stateParty.id" from="${cbm.StateParty.list()}" optionKey="id" required="" value="${nationalContactInstance?.stateParty?.id}" class="many-to-one"/>
</div>

