<%@ page import="cbm.FormZero" %>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="formC.report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="report" name="report.id" from="${cbm.Report.list()}" optionKey="id" required="" value="${formZeroInstance?.report?.id}" class="many-to-one"/>
</div>
<br/>
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
            <td><g:checkBox name="formAPart1.nothingToDeclare" value="${formZeroInstance.formAPart1?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formAPart1.nothingNewToDeclare" value="${formZeroInstance.formAPart1?.nothingNewToDeclare}" /></td>
            <td><g:select name="formAPart1.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formAPart1?.yearOfLastDeclaration}" /></td> <!--noSelection="[null:'-Select year-']"-->
        </tr>
        <tr>
            <td><g:message code="formAPart2a.label" default="Form A Part 2a" /></td>
            <td><g:checkBox name="formAPart2a.nothingToDeclare" value="${formZeroInstance.formAPart2a?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formAPart2a.nothingNewToDeclare" value="${formZeroInstance.formAPart2a?.nothingNewToDeclare}" /></td>
            <td><g:select name="formAPart2a.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formAPart2a?.yearOfLastDeclaration}"/></td>
        </tr>
        <tr>
            <td><g:message code="formAPart2b.label" default="Form A Part 2b" /></td>
            <td><g:checkBox name="formAPart2b.nothingToDeclare" value="${formZeroInstance.formAPart2b?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formAPart2b.nothingNewToDeclare" value="${formZeroInstance.formAPart2b?.nothingNewToDeclare}" /></td>
            <td><g:select name="formAPart2b.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formAPart2b?.yearOfLastDeclaration}"/></td>
        </tr>

        <tr>
            <td><g:message code="formAPart2c.label" default="Form A Part 2c" /></td>
            <td><g:checkBox name="formAPart2c.nothingToDeclare" value="${formZeroInstance.formAPart2c?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formAPart2c.nothingNewToDeclare" value="${formZeroInstance.formAPart2c?.nothingNewToDeclare}" /></td>
            <td><g:select name="formAPart2c.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formAPart2c?.yearOfLastDeclaration}"/></td>
        </tr>
        <tr>
            <td><g:message code="formB.label" default="Form B" /></td>
            <td><g:checkBox name="formB.nothingToDeclare" value="${formZeroInstance.formB?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formB.nothingNewToDeclare" value="${formZeroInstance.formB?.nothingNewToDeclare}" /></td>
            <td><g:select name="formB.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formB?.yearOfLastDeclaration}"/></td>
        </tr>
        <tr>
            <td><g:message code="formC.label" default="Form C" /></td>
            <td><g:checkBox name="formC.nothingToDeclare" value="${formZeroInstance.formC?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formC.nothingNewToDeclare" value="${formZeroInstance.formC?.nothingNewToDeclare}" /></td>
            <td><g:select name="formC.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formC?.yearOfLastDeclaration}"/></td>
        </tr>
        <tr>
            <td><g:message code="formE.label" default="Form E" /></td>
            <td><g:checkBox name="formE.nothingToDeclare" value="${formZeroInstance.formE?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formE.nothingNewToDeclare" value="${formZeroInstance.formE?.nothingNewToDeclare}" /></td>
            <td><g:select name="formE.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formE?.yearOfLastDeclaration}"/></td>
        </tr>
        <tr>
            <td><g:message code="formF.label" default="Form F" /></td>
            <td><g:checkBox name="formF.nothingToDeclare" value="${formZeroInstance.formF?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formF.nothingNewToDeclare" value="${formZeroInstance.formF?.nothingNewToDeclare}" /></td>
            <td><g:select name="formF.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formF?.yearOfLastDeclaration}"/></td>
        </tr>
        <tr>
            <td><g:message code="formG.label" default="Form G" /></td>
            <td><g:checkBox name="formG.nothingToDeclare" value="${formZeroInstance.formG?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formG.nothingNewToDeclare" value="${formZeroInstance.formG?.nothingNewToDeclare}" /></td>
            <td><g:select name="formG.yearOfLastDeclaration" from="${2000..2050}" class="range" required="" value="${formZeroInstance.formG?.yearOfLastDeclaration}"/></td>
        </tr>

    </tbody>
</table>
</div>

<g:set var="formInstance" value="${formZeroInstance}"></g:set>
<g:render template="../formStatus"/>
