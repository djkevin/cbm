<%@ page import="cbm.form.FormAPart2b" %>
<%@ defaultCodec="none" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2b.label', default: 'FormAPart2b')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formAPart2b" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>

                <li>
                    <g:link class="list" controller="report" action="show" id="${formAPart2bInstance?.report?.id}">${formAPart2bInstance?.report?.reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="show-formAPart2b" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formAPart2b.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			<ol class="property-list formAPart2b">

                <g:if test="${formAPart2bInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.label" default="Report" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formAPart2bInstance}" field="report"/></span>
                    </li>
                </g:if>

				<g:if test="${formAPart2bInstance?.programName}">
                    <li class="fieldcontain">
                        <span id="programName-label" class="property-label"><g:message code="formAPart2b.programName.label" default="Program Name" /></span>

                        <span class="property-value" aria-labelledby="programName-label"><g:fieldValue bean="${formAPart2bInstance}" field="programName"/></span>

                    </li>
                    <br/>
				</g:if>

			
				<g:if test="${formAPart2bInstance?.objectives}">
                    <h4><g:message code="formAPart2b.objectives.label" default="Objectives" /></h4>
                    <li>
                        <span class="property-value" aria-labelledby="objectives-label">${formAPart2bInstance.objectives}</span>
                    </li>
                    <br/>
				</g:if>

                <g:if test="${formAPart2bInstance?.source}">
                    <h4><g:message code="formAPart2b.funding.label" default="Source" /></h4>
                    <li class="fieldcontain">
                        <span id="source-label" class="property-label"><g:message code="formAPart2b.source.label" default="Source" /></span>

                        <span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${formAPart2bInstance}" field="source"/></span>

                    </li>
                </g:if>

                <g:if test="${formAPart2bInstance?.amount}">

                    <li class="fieldcontain">
                        <span class="property-label"><g:message code="formAPart2b.amount.label" default="Amount"/></span>
                        <span class="property-value" aria-labelledby="amount-label">
                            <g:fieldValue bean="${formAPart2bInstance}" field="amount"/>
                            <g:fieldValue bean="${formAPart2bInstance}" field="currency"/>
                        </span>
                    </li>
                    <br/>
                </g:if>

                <g:if test="${formAPart2bInstance?.fundingSourceRemarks}">
                    <h4>2.3 <g:message code="default.additional.comments.label" default="Additional Comments" /></h4>
                    <li>
                        <span class="property-value" aria-labelledby="fundingSourceRemarks-label">${formAPart2bInstance.fundingSourceRemarks}</span>
                    </li>
                    <br/>
                </g:if>

				%{--<g:if test="${formAPart2bInstance?.conductedUnderContract}">--}%
                    <h4><g:message code="formAPart2b.conductedUnderContract.label" default="Conducted Under Contract" /></h4>
                    <li>
                        <span class="property-value" aria-labelledby="conductedUnderContract-label"><g:formatBoolean boolean="${formAPart2bInstance?.conductedUnderContract}" /></span>
                    </li>
                    <br/>
				%{--</g:if>--}%
			
				<g:if test="${formAPart2bInstance?.proportionContracted}">
                    <h4><g:message code="formAPart2b.proportionContracted.label" default="Proportion Contracted" /></h4>
				    <li>
						<span class="property-value" aria-labelledby="proportionContracted-label">${formAPart2bInstance.proportionContracted}</span>
				    </li>
                    <br/>
				</g:if>
			
				<g:if test="${formAPart2bInstance?.summaryObjectivesContractor}">
                    <h4><g:message code="formAPart2b.summaryObjectivesContractor.label" default="Summary Objectives Contractor" /></h4>
				    <li>
						<span class="property-value" aria-labelledby="summaryObjectivesContractor-label">${formAPart2bInstance.summaryObjectivesContractor}</span>
				    </li>
                    <br/>
				</g:if>
			
              <h4><g:message code="formAPart2b.organisationalStructureDiagram.label" default="Organisational Structure Diagram" /></h4>
              <div style="width:100%">
                    <g:if test="${formAPart2bInstance?.formAPart2bOrganigram}">
                        <g:link action="displayImage" target="_blank" params="['formAPart2bOrganigram.id': formAPart2bInstance.formAPart2bOrganigram.id]">${formAPart2bInstance.formAPart2bOrganigram.fileName}</g:link>
                      %{--<img style="width:100%" src="${createLink(controller:'image', id:formAPart2bInstance?.formAPart2bOrganigram?.id, params:[fieldName:'organisationalStructureDiagram', classname:'cbm.form.FormAPart2bOrganigram',mime:'image/jpeg'])}"/>--}%
                  </g:if>
                    <g:else>
                    %{--[<g:link controller="formAPart2bOrganigram" action="create" params="['formAPart2b.id': formAPart2bInstance?.id]"><g:message code="default.button.create.label"/></g:link>]--}%
                        <g:message code="formAPart2b.orgStructureDiagram.no.file" default="No file uploaded yet"/>

                    </g:else>
                  <br/><br/>
              </div>

                <g:if test="${formAPart2bInstance?.organigramDescription}">
                    <h4>6.1 <g:message code="formAPart2b.organigramDescription.label" default="Description"/></h4>
                    <li>
                        <span class="property-value" aria-labelledby="summaryObjectivesContractor-label">${formAPart2bInstance.organigramDescription}</span>
                    </li>
                    <br/>
                </g:if>


                <g:if test="${formAPart2bInstance?.formAPart2c}">
                    <li>
                        <span class="property-label-b"><g:message code="formAPart2b.formAPart2c.label" default="Form A Part 2c" /></span>
                    </li>
                    <ul class="one-to-many">
                    <g:each in="${formAPart2bInstance.formAPart2c}" var="f">
                        <li>
                        <g:link controller="formAPart2c" action="show"  params="['formAPart2b.id': formAPart2bInstance?.id]" id="${f.id}" >${f?.encodeAsHTML()}</g:link>
                        </li>
                    </g:each>
				</ul>
				</g:if>


                <g:set var="formInstance" value="${formAPart2bInstance}"></g:set>
                <g:render template="../showStatus"/>
			
			</ol>
			<g:form url="[resource:formAPart2bInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart2bInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formAPart2bInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
				</fieldset>
			</g:form>
            <sec:ifAnyGranted roles="ROLE_SUBMITTER, ROLE_ADMIN">
                <ol class="property-list correspondent">
                    <g:render template="../auditLog/audit" model="['objInstance': formAPart2bInstance]"/>
                </ol>
            </sec:ifAnyGranted>
		</div>
	</body>
</html>
