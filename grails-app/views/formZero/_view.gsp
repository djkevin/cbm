
%{--This template is referenced by the show view and the print view --}%
<h4><g:message code="formZero.declaration" default="Declaration form on Nothing to Declare" /></h4>
<br/>
<div id="list-formZero" class="content scaffold-list" role="main">
    <table>
        <thead>
        <tr>
            <th><g:message code="formZero.measure.label" default="Measure" /></th>
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
</div>