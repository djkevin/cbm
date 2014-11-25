
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
        <li>
            <g:link class="list"  action="show" id="${reportInstance?.id}">${reportInstance?.reportName}</g:link>
        </li>

    </ul>
</div>
<div id="show-report" class="content scaffold-show" role="main">
<h1><g:message code="default.review.label" args="[entityName]" /> - ${reportInstance.reportName}</h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:if test="${errors}">
    <g:if test="${errors?.status}">
        <ul class="errors" role="alert">
            <g:message code="report.submit.form.status.error" default="The following forms are in status DRAFT.." />
            <g:each in="${errors?.status}" var="status">
               <li>${status}</li>
            </g:each>
            %{--<g:eachError bean="${formZeroInstance}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
            %{--</g:eachError>--}%
        </ul>

        <g:each in="${errors?.status}" var="status">

        </g:each>
    </g:if>
</g:if>

<script type="text/javascript">
    //initialise all Jquery functions here, after DOM is fully constructed
    $(document).ready(function () {

        // all checkboxes within list-formZero div
        $("#cssTable input:radio").change(function () {
            var radioNameFull = $(this).attr("name");

            var arr = radioNameFull.split('_');
            if (arr.length >3){
                alert("Error retrieving names")
            }
            //name in the format type_name_id
            var type = arr[0]
            var name = arr[1]
            var id = arr[2]
            var value = $(this).attr("value");

            updateFormStatus(name, type, id, value)


        });
    });

    function updateFormStatus(name, type, id, value) {
        <g:remoteFunction controller="report" action="ajaxSaveFormStatus" onSuccess="displayMsg(data)" params="'name='+name+'&type='+type+'&id='+id+'&value='+value"/>
    }

    function displayMsg(data){
        $("#ajax-message").html(data.message).show().delay(2500).fadeOut();
    }
    function getSubmitText(){
        var confirmMsg = '${message(code: 'report.submit.confirm.msg', default: 'Are you sure?')}'+'\n'
        return confirmMsg;
    }

</script>


<br/>
%{--
<h1 id="clean"><g:message code="default.forms.list"/> - ${reportInstance.reportName}</h1>
<br/>--}%
<table id="cssTable">
<thead>
<tr>
    <th><g:message code="form.label" default="Form"/></th>
    <th>#</th>
    <th><g:message code="description.label" default="Description"/></th>

</tr>
</thead>
<tbody>
%{--<tr class="even">
    <td><g:message code="report.formZero.label" default="Form 0" /></td>
    <td>${reportInstance?.formZero ? 1:0}</td>
    --}%%{--    <td  class="noTable">
            <g:link controller="formZero" action="show" id="${reportInstance?.formZero?.id}">${reportInstance?.formZero?.encodeAsHTML()}</g:link>
        </td>--}%%{--
    <td>
        <g:if test="${reportInstance?.formZero}">
            <g:set var="forms" value="${reportInstance?.formZero}"></g:set>
            <g:set var="controller" value="formZero"/>
            <g:render template="formDetailReview"/>
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
</tr>--}%
<tr class="even">
    <td><g:message code="report.formAPart1.label" default="Form A Part 1" /></td>
    <td>${reportInstance?.formAPart1.size()}</td>
    <td>
        <g:if test="${reportInstance?.formAPart1}">
            <g:set var="forms" value="${reportInstance?.formAPart1}"></g:set>
            <g:set var="controller" value="formAPart1a"/>
            <g:set var="customTitle" value="${message(code: 'formAPart1.facilityName', default: 'Facility Name')}" />
            <g:render template="formDetailReview"/>
            <g:set var="customTitle" value="${null}" /> <!--reset the value-->
        </g:if>
    </td>

</tr>
<tr class="odd">
    <td><g:message code="report.formAPart1b.label" default="Form A Part 1b" /></td>
    <td>${reportInstance?.formAPart1b ? 1:0}</td>
    <td>
        <g:if test="${reportInstance?.formAPart1b}">
            <g:set var="forms" value="${reportInstance?.formAPart1b}"></g:set>
            <g:set var="controller" value="formAPart1b"/>
            <g:render template="formDetailReview"/>
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
            <g:render template="formDetailReview"/>
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
            <g:render template="formDetailReview"/>
            <g:set var="customTitle" value="${null}" /> <!--reset the value-->
        </g:if>
    </td>

</tr>
<tr class="even">
    <td><g:message code="report.formAPart2c.label" default="Form A Part 2c"/></td>
    <td>${reportInstance?.getFormAPart2cs()?.size()}</td>
    <td>
        <g:if test="${reportInstance?.getFormAPart2cs()}">
            <g:set var="forms" value="${reportInstance?.getFormAPart2cs()}"></g:set>
            <g:set var="controller" value="formAPart2c"/>
            <g:render template="formDetailReview"/>
        </g:if>
        <g:elseif test="${!reportInstance?.formAPart2b}">
            <span class="instructions">
                <g:message code="report.formAPart2c.create.message" default="Please create a Form A Part 2b"/>
            </span>
        </g:elseif>
    </td>

</tr>
<tr class="odd">
    <td><g:message code="report.formB.label" default="Form B" /></td>
    <td>${reportInstance?.formB?.size()}</td>
    <td>
        <g:if test="${reportInstance?.formB}">
            <g:set var="forms" value="${reportInstance?.formB}"></g:set>
            <g:set var="controller" value="formB"/>
            <g:render template="formDetailReview"/>
        </g:if>
        <g:else>
            <span class="instructions">
                <g:message code="report.formB.no.outbreak" default="No outbreak that seemingly deviates from the normal pattern"/>
            </span>
        </g:else>
    </td>

</tr>
<tr class="even">
    <td><g:message code="report.formC.label" default="Form C" /></td>
    <td>${reportInstance?.formC?.size()}</td>
    <td>
        <g:if test="${reportInstance?.formC}">
            <g:set var="forms" value="${reportInstance?.formC}"></g:set>
            <g:set var="controller" value="formC"/>
            <g:render template="formDetailReview"/>
        </g:if>
    </td>

</tr>
<tr class="odd">
    <td><g:message code="report.formE.label" default="Form E" /></td>
    <td>${reportInstance?.formE?.size()}</td>
    <td>
        <g:if test="${reportInstance?.formE}">
            <g:set var="forms" value="${reportInstance?.formE}"></g:set>
            <g:set var="controller" value="formE"/>
            <g:render template="formDetailReview"/>
        </g:if>
    </td>

</tr>
<tr class="even">
    <td><g:message code="report.formF.label" default="Form F" /></td>
    <td>${reportInstance?.formF?.size()}</td>
    <td>
        <g:if test="${reportInstance?.formF}">
            <g:set var="forms" value="${reportInstance?.formF}"></g:set>
            <g:set var="controller" value="formF"/>
            <g:render template="formDetailReview"/>
        </g:if>
    </td>

</tr>
<tr class="odd">
    <td><g:message code="report.formG.label" default="Form G" /></td>
    <td>${reportInstance?.formG?.size()}</td>
    <td>
        <g:if test="${reportInstance?.formG}">
            <g:set var="forms" value="${reportInstance?.formG}"></g:set>
            <g:set var="controller" value="formG"/>
            <g:render template="formDetailReview"/>
        </g:if>
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
<div class="message" id="ajax-message" style="display: none;"></div>

<fieldset class="buttons">
    <g:link class="submit" action="submit" resource="${reportInstance}" onclick="return confirm(getSubmitText())"><g:message code="default.button.submit.label" default="Submit"/></g:link>
</fieldset>

</body>
</html>
