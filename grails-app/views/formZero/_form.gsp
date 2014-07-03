<%@ page import="cbm.form.FormZero" %>
<div class="fieldcontain ${hasErrors(bean: formZeroInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formZeroInstance?.report?.id}"/>
    <g:field type="text" name="report.name" value="${formZeroInstance?.report}" readonly="true"/>
</div>

<br/>
<script type="text/javascript">
    //initialise all Jquery functions here, after DOM is fully constructed
    $(document).ready(function () {

        // all checkboxes within list-formZero div
        $("#list-formZero input:checkbox").change(function () {
            var name1 = $(this).attr("name");


            var arr = name1.split('.');
            //name in the format formX.nothingToDeclare
            var nothingToDeclare = arr[0] + "." + "nothingToDeclare"
            var nothingNewToDeclare = arr[0] + "." + "nothingNewToDeclare"
            var yearOfLastDeclaration = arr[0] + "." + "yearOfLastDeclaration"

            if (this.checked) {
                if (arr[1] == "nothingToDeclare") {
                    $('[name="' + nothingNewToDeclare + '"]').attr('checked', false);
                    $('[name="' + yearOfLastDeclaration + '"]').val('');
                }

                if (arr[1] == "nothingNewToDeclare") {
                    $('[name="' + nothingToDeclare + '"]').attr('checked', false);
                }
            }/*else{
                if (arr[1] == "nothingToDeclare") {
                    $('[name="' + nothingNewToDeclare + '"]').prop('checked', true);
                }

                if (arr[1] == "nothingNewToDeclare") {
                    $('[name="' + nothingToDeclare + '"]').prop('checked', true);
                    $('[name="' + yearOfLastDeclaration + '"]').val('');
                }
            } */

        });
    });

</script>

<div id="list-formZero" class="content scaffold-list" role="main">
    <table>
        <thead>
        <tr>
            <th><g:message code="formZero.form.label" default="Form"/></th>
            <th><g:message code="formZero.nothingToDeclare.label" default="Nothing to declare"/></th>
            <th><g:message code="formZero.nothingNewToDeclare.label" default="Nothing new to declare"/></th>
            <th><g:message code="formZero.yearOfLastDeclaration.label" default="Year of last declaration"/></th>
        </tr>
        </thead>
        <tbody>
        <tr id="formAPart1">
            <td><g:message code="formAPart1.label" default="Form A Part 1"/></td>
            <td><g:checkBox name="formAPart1.nothingToDeclare" value="${formZeroInstance.formAPart1?.nothingToDeclare}" /></td>
            <td><g:checkBox name="formAPart1.nothingNewToDeclare" value="${formZeroInstance.formAPart1?.nothingNewToDeclare}"/></td>
            <td><g:select name="formAPart1.yearOfLastDeclaration"
                          from="${formZeroInstance.formAPart1?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formAPart1?.yearOfLastDeclaration}"
                          noSelection="['': '--']"/>
            </td>
        </tr>
        <tr>
            <td><g:message code="formAPart2a.label" default="Form A Part 2a"/></td>
            <td><g:checkBox name="formAPart2a.nothingToDeclare" value="${formZeroInstance.formAPart2a?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formAPart2a.nothingNewToDeclare" value="${formZeroInstance.formAPart2a?.nothingNewToDeclare}"/></td>
            <td><g:select name="formAPart2a.yearOfLastDeclaration"
                          from="${formZeroInstance?.formAPart2a?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formAPart2a?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/></td>
        </tr>
        <tr>
            <td><g:message code="formAPart2b.label" default="Form A Part 2b"/></td>
            <td><g:checkBox name="formAPart2b.nothingToDeclare" value="${formZeroInstance.formAPart2b?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formAPart2b.nothingNewToDeclare" value="${formZeroInstance.formAPart2b?.nothingNewToDeclare}"/></td>
            <td><g:select name="formAPart2b.yearOfLastDeclaration"
                          from="${formZeroInstance?.formAPart2b?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formAPart2b?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/></td>
        </tr>

        <tr>
            <td><g:message code="formAPart2c.label" default="Form A Part 2c"/></td>
            <td><g:checkBox name="formAPart2c.nothingToDeclare" value="${formZeroInstance.formAPart2c?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formAPart2c.nothingNewToDeclare" value="${formZeroInstance.formAPart2c?.nothingNewToDeclare}"/></td>
            <td><g:select name="formAPart2c.yearOfLastDeclaration"
                          from="${formZeroInstance?.formAPart2c?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formAPart2c?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/>
            </td>
        </tr>
        <tr>
            <td><g:message code="formB.label" default="Form B"/></td>
            <td><g:checkBox name="formB.nothingToDeclare" value="${formZeroInstance.formB?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formB.nothingNewToDeclare" value="${formZeroInstance.formB?.nothingNewToDeclare}"/></td>
            <td><g:select name="formB.yearOfLastDeclaration"
                          from="${formZeroInstance.formB?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formB?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/>
            </td>
        </tr>
        <tr>
            <td><g:message code="formC.label" default="Form C"/></td>
            <td><g:checkBox name="formC.nothingToDeclare" value="${formZeroInstance.formC?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formC.nothingNewToDeclare" value="${formZeroInstance.formC?.nothingNewToDeclare}"/></td>
            <td><g:select name="formC.yearOfLastDeclaration"
                          from="${formZeroInstance.formC?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formC?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/>
            </td>
        </tr>
        <tr>
            <td><g:message code="formE.label" default="Form E"/></td>
            <td><g:checkBox name="formE.nothingToDeclare" value="${formZeroInstance.formE?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formE.nothingNewToDeclare" value="${formZeroInstance.formE?.nothingNewToDeclare}"/></td>
            <td><g:select name="formE.yearOfLastDeclaration"
                          from="${formZeroInstance.formE?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formE?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/>
            </td>
        </tr>
        <tr>
            <td><g:message code="formF.label" default="Form F"/></td>
            <td><g:checkBox name="formF.nothingToDeclare" value="${formZeroInstance.formF?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formF.nothingNewToDeclare" value="${formZeroInstance.formF?.nothingNewToDeclare}"/></td>
            <td><g:select name="formF.yearOfLastDeclaration"
                          from="${formZeroInstance.formF?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formF?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/>
            </td>
        </tr>
        <tr>
            <td><g:message code="formG.label" default="Form G"/></td>
            <td><g:checkBox name="formG.nothingToDeclare" value="${formZeroInstance.formG?.nothingToDeclare}"/></td>
            <td><g:checkBox name="formG.nothingNewToDeclare" value="${formZeroInstance.formG?.nothingNewToDeclare}"/></td>
            <td><g:select name="formG.yearOfLastDeclaration"
                          from="${formZeroInstance.formG?.constraints.yearOfLastDeclaration?.range}"
                          class="range"
                          value="${formZeroInstance.formG?.yearOfLastDeclaration}"
                          noSelection="${['': '--']}"/>
            </td>
        </tr>

        </tbody>
    </table>
</div>

<g:set var="formInstance" value="${formZeroInstance}"></g:set>
<g:render template="../formStatus"/>
