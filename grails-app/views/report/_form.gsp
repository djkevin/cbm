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
	<g:select name="reportStatus" from="${reportInstance.constraints.reportStatus.inList}" value="${reportInstance?.reportStatus?: reportInstance.constraints.reportStatus.inList[0]}" valueMessagePrefix="report.reportStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'publicationStatus', 'error')} ">
	<label for="publicationStatus" class="property-label25">
		<g:message code="report.publicationStatus.label" default="Publication Status" />
		
	</label>
	<g:select name="publicationStatus" from="${reportInstance.constraints.publicationStatus.inList}" value="${reportInstance?.publicationStatus?: reportInstance.constraints.publicationStatus.inList[0]}" valueMessagePrefix="report.publicationStatus" noSelection="['': '']"/>
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
		<g:message code="formAPart1.label" default="Form A Part1 a" />
		
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
        <g:message code="formAPart2b.label" default="Form A Part 2b" />
    </label>

    <ul class="one-to-many">
        <g:each in="${reportInstance?.formAPart2b?}" var="f">
            <li><g:link controller="formAPart2b" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="formAPart2b" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formAPart2b.label', default: 'formAPart2b')])}</g:link>
        </li>
    </ul>
</div>
<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formAPart2c', 'error')} ">
    <label for="formAPart2c" class="property-label25">
        <g:message code="formAPart2c.label" default="Form A Part 2c" />
    </label>

    <ul class="one-to-many">
        <g:each in="${reportInstance?.formAPart2c?}" var="f">
            <li><g:link controller="formAPart2c" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="formAPart2c" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formAPart2c.label', default: 'formAPart2c')])}</g:link>
        </li>
    </ul>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formB', 'error')} ">
    <label for="formB" class="property-label25">
        <g:message code="formB.label" default="Form B" />
    </label>

    <ul class="one-to-many">
        <g:each in="${reportInstance?.formB?}" var="f">
            <li><g:link controller="formB" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="formB" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formB.label', default: 'formB')])}</g:link>
        </li>
    </ul>
</div>
<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formC', 'error')} ">
	<label for="formC" class="property-label25">
		<g:message code="formC.label" default="Form C" />
	</label>
	
    <ul class="one-to-many">
        <g:each in="${reportInstance?.formC?}" var="f">
            <li><g:link controller="formC" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
        <g:link controller="formC" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formC.label', default: 'formC')])}</g:link>
        </li>
    </ul>
</div>
<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formE', 'error')} ">
    <label for="formE" class="property-label25">
        <g:message code="formE.label" default="Form E" />
    </label>

    <ul class="one-to-many">
        <g:each in="${reportInstance?.formE?}" var="f">
            <li><g:link controller="formE" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="formE" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formE.label', default: 'formE')])}</g:link>
        </li>
    </ul>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formF', 'error')} ">
    <label for="formF" class="property-label25">
        <g:message code="report.formF.label" default="Form F" />
    </label>

    <ul class="one-to-many">
        <g:each in="${reportInstance?.formF?}" var="f">
            <li><g:link controller="formF" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="formF" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formF.label', default: 'formF')])}</g:link>
        </li>
    </ul>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'formG', 'error')} ">
    <label for="formF" class="property-label25">
        <g:message code="report.formG.label" default="Form G" />
    </label>

    <ul class="one-to-many">
        <g:each in="${reportInstance?.formG?}" var="f">
            <li><g:link controller="formG" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="formG" action="create" params="['report.id': reportInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formG.label', default: 'formG')])}</g:link>
        </li>
    </ul>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'stateParty', 'error')} required">
	<label for="stateParty" class="property-label25">
		<g:message code="report.stateParty.label" default="State Party" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stateParty" name="stateParty.id" from="${cbm.StateParty.list()}" optionKey="id" required="" value="${reportInstance?.stateParty?.id}" class="many-to-one"/>
</div>

