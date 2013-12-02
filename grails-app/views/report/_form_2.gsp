<%@ page import="cbm.Report" %>



<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'language', 'error')} required">
	<label for="language">
		<g:message code="report.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:select name="language" from="${cbm.Language?.values()}" keys="${cbm.Language.values()*.name()}" required="" value="${reportInstance?.language?.name()}"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="report.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:select name="year" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: reportInstance, field: 'year')}"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'reportStatus', 'error')} ">
	<label for="reportStatus">
		<g:message code="report.reportStatus.label" default="Report Status" />
		
	</label>
</div>
<div><g:select name="reportStatus" from="${reportInstance.constraints.reportStatus.inList}" value="${reportInstance?.reportStatus}" valueMessagePrefix="report.reportStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'publicationStatus', 'error')} ">
	<label for="publicationStatus">
		<g:message code="report.publicationStatus.label" default="Publication Status" />
		
	</label>
</div>
<div><g:select name="publicationStatus" from="${reportInstance.constraints.publicationStatus.inList}" value="${reportInstance?.publicationStatus}" valueMessagePrefix="report.publicationStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'officialVersion', 'error')} ">
	<label for="officialVersion">
		<g:message code="report.officialVersion.label" default="Official Version" />
		
	</label>
</div>
<div><g:checkBox name="officialVersion" value="${reportInstance?.officialVersion}" /></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart1b', 'error')} ">
	<label for="formAPart1b">
		<g:message code="report.formAPart1b.label" default="Form AP art1b" />
		
	</label>
</div>
<div><g:select id="formAPart1b" name="formAPart1b.id" from="${cbm.FormAPart1b.list()}" optionKey="id" value="${reportInstance?.formAPart1b?.id}" class="many-to-one" noSelection="['null': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart2a', 'error')} ">
	<label for="formAPart2a">
		<g:message code="report.formAPart2a.label" default="Form AP art2a" />
		
	</label>
</div>
<div><g:select id="formAPart2a" name="formAPart2a.id" from="${cbm.FormAPart2a.list()}" optionKey="id" value="${reportInstance?.formAPart2a?.id}" class="many-to-one" noSelection="['null': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart1', 'error')} ">
	<label for="formAPart1">
		<g:message code="report.formAPart1.label" default="Form AP art1" />
		
	</label>
</div>
<div>
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
	<label for="formAPart2b">
		<g:message code="report.formAPart2b.label" default="Form AP art2b" />
		
	</label>
</div>
<div><g:select name="formAPart2b" from="${cbm.FormAPart2b.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formAPart2b*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart2c', 'error')} ">
	<label for="formAPart2c">
		<g:message code="report.formAPart2c.label" default="Form AP art2c" />
		
	</label>
</div>
<div><g:select name="formAPart2c" from="${cbm.FormAPart2c.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formAPart2c*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formB', 'error')} ">
	<label for="formB">
		<g:message code="report.formB.label" default="Form B" />
		
	</label>
</div>
<div><g:select name="formB" from="${cbm.FormB.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formB*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formC', 'error')} ">
	<label for="formC">
		<g:message code="report.formC.label" default="Form C" />
		
	</label>
</div>
<div><g:select name="formC" from="${cbm.FormC.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formC*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formE', 'error')} ">
	<label for="formE">
		<g:message code="report.formE.label" default="Form E" />
		
	</label>
</div>
<div><g:select name="formE" from="${cbm.FormE.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formE*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formF', 'error')} ">
	<label for="formF">
		<g:message code="report.formF.label" default="Form F" />
		
	</label>
</div>
<div><g:select name="formF" from="${cbm.FormF.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formF*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formG', 'error')} ">
	<label for="formG">
		<g:message code="report.formG.label" default="Form G" />
		
	</label>
</div>
<div><g:select name="formG" from="${cbm.FormG.list()}" multiple="multiple" optionKey="id" size="5" value="${reportInstance?.formG*.id}" class="many-to-many"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formZero', 'error')} required">
	<label for="formZero">
		<g:message code="report.formZero.label" default="Form Zero" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:select id="formZero" name="formZero.id" from="${cbm.FormZero.list()}" optionKey="id" required="" value="${reportInstance?.formZero?.id}" class="many-to-one"/></div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'stateParty', 'error')} required">
	<label for="stateParty">
		<g:message code="report.stateParty.label" default="State Party" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:select id="stateParty" name="stateParty.id" from="${cbm.StateParty.list()}" optionKey="id" required="" value="${reportInstance?.stateParty?.id}" class="many-to-one"/></div>

