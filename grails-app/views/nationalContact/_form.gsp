<%@ page import="cbm.admin.StateParty; cbm.admin.StateParty; cbm.admin.NationalContact" %>


 <span class="instructions"><g:message code="nationalContact.instructions.name.or.org" default="Fill in name or org"/> </span>
<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'title', 'error')} required">
	<label for="title" class="property-label25">
		<g:message code="nationalContact.title.label" default="Title" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:select name="title" from="${cbm.constants.Title?.values()}" keys="${cbm.constants.Title.values()*.name()}" value="${nationalContactInstance?.title}" noSelection="['': '--']" />
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'firstName', 'error')} required">
	<label for="firstName" class="property-label25">
		<g:message code="nationalContact.firstName.label" default="First Name" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	%{--<g:textField name="firstName" maxlength="${nationalContactInstance?.constraints?.firstName?.maxSize}" value="${nationalContactInstance?.firstName}"/>--}%
	<g:textField name="firstName" maxlength="${constraints.maxLength([field:'firstName', obj:nationalContactInstance])}" value="${nationalContactInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'lastName', 'error')} required">
	<label for="lastName" class="property-label25">
		<g:message code="nationalContact.lastName.label" default="Last Name" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:textField name="lastName" maxlength="${nationalContactInstance?.constraints?.lastName?.maxSize}"  value="${nationalContactInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'position', 'error')} ">
	<label for="position" class="property-label25">
		<g:message code="nationalContact.position.label" default="Position" />
		
	</label>
	<g:textField name="position" maxlength="${nationalContactInstance?.constraints?.position?.maxSize}" value="${nationalContactInstance?.position}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance, field: 'organization', 'error')} required">
	<label for="organization" class="property-label25">
		<g:message code="nationalContact.organization.label" default="Organization" />

	</label>
	<g:textField name="organization" maxlength="${nationalContactInstance?.constraints?.organization?.maxSize}" value="${nationalContactInstance?.organization}"/>
</div>


<h1><g:message code="nationalContact.address.label" default="Address" /></h1>
<g:set var="addressInstance" value="${nationalContactInstance}"></g:set>
<g:render template="../address"/>

<div class="fieldcontain ${hasErrors(bean: nationalContactInstance.country, field: 'country', 'error')} required">
    <label for="country" class="property-label25">
        <g:message code="country.label" default="Country"/>
        <span class="required-indicator">*</span>
    </label>

    <country:select name="country" value="${nationalContactInstance?.country?.id}"/>
</div>


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
	%{--<label for="stateParty" class="property-label25">--}%
		%{--<g:message code="nationalContact.stateParty.label" default="State Party" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%

	%{--<g:select id="stateParty" name="stateParty.id" from="${cbm.StateParty.list()}" optionKey="id" required="" value="${nationalContactInstance?.stateParty?.id}" class="many-to-one"/>--}%
    <g:if test="${nationalContactInstance?.stateParty}">
        <g:hiddenField id="stateParty" name="stateParty.id" value="${nationalContactInstance?.stateParty?.id}" />
        %{--<g:textField id="stateParty.country" name="stateParty.country" value="${nationalContactInstance?.stateParty?.country}" readonly=""/>--}%
    </g:if>
    <g:else>
        <g:hiddenField id="stateParty" name="stateParty.id" value="${params?.stateParty?.id}" />
        %{--<g:textField id="stateParty.country" name="stateParty.country" value="${cbm.admin.StateParty.get(params?.stateParty?.id)}" readonly=""/>--}%
    </g:else>
</div>

<g:hiddenField name="report.id" id="report" value="${params?.report.id}" />
