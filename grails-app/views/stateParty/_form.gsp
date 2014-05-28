<%@ page import="cbm.admin.StateParty" %>
%{--<%@ defaultCodec="none" %>--}%
<%@page defaultCodec="HTML" %>

%{--<g:set var="locale" value="${org.springframework.web.servlet.support.RequestContextUtils.getLocale(request)}" />--}%
<%-- ${locale} --%>

<div class="fieldcontain ${hasErrors(bean: statePartyInstance, field: 'country', 'error')} required">
	<label for="country" class="property-label25">
		<g:message code="stateParty.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
<%--	<g:select name="country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required="" value="${statePartyInstance?.country?.name()}"/>--%>
	%{--<g:select name="country" from="${cbm.Country?.values()}" keys="${cbm.Country.values()*.name()}" required="" value="${statePartyInstance?.country?.name()}"/>--}%

<g:set var="promptCountrySelect" value="${message(code:'global.label.choose')}" />
<g:select name="country2"
          value="${statePartyInstance?.country?.id}"
          noSelection="['':promptCountrySelect]"
          from="${cbm.admin.Country.list().sort{a,b -> a.getName()<=>b.getName()}}"
          optionKey="id"
          optionValue="${{it.getName()}}"
          class="many-to-one"/>
    %{--TODO replace with taglib--}%
%{--<g:countrySelector name="country" field="${statePartyInstance?.country}" noSelection="['':promptCountrySelect]"/>--}%
</div>
<div>

</div>

<div class="fieldcontain ${hasErrors(bean: statePartyInstance, field: 'accessionRatification', 'error')} ">
	<label for="accessionRatification" class="property-label25">
		<g:message code="stateParty.accessionRatification.label" default="Accession Ratification" />
		
	</label>
	<g:datePicker name="accessionRatification" precision="day"  value="${statePartyInstance?.accessionRatification}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: statePartyInstance, field: 'nationalContact', 'error')} ">
	<label for="nationalContact" class="property-label25">
		<g:message code="stateParty.nationalContact.label" default="National Contact" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${statePartyInstance?.nationalContact?}" var="n">
    <li><g:link controller="nationalContact" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="nationalContact" action="create" params="['stateParty.id': statePartyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'nationalContact.label', default: 'NationalContact')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: statePartyInstance, field: 'report', 'error')} ">
	<label for="report" class="property-label25">
		<g:message code="stateParty.report.label" default="Report" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${statePartyInstance?.report?}" var="r">
    <li><g:link controller="report" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="report" action="create" params="['stateParty.id': statePartyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'report.label', default: 'Report')])}</g:link>
</li>
</ul>

</div>

