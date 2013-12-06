<g:if test="${formInstance?.title}">
    <li class="fieldcontain">
        <span id="title-label" class="property-label"><g:message code="formC.title.label" default="Title" /></span>

        <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${formInstance}" field="title"/></span>

    </li>
</g:if>

<g:if test="${formInstance?.formStatus}">
    <li class="fieldcontain">
        <span id="formStatus-label" class="property-label"><g:message code="formC.formStatus.label" default="Form Status" /></span>

        <span class="property-value" aria-labelledby="formStatus-label"><g:fieldValue bean="${formInstance}" field="formStatus"/></span>

    </li>
</g:if>

<g:if test="${formInstance?.visibility}">
    <li class="fieldcontain">
        <span id="visibility-label" class="property-label"><g:message code="formC.visibility.label" default="Visibility" /></span>

        <span class="property-value" aria-labelledby="visibility-label"><g:fieldValue bean="${formInstance}" field="visibility"/></span>

    </li>
</g:if>

<g:if test="${formInstance?.dateCreated}">
    <li class="fieldcontain">
        <span id="dateCreated-label" class="property-label"><g:message code="formC.dateCreated.label" default="Date Created" /></span>

        <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate format="dd-MMM-yyyy" date="${formInstance?.dateCreated}" /></span>

    </li>
</g:if>

<g:if test="${formInstance?.lastUpdated}">
    <li class="fieldcontain">
        <span id="lastUpdated-label" class="property-label"><g:message code="formC.lastUpdated.label" default="Last Updated" /></span>

        <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate format="dd-MMM-yyyy" date="${formInstance?.lastUpdated}" /></span>

    </li>
</g:if>