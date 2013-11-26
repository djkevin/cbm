<%@ page import="cbm.Report" %>



<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'language', 'error')} required">
	<label for="language" class="property-label25">
		<g:message code="report.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="language" from="${cbm.Language?.values()}" keys="${cbm.Language.values()*.name()}" required="" value="${reportInstance?.language?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'year', 'error')} required">
	<label for="year" class="property-label25">
		<g:message code="report.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="year" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: reportInstance, field: 'year')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'reportStatus', 'error')} ">
	<label for="reportStatus" class="property-label25">
		<g:message code="report.reportStatus.label" default="Report Status" />
		
	</label>
	<g:select name="reportStatus" from="${reportInstance.constraints.reportStatus.inList}" value="${reportInstance?.reportStatus}" valueMessagePrefix="report.reportStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'publicationStatus', 'error')} ">
	<label for="publicationStatus" class="property-label25">
		<g:message code="report.publicationStatus.label" default="Publication Status" />
		
	</label>
	<g:select name="publicationStatus" from="${reportInstance.constraints.publicationStatus.inList}" value="${reportInstance?.publicationStatus}" valueMessagePrefix="report.publicationStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'officialVersion', 'error')} ">
	<label for="officialVersion" class="property-label25">
		<g:message code="report.officialVersion.label" default="Official Version" />
		
	</label>
	<g:checkBox name="officialVersion" value="${reportInstance?.officialVersion}" />
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart1b', 'error')} ">
	<label for="formAPart1b" class="property-label25">
		<g:message code="report.formAPart1b.label" default="Form AP art1b" />
		
	</label>
	<g:select id="formAPart1b" name="formAPart1b.id" from="${cbm.FormAPart1b.list()}" optionKey="id" value="${reportInstance?.formAPart1b?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart2a', 'error')} ">
	<label for="formAPart2a" class="property-label25">
		<g:message code="report.formAPart2a.label" default="Form AP art2a" />
		
	</label>
	<g:select id="formAPart2a" name="formAPart2a.id" from="${cbm.FormAPart2a.list()}" optionKey="id" value="${reportInstance?.formAPart2a?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart1', 'error')} ">
	<label for="formAPart1" class="property-label25">
		<g:message code="report.formAPart1.label" default="Form AP art1" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${reportInstance?.formAPart1?}" var="f">
    <li><g:link controller="formAPart1a" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="formAPart1a" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formAPart1a.label', default: 'FormAPart1a')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart2b', 'error')} ">
	<label for="formAPart2b" class="property-label25">
		<g:message code="report.formAPart2b.label" default="Form AP art2b" />
		
	</label>
	<g:select name="formAPart2b" from="${cbm.FormAPart2b.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formAPart2b*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'stateParty', 'error')} required">
	<label for="stateParty" class="property-label25">
		<g:message code="report.stateParty.label" default="State Party" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stateParty" name="stateParty.id" from="${cbm.StateParty.list()}" optionKey="id" required="" value="${reportInstance?.stateParty?.id}" class="many-to-one"/>
</div>

