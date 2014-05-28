<div class="fieldcontain ${hasErrors(bean: addressInstance.location, field: 'street1', 'error')}">
    <label for="location.street1" class="property-label25">
        <g:message code="formG.location.street1.label" default="Street1"/>
    </label>
    <g:textField class="medText" name="location.street1"
                 maxlength="${addressInstance?.location?.constraints.street1.maxSize}"
                 value="${addressInstance?.location?.street1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance.location, field: 'street2', 'error')} ">
    <label for="location.street2" class="property-label25">
        <g:message code="formG.location.street2.label" default="Street2"/>
    </label>
    <g:textField class="medText" name="location.street2" maxlength="${addressInstance?.location?.constraints.street2.maxSize}"
                 value="${addressInstance?.location?.street2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance.location, field: 'postCode', 'error')} ">
    <label for="location.postCode" class="property-label25">
        <g:message code="formG.location.postCode.label" default="Post Code"/>
    </label>
    <g:textField name="location.postCode" maxlength="${addressInstance?.location?.constraints.postCode.maxSize}" value="${addressInstance?.location?.postCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance.location, field: 'town', 'error')} ">
    <label for="location.town" class="property-label25">
        <g:message code="formG.location.town.label" default="Town"/>
    </label>
    <g:textField name="location.town" maxlength="${addressInstance?.location?.constraints.town.maxSize}" value="${addressInstance?.location?.town}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance.location, field: 'state', 'error')} ">
    <label for="location.state" class="property-label25">
        <g:message code="formG.location.state.label" default="State"/>
    </label>
    <g:textField name="location.state" maxlength="${addressInstance?.location?.constraints.state.maxSize}" value="${addressInstance?.location?.state}"/>
</div>

%{--
<div class="fieldcontain ${hasErrors(bean: addressInstance.location, field: 'country', 'error')} required">
    <label for="location.country" class="property-label25">
        <g:message code="formG.location.country.label" default="Country"/>
        <span class="required-indicator">*</span>
    </label>

   --}%
%{-- <g:select name="location.country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required=""
              value="${addressInstance?.location?.country?.name()}"/>--}%%{--


    <g:set var="promptCountrySelect" value="${message(code:'global.label.choose')}" />
    <g:select name="location.country"
              value="${addressInstance?.location?.country?.id}"
              noSelection="['':promptCountrySelect]"
              from="${cbm.admin.Country.list().sort{a,b -> a.getName()<=>b.getName()}}"
              optionKey="id"
              optionValue="${{it.getName()}}"
              class="many-to-one"/>
</div>--}%
