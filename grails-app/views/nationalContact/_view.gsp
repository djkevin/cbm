<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%
<div class="box">
    <h1><g:message code="nationalContact.label" default="National Contact"/> </h1>
</div>
<br/><br/>

<h4><g:message code="nationalContact.label" default="National Contact" /></h4>
<br/>

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

<g:if test="${nationalContactInstance?.organization}">
    <li class="fieldcontain">
        <span id="position-label" class="property-label"><g:message code="nationalContact.organization.label" default="Organization" /></span>

        <span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${nationalContactInstance}" field="organization"/></span>

    </li>
</g:if>

<g:if test="${nationalContactInstance?.location}">
    <li class="fieldcontain">
        <span id="address-label" class="property-label"><g:message code="nationalContact.address.label" default="Address" /></span>

        <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${nationalContactInstance}" field="location"/>,
            <country:name country="${nationalContactInstance?.country}"/>
            %{--<g:fieldValue bean="${nationalContactInstance}" field="country"/>--}%
        </span>

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

<br/><br/>%{--to allow gap when multi-page print--}%