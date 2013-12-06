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

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formZero', 'error')} ">
	<label for="formZero" class="property-label25">
		<g:message code="report.formZero.label" default="Form Zero" />
		
	</label>
	<g:select id="formZero" name="formZero.id" from="${cbm.FormZero.list()}" optionKey="id" value="${reportInstance?.formZero?.id}" class="many-to-one" noSelection="['null': '']"/>
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

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart2c', 'error')} ">
	<label for="formAPart2c" class="property-label25">
		<g:message code="report.formAPart2c.label" default="Form AP art2c" />
		
	</label>
	<g:select name="formAPart2c" from="${cbm.FormAPart2c.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formAPart2c*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formB', 'error')} ">
	<label for="formB" class="property-label25">
		<g:message code="report.formB.label" default="Form B" />
		
	</label>
	<g:select name="formB" from="${cbm.FormB.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formB*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formC', 'error')} ">
	<label for="formC" class="property-label25">
		<g:message code="report.formC.label" default="Form C" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${reportInstance?.formC?}" var="f">
    <li><g:link controller="formC" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="formC" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formC.label', default: 'FormC')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formE', 'error')} ">
	<label for="formE" class="property-label25">
		<g:message code="report.formE.label" default="Form E" />
		
	</label>
	<g:select name="formE" from="${cbm.FormE.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formE*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formF', 'error')} ">
	<label for="formF" class="property-label25">
		<g:message code="report.formF.label" default="Form F" />
		
	</label>
	<g:select name="formF" from="${cbm.FormF.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formF*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formG', 'error')} ">
	<label for="formG" class="property-label25">
		<g:message code="report.formG.label" default="Form G" />
		
	</label>
	<g:select name="formG" from="${cbm.FormG.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formG*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'stateParty', 'error')} required">
	<label for="stateParty" class="property-label25">
		<g:message code="report.stateParty.label" default="State Party" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stateParty" name="stateParty.id" from="${cbm.StateParty.list()}" optionKey="id" required="" value="${reportInstance?.stateParty?.id}" class="many-to-one"/>
</div>

