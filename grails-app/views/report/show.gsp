
<%@ page import="cbm.report.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <jqui:resources/>

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
                    <span id="report-label" class="property-label"><g:message code="report.reportName.label" default="Report Name"/></span>
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
      %{--  <div id="dialog-confirm" title="Empty the recycle bin?">
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>These items will be permanently deleted and cannot be recovered. Are you sure?</p>
        </div>--}%
            <script type="text/javascript">

        /*        function confirmDelete(){
                    $( "#dialog-confirm" ).dialog({
                        resizable: false,

                        modal: true,
                        buttons: {
                            "Delete all items": function() {
                                $( this ).dialog( "close" );
                            },
                            Cancel: function() {
                                $( this ).dialog( "close" );
                            }
                        }
                    });

                    return false;
                }*/

                function getDeleteText(){

                    var questionEmpty = '${message(code: 'report.empty.delete.confirm.msg', default: 'Are you sure?')}'+'\n'
                    var questionFull = '${message(code: 'report.full.delete.confirm.msg', default: 'Are you sure?')}'+'\n'

                    var deleteText ='';

                    var declarationForm = '${reportInstance?.formZero == null ? 0 : 1}'
                    if (declarationForm > 0) deleteText += '${message(code: 'report.formZero.label')}' + " : " + declarationForm +'\n'

                    var numFormAPart1a =  ${reportInstance.formAPart1.size()}
                    if (numFormAPart1a > 0) deleteText += '${message(code: 'formAPart1.facilities', default: 'Facilities')}' + " : " + numFormAPart1a +'\n'

                    var numFormAPart1b = ${reportInstance?.formAPart1b ? 1:0}
                    if (numFormAPart1b > 0) deleteText += '${message(code: 'formAPart1b.label')}' + " : " + numFormAPart1b +'\n'

                    var numFormAPart2a = ${reportInstance?.formAPart2a ? 1:0}
                    if (numFormAPart2a > 0) deleteText += '${message(code: 'formAPart2a.label')}' + " : " + numFormAPart2a +'\n'

                    var numFormAPart2b = ${reportInstance?.formAPart2b?.size()}
                    if (numFormAPart2b > 0) deleteText += '${message(code: 'formAPart2b.programmes')}' + " : " + numFormAPart2b +'\n'

                    var numFormAPart2c = ${(reportInstance?.getFormAPart2cs() != null) ? reportInstance?.getFormAPart2cs().size():0}
                    if (numFormAPart2c > 0) deleteText += '${message(code: 'formAPart2c.label')}' + " : " + numFormAPart2c +'\n'

                    var numFormB = ${reportInstance?.formB?.size()}
                    if (numFormB > 0) deleteText += '${message(code: 'formB.label')}' + " : " + numFormB +'\n'

                    var numFormC = ${reportInstance?.formC?.size()}
                    if (numFormC > 0) deleteText += '${message(code: 'formC.label')}' + " : " + numFormC +'\n'

                    var numFormE = ${reportInstance?.formE?.size()}
                    if (numFormE > 0) deleteText += '${message(code: 'formE.label')}' + " : " + numFormE +'\n'

                    var numFormF = ${reportInstance?.formF?.size()}
                    if (numFormF > 0) deleteText += '${message(code: 'formF.label')}' + " : " + numFormF +'\n'

                    var numFormG = ${reportInstance?.formG?.size()}
                    if (numFormG > 0) deleteText += '${message(code: 'formE.label')}' + " : " + numFormG +'\n'

                    if (deleteText.length > 0){
                        deleteText = questionFull + deleteText
                    }else {
                        deleteText = questionEmpty + deleteText
                    }

                    console.log(deleteText)
                    return deleteText;
                }
            </script>


            <!-- *-*-*-*-*-*-*-*-*-*-*-* action buttons *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->

            <g:form url="[resource:reportInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${reportInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm(getDeleteText());" />
                    %{--<g:link class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return getDeleteText();" ><g:message code="default.button.delete.label" default="Delete" /></g:link>--}%
                    <g:actionSubmit class="submit" action="" value="${message(code: 'default.button.submit.label', default: 'Submit')}" onclick="alert('${message(code: 'default.under.implementation.message', default: 'Feature under implementation')}');return false;" />
                    <g:link class="print" action="print" resource="${reportInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
                </fieldset>
            </g:form>
			<!-- *-*-*-*-*-*-*-*-*-*-*-* list of forms *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->
            <br/>
            <h1 id="clean"><g:message code="default.forms.list"/> - ${reportInstance.reportName}</h1>
            <br/>
			<table id="cssTable">
				<thead>
					<tr>
                        <th><g:message code="form.label" default="Form" /></th>
						<th>#</th>
                        <th><g:message code="description.label" default="Description" /></th>
						<th><g:message code="action.label" default="Action" /></th>
					</tr>
				</thead>
				<tbody>
                    <tr class="even">
                        <td><g:message code="report.formZero.label" default="Form 0" /></td>
                        <td>${reportInstance?.formZero ? 1:0}</td>
                    %{--    <td  class="noTable">
                            <g:link controller="formZero" action="show" id="${reportInstance?.formZero?.id}">${reportInstance?.formZero?.encodeAsHTML()}</g:link>
                        </td>--}%
                        <td>
                            <g:if test="${reportInstance?.formZero}">
                                <g:set var="forms" value="${reportInstance?.formZero}"></g:set>
                                <g:set var="controller" value="formZero"/>
                                <g:render template="../formDetail"/>
                            </g:if>
                        </td>
                        <td>
                            <g:if test="${!reportInstance?.formZero}">
                                <g:link controller="formZero" action="create" params="['report.id': reportInstance.id]">
                                    <i class="fa fa-plus-square-o"></i>
                                    <g:message code="default.button.create.label"/>
                                </g:link>
                            </g:if>
                        </td>
                    </tr>
                    <tr class="odd">
                        <td><g:message code="nationalContact.label" default="National Contact" /></td>
                        <td>${reportInstance?.stateParty?.nationalContact.size()}</td>
                        <td  class="noTable">
                            <g:each in="${reportInstance?.stateParty?.nationalContact}" var="f">
                                <g:link controller="nationalContact" action="show" id="${f.id}" params="['report.id':reportInstance?.id]">${f ? f.encodeAsHTML():''}</g:link>,
                            </g:each>
                        </td>
                        <td>
                            <g:link controller="nationalContact" action="create" params="['stateParty.id': reportInstance?.stateParty?.id, 'report.id':reportInstance?.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
                        </td>
                    </tr>
					<tr class="even">
						<td><g:message code="report.formAPart1.label" default="Form A Part 1" /></td>
						<td>${reportInstance?.formAPart1.size()}</td>
						<td>
                            <g:if test="${!reportInstance?.formAPart1}">
                                <g:set var="forms" value="${reportInstance?.formAPart1}"></g:set>
                                <g:set var="controller" value="formAPart1a"/>
                                <g:set var="customTitle" value="${message(code: 'formAPart1.facilityName', default: 'Facility Name')}" />
                                <g:render template="../formDetail"/>
                                <g:set var="customTitle" value="${null}" /> <!--reset the value-->
                            </g:if>
						</td>
						<td class="center">
                            <g:link controller="formAPart1a" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formAPart1b.label" default="Form A Part 1b" /></td>
						<td>${reportInstance?.formAPart1b ? 1:0}</td>
						<td>
                        <g:if test="${reportInstance?.formAPart1b}">
                            <g:set var="forms" value="${reportInstance?.formAPart1b}"></g:set>
                            <g:set var="controller" value="formAPart1b"/>
                            <g:render template="../formDetail"/>
                        </g:if>
                        </td>
                        %{--${reportInstance?.formAPart1b ? 1:0}</td>--}%
						%{--<td>--}%
							%{--<g:link controller="formAPart1b" action="show" id="${reportInstance?.formAPart1b?.id}">${reportInstance?.formAPart1b?.encodeAsHTML()}</g:link>--}%
						%{--</td>--}%
						<td>
                            <g:if test="${!reportInstance?.formAPart1b}">
							<g:link controller="formAPart1b" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
                            </g:if>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formAPart2a.label" default="Form A Part 2a" /></td>
						<td>${reportInstance?.formAPart2a ? 1:0}</td>
                        <td>
                            <g:if test="${reportInstance?.formAPart2a}">
                                <g:set var="forms" value="${reportInstance?.formAPart2a}"></g:set>
                                <g:set var="controller" value="formAPart2a"/>
                                <g:render template="../formDetail"/>
                            </g:if>
                        </td>
						<td>
                            <g:if test="${!reportInstance?.formAPart2a}">
                                <g:link controller="formAPart2a" action="create" params="['report.id': reportInstance.id]">
                                    <i class="fa fa-plus-square-o"></i>
                                    <g:message code="default.button.create.label"/>
                                </g:link>
                            </g:if>
						</td>
					</tr>
                    <tr class="odd">
                        <td><g:message code="report.formAPart2b.label" default="Form A Part 2b"/></td>
                        <td>${reportInstance?.formAPart2b?.size()}</td>
                        <td>
                            <g:if test="${reportInstance?.formAPart2b}">
                                <g:set var="forms" value="${reportInstance?.formAPart2b}"></g:set>
                                <g:set var="controller" value="formAPart2b"/>
                                <g:set var="customTitle" value="${message(code: 'formAPart2b.programme', default: 'Programme')}" />
                                <g:render template="../formDetail"/>
                                <g:set var="customTitle" value="${null}" /> <!--reset the value-->
                            </g:if>
                        </td>
                        <td>
                            <g:link controller="formAPart2b" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
                        </td>
                    </tr>
                    <tr class="even">
                        <td><g:message code="report.formAPart2c.label" default="Form A Part 2c"/></td>
                        <td>${reportInstance?.getFormAPart2cs()?.size()}</td>
                        <td>
                            <g:if test="${reportInstance?.getFormAPart2cs()}">
                                <g:set var="forms" value="${reportInstance?.getFormAPart2cs()}"></g:set>
                                <g:set var="controller" value="formAPart2c"/>
                                <g:render template="../formDetail"/>
                            </g:if>
                            <g:else>
                                <span class="instructions">
                                    <g:message code="report.formAPart2c.create.message" default="Please create a Form A Part 2b"/>
                                </span>
                            </g:else>
                        </td>
                        <td>
                            <g:link controller="formAPart2c" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
                        </td>
                    </tr>
					<tr class="odd">
						<td><g:message code="report.formB.label" default="Form B" /></td>
						<td>${reportInstance?.formB?.size()}</td>
						<td>
                            <g:if test="${reportInstance?.formB}">
                                <g:set var="forms" value="${reportInstance?.formB}"></g:set>
                                <g:set var="controller" value="formB"/>
                                <g:render template="../formDetail"/>
                            </g:if>
                            <g:else>
                                <span class="instructions">
                                    <g:message code="report.formB.no.outbreak" default="No outbreak that seemingly deviates from the normal pattern"/>
                                </span>
                            </g:else>
						</td>
						<td>
							<g:link controller="formB" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formC.label" default="Form C" /></td>
						<td>${reportInstance?.formC?.size()}</td>
						<td>
                            <g:if test="${reportInstance?.formC}">
                                <g:set var="forms" value="${reportInstance?.formC}"></g:set>
                                <g:set var="controller" value="formC"/>
                                <g:render template="../formDetail"/>
                            </g:if>
						</td>
						<td>
							<g:link controller="formC" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formE.label" default="Form E" /></td>
						<td>${reportInstance?.formE?.size()}</td>
						<td>
                            <g:if test="${reportInstance?.formE}">
                                <g:set var="forms" value="${reportInstance?.formE}"></g:set>
                                <g:set var="controller" value="formE"/>
                                <g:render template="../formDetail"/>
                            </g:if>
						</td>
						<td>
							<g:link controller="formE" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
						</td>
					</tr>
					<tr class="even">
						<td><g:message code="report.formF.label" default="Form F" /></td>
						<td>${reportInstance?.formF?.size()}</td>
						<td>
                            <g:if test="${reportInstance?.formF}">
                                <g:set var="forms" value="${reportInstance?.formF}"></g:set>
                                <g:set var="controller" value="formF"/>
                                <g:render template="../formDetail"/>
                            </g:if>
						</td>
						<td>
							<g:link controller="formF" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
						</td>
					</tr>
					<tr class="odd">
						<td><g:message code="report.formG.label" default="Form G" /></td>
						<td>${reportInstance?.formG?.size()}</td>
						<td>
                            <g:if test="${reportInstance?.formG}">
                                <g:set var="forms" value="${reportInstance?.formG}"></g:set>
                                <g:set var="controller" value="formG"/>
                                <g:render template="../formDetail"/>
                            </g:if>
						</td>
						<td>
							<g:link controller="formG" action="create" params="['report.id': reportInstance.id]">
                                <i class="fa fa-plus-square-o"></i>
                                <g:message code="default.button.create.label"/>
                            </g:link>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
    <div id="legend">
        <g:message code="status.legend" default="Legend"/>:
        <span> <i class="fa fa-pencil fa-border"></i><g:message code="status.draft" default="Draft"/>  </span>
        <span> <i class="fa fa-check fa-border"></i> <g:message code="status.completed" default="Completed"/></span>
        <span> <i class="fa fa-lock fa-border"></i> <g:message code="status.private" default="Private"/></span>
    </div>
	</body>
</html>
