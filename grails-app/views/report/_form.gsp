<%@ page import="cbm.Report" %>

<!--  TODO: introduce labels in message.properties -->

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'language', 'error')} required">
	<label for="language" class="property-label25">
		<g:message code="language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="language" from="${cbm.constants.Language?.values()}" keys="${cbm.constants.Language.values()*.name()}" required="" value="${reportInstance?.language?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'year', 'error')} required">
	<label for="year" class="property-label25">
		<g:message code="year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="year" from="${2000..2050}" class="range" required="" value="${fieldValue(bean: reportInstance, field: 'year')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'reportStatus', 'error')} ">
	<label for="reportStatus" class="property-label25">
		<g:message code="report.reportStatus.label" default="Report Status" />
		
	</label>
    <g:select name="reportStatus" from="${cbm.constants.ReportStatus.values()}" keys="${cbm.constants.ReportStatus.values()*.name()}" required="" value="${reportInstance?.reportStatus?.name()}"/>
	%{--<g:select name="reportStatus" from="${reportInstance.constraints.reportStatus.inList}" value="${reportInstance?.reportStatus?: reportInstance.constraints.reportStatus.inList[0]}" valueMessagePrefix="report.reportStatus" noSelection="['': '']"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'publicationStatus', 'error')} ">
	<label for="publicationStatus" class="property-label25">
		<g:message code="report.publicationStatus.label" default="Publication Status" />
		
	</label>
    <g:select name="publicationStatus" from="${cbm.constants.PublicationStatus?.values()}" keys="${cbm.constants.PublicationStatus.values()*.name()}" required="" value="${reportInstance?.publicationStatus?.name()}"/>
	%{--<g:select name="publicationStatus" from="${reportInstance.constraints.publicationStatus.inList}" value="${reportInstance?.publicationStatus?: reportInstance.constraints.publicationStatus.inList[0]}" valueMessagePrefix="report.publicationStatus" noSelection="['': '']"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'officialVersion', 'error')} ">
	<label for="officialVersion" class="property-label25">
		<g:message code="report.officialVersion.label" default="Official Version" />
		
	</label>
	<g:checkBox name="officialVersion" value="${reportInstance?.officialVersion}" />
</div>

<g:hiddenField name="stateParty.id" value="${reportInstance?.stateParty?.id}" />
