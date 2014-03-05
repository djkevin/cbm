<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.street1', 'error')} ">
    <label for="location.street1" class="property-label25">
        <g:message code="formG.location.street1.label" default="Street1" />

    </label>
    <g:textField name="street1" maxlength="200" value="${addressInstance?.street1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.street2', 'error')} ">
    <label for="location.street2" class="property-label25">
        <g:message code="formG.location.street2.label" default="Street2" />

    </label>
    <g:textField name="street2" maxlength="200" value="${addressInstance?.street2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.postCode', 'error')} ">
    <label for="location.postCode" class="property-label25">
        <g:message code="formG.location.postCode.label" default="Post Code" />

    </label>
    <g:textField name="postCode" maxlength="10" value="${addressInstance?.postCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.town', 'error')} ">
    <label for="location.town" class="property-label25">
        <g:message code="formG.location.town.label" default="Town" />

    </label>
    <g:textField name="town" maxlength="100" value="${addressInstance?.town}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.state', 'error')} ">
    <label for="location.state" class="property-label25">
        <g:message code="formG.location.state.label" default="State" />

    </label>
    <g:textField name="state" maxlength="100" value="${addressInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formGInstance, field: 'location.country', 'error')} required">
    <label for="location.country" class="property-label25">
        <g:message code="formG.location.country.label" default="Country" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required="" value="${addressInstance?.country?.name()}"/>
</div>