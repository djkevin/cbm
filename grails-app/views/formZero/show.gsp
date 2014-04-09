
<%@ page import="cbm.FormZero" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formZero.label', default: 'FormZero')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formZero" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li>
                    <g:link class="list" controller="report" action="show" id="${formZeroInstance?.report?.id}">${formZeroInstance?.report?.reportName}</g:link>
                </li>
			%{--	<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			</ul>
		</div>
		<div id="show-formZero" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" />:<g:message code="formZero.long.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formZero">

                <g:if test="${formZeroInstance?.report}">
                    <li class="fieldcontain">
                        <span id="language-label" class="property-label"><g:message code="report.reportName.label" default="Report Name" /></span>
                        <span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${formZeroInstance}" field="report"/></span>
                    </li>
                </g:if>

                <br/>

                <g:render template="view"/>

      %{--          <br/>

                <div id="list-formZero" class="content scaffold-list" role="main">
                    <table>
                        <thead>
                        <tr>
                            <th><g:message code="formZero.form.label" default="Form" /></th>
                            <th><g:message code="formZero.nothingToDeclare.label" default="Nothing to declare" /></th>
                            <th><g:message code="formZero.nothingNewToDeclare.label" default="Nothing new to declare" /></th>
                            <th><g:message code="formZero.yearOfLastDeclaration.label" default="Year of last declaration" /></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><g:message code="formAPart1.label" default="Form A Part 1" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart1?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart1?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formAPart1?.yearOfLastDeclaration}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formAPart2a.label" default="Form A Part 2a" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart2a?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart2a?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formAPart2a?.yearOfLastDeclaration}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formAPart2b.label" default="Form A Part 2b"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart2b?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart2b?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formAPart2b?.yearOfLastDeclaration}</td>
                        </tr>

                        <tr>
                            <td><g:message code="formAPart2c.label" default="Form A Part 2c" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart2c?.nothingToDeclare}"/> </td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formAPart2c?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formAPart2c?.yearOfLastDeclaration}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formB.label" default="Form B" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formB?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formB?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formB?.yearOfLastDeclaration}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formC.label" default="Form C" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formC?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formC?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formC?.yearOfLastDeclaration}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formE.label" default="Form E" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formE?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formE?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formE?.yearOfLastDeclaration}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formF.label" default="Form F" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formF?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formF?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formF?.yearOfLastDeclaration}</td>
                        </tr>
                        <tr>
                            <td><g:message code="formG.label" default="Form G" /></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formG?.nothingToDeclare}"/></td>
                            <td><g:formatBoolean boolean="${formZeroInstance.formG?.nothingNewToDeclare}"/></td>
                            <td>${formZeroInstance.formG?.yearOfLastDeclaration}</td>
                        </tr>

                        </tbody>
                    </table>
                </div>--}%

                <g:set var="formInstance" value="${formZeroInstance}"></g:set>
                <g:render template="../showStatus"/>

			</ol>
			<g:form url="[resource:formZeroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formZeroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formZeroInstance}" target="_blank"
                            title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>
                    </g:link>
				</fieldset>
			</g:form>
		</div>


	</body>
</html>
