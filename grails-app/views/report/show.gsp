
<%@ page import="cbm.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-report" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-report" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /> - ${reportInstance}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list report">
			
				<g:if test="${reportInstance?.reportName}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="report.reportName.label" default="Report Name" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${reportInstance}" field="reportName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="report.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${reportInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="report.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label">${reportInstance.year}</span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.reportStatus}">
				<li class="fieldcontain">
					<span id="reportStatus-label" class="property-label"><g:message code="report.reportStatus.label" default="Report Status" /></span>
					
						<span class="property-value" aria-labelledby="reportStatus-label"><g:fieldValue bean="${reportInstance}" field="reportStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.publicationStatus}">
				<li class="fieldcontain">
					<span id="publicationStatus-label" class="property-label"><g:message code="report.publicationStatus.label" default="Publication Status" /></span>
					
						<span class="property-value" aria-labelledby="publicationStatus-label"><g:fieldValue bean="${reportInstance}" field="publicationStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.officialVersion}">
				<li class="fieldcontain">
					<span id="officialVersion-label" class="property-label"><g:message code="report.officialVersion.label" default="Official Version" /></span>
					
						<span class="property-value" aria-labelledby="officialVersion-label"><g:formatBoolean boolean="${reportInstance?.officialVersion}" /></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${reportInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="report.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate format="dd-MMM-yyyy" date="${reportInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${reportInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="report.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate format="dd-MMM-yyyy" date="${reportInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
	
			</ol>
					<table>
				<thead>
					<tr>
						<th>Form</th>
						<th>#</th>
						<th>Description</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr class="odd">
						<td><g:message code="report.formAPart1.label" default="Form A Part 1" /></td>
						<td>${reportInstance?.formAPart1.size()}</td>
						<td>
							<g:each in="${reportInstance.formAPart1}" var="f">
								<g:link controller="formAPart1a" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link>,
							</g:each>
						</td>
							<td>
							<g:link controller="formAPart1a" ><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formAPart1b.label" default="Form A Part 1b" /></td>
						<td>0</td>
						<td>
							<g:link controller="formAPart1b" action="show" id="${reportInstance?.formAPart1b?.id}">${reportInstance?.formAPart1b?.encodeAsHTML()}</g:link>
						</td>
							<td>
							<g:link controller="formAPart1b" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formAPart2a.label" default="Form A Part 2a" /></td>
						<td>0</td>
						<td>
							<g:link controller="formAPart2a" action="show" id="${reportInstance?.formAPart2a?.id}">${reportInstance?.formAPart2a?.encodeAsHTML()}</g:link>
						</td>
							<td>
							<g:link controller="formAPart2a" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formAPart2b.label" default="Form A Part 2b" /></td>
						<td>0</td>
						<td>
							<g:link controller="formAPart2b" action="show" id="${reportInstance?.formAPart2b?.id}">${reportInstance?.formAPart2b?.encodeAsHTML()}</g:link>
						</td>
						<td>
							<g:link controller="formAPart2b" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formAPart2c.label" default="Form A Part 2c" /></td>
						<td>0</td>
						<td>
							<g:link controller="formAPart2c" action="show" id="${reportInstance?.formAPart2c?.id}">${reportInstance?.formAPart2c?.encodeAsHTML()}</g:link>
						</td>
						<td>
							<g:link controller="formAPart2c" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formB.label" default="Form B" /></td>
						<td>0</td>
						<td>
							<g:link controller="formB" action="show" id="${reportInstance?.formB?.id}">${reportInstance?.formB?.encodeAsHTML()}</g:link>
						</td>
						<td>
							<g:link controller="formB" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formC.label" default="Form C" /></td>
						<td>0</td>
						<td>
							<g:link controller="formC" action="show" id="${reportInstance?.formC?.id}">${reportInstance?.formC?.encodeAsHTML()}</g:link>
						</td>
						<td>
							<g:link controller="formC" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formE.label" default="Form E" /></td>
						<td>0</td>
						<td>
							<g:link controller="formE" action="show" id="${reportInstance?.formE?.id}">${reportInstance?.formE?.encodeAsHTML()}</g:link>
						</td>
						<td>
							<g:link controller="formE" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formF.label" default="Form F" /></td>
						<td>0</td>
						<td>
							<g:link controller="formF" action="show" id="${reportInstance?.formF?.id}">${reportInstance?.formF?.encodeAsHTML()}</g:link>
						</td>
						<td>
							<g:link controller="formF" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formG.label" default="Form G" /></td>
						<td>0</td>
						<td>
							<g:link controller="formG" action="show" id="${reportInstance?.formG?.id}">${reportInstance?.formG?.encodeAsHTML()}</g:link>
						</td>
						<td>
							<g:link controller="formG" action="create"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formZero.label" default="Form 0" /></td>
						<td>0</td>
						<td>
							<g:link controller="formZero" action="show" id="${reportInstance?.formZero?.id}">${reportInstance?.formZero?.encodeAsHTML()}</g:link>
							
						</td>
						<td>
							<g:link controller="formZero" action="create" params="[report: reportInstance]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					
				</tbody>
			</table>
			
	
			<g:form url="[resource:reportInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reportInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
