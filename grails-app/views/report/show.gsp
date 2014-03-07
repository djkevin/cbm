
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
                <li><g:link class="create" action="create" params="['stateParty.id':reportInstance.stateParty.id]"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
		</div>
		<div id="show-report" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /> - ${reportInstance.reportName}</h1>
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
					<span id="language-label" class="property-label"><g:message code="language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${reportInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="year.label" default="Year" /></span>
					
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
					<span id="dateCreated-label" class="property-label"><g:message code="dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate format="dd-MMM-yyyy" date="${reportInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${reportInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate format="dd-MMM-yyyy" date="${reportInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
	
			</ol>

            <!-- *-*-*-*-*-*-*-*-*-*-*-* action buttons *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->

            <g:form url="[resource:reportInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${reportInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:actionSubmit class="submit" action="" value="${message(code: 'default.button.submit.label', default: 'Submit')}" onclick="alert('${message(code: 'default.under.implementation.message', default: 'Feature under implementation')}');return false;" />
                    <g:actionSubmit class="print" action="" value="${message(code: 'default.button.print.label', default: 'Print')}" onclick="alert('${message(code: 'default.under.implementation.message', default: 'Feature under implementation')}');return false;" />
                </fieldset>
            </g:form>
			<!-- *-*-*-*-*-*-*-*-*-*-*-* list of forms *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
            <br/>
            <h1 id="clean"><g:message code="default.forms.list"/> - ${reportInstance.reportName}</h1>
            <br/>
			<table>
				<thead>
					<tr>
                        <th><g:message code="form.label" default="Form" /></th>
						<th>#</th>
                        <th><g:message code="description.label" default="Description" /></th>
						<th><g:message code="action.label" default="Action" /></th>
					</tr>
				</thead>
				<tbody>
					<tr class="odd">
						<td><g:message code="report.formAPart1.label" default="Form A Part 1" /></td>
						<td>${reportInstance?.formAPart1.size()}</td>
						<td>
                            <g:if test="${reportInstance?.formAPart1 != null}">
                            <table id="inner-table">
                                <g:each in="${reportInstance.formAPart1}" var="f">
                                <tr>
                                    <td width="90%"><g:link controller="formAPart1a" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link></td>

                                    <!-- Draft or completed-->
                                    <g:if test="${f.formStatus.equalsIgnoreCase("draft")}">
                                        <td><img src="${resource(dir: 'images/skin', file: 'pen_alt_fill_12x12.png')}" alt="draft"/></td>
                                    </g:if>
                                    <g:else>
                                        <td><img src="${resource(dir: 'images/skin', file: 'check_12x10.png')}" alt="draft"/></td>
                                    </g:else>

                                    <!-- Private or public -->
                                    <g:if test="${f.visibility.equalsIgnoreCase("private")}">
                                        <td><img src="${resource(dir: 'images/skin', file: 'lock_fill_9x12.png')}" alt="draft"/></td>
                                    </g:if>
                                    <g:else>
                                        <td>&nbsp;</td>
                                    </g:else>

                                </tr>
                                </g:each>
                            </table>
                            </g:if>
						</td>
						<td>
                            <g:link controller="formAPart1a" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
       %{--             <tr class="odd">
						<td><g:message code="report.formAPart1.label" default="Form A Part 1" /></td>
						<td>${reportInstance?.formAPart1.size()}</td>
						<td>
							<g:each in="${reportInstance.formAPart1}" var="f">
								<g:link controller="formAPart1a" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link>,
							</g:each>
						</td>
						<td>
                            <g:link controller="formAPart1a" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>--}%
					<tr class="even">
						<td><g:message code="report.formAPart1b.label" default="Form A Part 1b" /></td>
						<td>${reportInstance?.formAPart1b ? 1:0}</td>
						<td>
							<g:link controller="formAPart1b" action="show" id="${reportInstance?.formAPart1b?.id}">${reportInstance?.formAPart1b?.encodeAsHTML()}</g:link>
						</td>
						<td>
                            <g:if test="${reportInstance?.formAPart1b == null}">
							<g:link controller="formAPart1b" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
                            </g:if>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formAPart2a.label" default="Form A Part 2a" /></td>
						<td>${reportInstance?.formAPart2a ? 1:0}</td>
						<td>
							<g:link controller="formAPart2a" action="show" id="${reportInstance?.formAPart2a?.id}">${reportInstance?.formAPart2a?.encodeAsHTML()}</g:link>
						</td>
							<td>
                            <g:if test="${reportInstance?.formAPart2a == null}">
							<g:link controller="formAPart2a" action="create"><g:message code="default.button.create.label"/></g:link>
                            </g:if>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formAPart2b.label" default="Form A Part 2b" /></td>
						<td>${reportInstance?.formAPart2b?.size()}</td>
						<td>
                 %{--           <g:each in="${reportInstance.formAPart2b}" var="f">
                                <g:link controller="formAPart2b" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link>

                            </g:each>--}%
                            <g:if test="${reportInstance?.formAPart2b != null}">
                                <table id="inner-table">
                                    <g:each in="${reportInstance.formAPart2b}" var="f">
                                        <tr>
                                            <td style="width:90%"><g:link controller="formAPart2b" action="edit" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link></td>

                                        <!-- Draft or completed-->
                                            <g:if test="${f.formStatus.equalsIgnoreCase("draft")}">
                                                <td><img src="${resource(dir: 'images/skin', file: 'pen_alt_fill_12x12.png')}" alt="draft"/></td>
                                            </g:if>
                                            <g:else>
                                                <td><img src="${resource(dir: 'images/skin', file: 'check_12x10.png')}" alt="completed"/></td>
                                            </g:else>

                                        <!-- Private or public -->
                                            <g:if test="${f.visibility.equalsIgnoreCase("private")}">
                                                <td><img src="${resource(dir: 'images/skin', file: 'lock_fill_9x12.png')}" alt="private"/></td>
                                            </g:if>
                                            <g:else>
                                                <td>&nbsp;</td>
                                            </g:else>

                                        </tr>
                                    </g:each>
                                </table>
                            </g:if>

						</td>
						<td>
                            <g:link controller="formAPart2b" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formAPart2c.label" default="Form A Part 2c" /></td>
						<td>${reportInstance?.formAPart2b?.formAPart2c?.size()}</td>
						<td>
                            <g:each in="${reportInstance.formAPart2b}" var="f">
                            	<g:each in="${f.formAPart2c}" var="Ap2c">
                                	<g:link controller="formAPart2c" action="show" id="${Ap2c.id}">${Ap2c ? Ap2c.encodeAsHTML():''}</g:link>,
                                </g:each>
                            </g:each>
						</td>
						<td>
							<g:link controller="formAPart2c" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>							
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formB.label" default="Form B" /></td>
						<td>${reportInstance?.formB?.size()}</td>
						<td>
                            <g:each in="${reportInstance.formB}" var="f">
                                <g:link controller="formB" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link>,
                            </g:each>
						</td>
						<td>
							<g:link controller="formB" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formC.label" default="Form C" /></td>
						<td>${reportInstance?.formC?.size()}</td>
						<td>
                            <g:each in="${reportInstance.formC}" var="f">
                                <g:link controller="formC" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link>,
                            </g:each>
						</td>
						<td>
							<g:link controller="formC" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formE.label" default="Form E" /></td>
						<td>${reportInstance?.formE?.size()}</td>
						<td>
                            <g:each in="${reportInstance.formE}" var="f">
                                <g:link controller="formE" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link>,
                            </g:each>
						</td>
						<td>
							<g:link controller="formE" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formF.label" default="Form F" /></td>
						<td>${reportInstance?.formF?.size()}</td>
						<td>
                            <g:each in="${reportInstance.formF}" var="f">
                                <g:link controller="formF" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link>,
                            </g:each>
						</td>
						<td>
							<g:link controller="formF" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formG.label" default="Form G" /></td>
						<td>${reportInstance?.formG?.size()}</td>
						<td>
                            <g:each in="${reportInstance.formG}" var="f">
                                <g:link controller="formG" action="show" id="${f.id}">${f ? f.encodeAsHTML():''}</g:link>,
                            </g:each>
						</td>
						<td>
							<g:link controller="formG" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formZero.label" default="Form 0" /></td>
						<td>${reportInstance?.formZero ? 1:0}</td>
						<td>
							<g:link controller="formZero" action="show" id="${reportInstance?.formZero?.id}">${reportInstance?.formZero?.encodeAsHTML()}</g:link>
							
						</td>
						<td>
                            <g:if test="${reportInstance?.formZero == null}">
							<g:link controller="formZero" action="create" params="['reportId': reportInstance.id]"><g:message code="default.button.create.label"/></g:link>
                            </g:if>
						</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</body>
</html>
