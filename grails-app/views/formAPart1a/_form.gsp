<%@ page import="cbm.form.FormAPart1a" %>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label">
        <g:message code="report.label" default="Report"/>
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formAPart1aInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formAPart1aInstance?.report}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'facilityName', 'error')} required">
	<label for="facilityName">
		<g:message code="formAPart1.facilityName.label" default="Facility Name" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textField class="longText" name="facilityName" maxlength="${formAPart1aInstance?.constraints?.facilityName?.maxSize}" required="" value="${formAPart1aInstance?.facilityName}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'responsibleOrganisation', 'error')} required">
	<label for="responsibleOrganisation">
		<g:message code="formAPart1.responsibleOrganisation.label" default="Responsible Organisation" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea class="longTextSml" name="responsibleOrganisation" cols="40" rows="5" maxlength="${formAPart1aInstance?.constraints?.responsibleOrganisation?.maxSize}" required="" value="${formAPart1aInstance?.responsibleOrganisation}"/></div>

<div
        class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'location', 'error')} required">
    <label for="location"> <g:message
            code="formAPart1.location.label" default="Location" /> <span
            class="required-indicator">*</span>
    </label>
</div>
<div>
    <g:textArea class="twoCol" name="location" cols="40" rows="5"
                maxlength="${formAPart1aInstance?.constraints?.location?.maxSize}" required="" value="${formAPart1aInstance?.location}" />
</div>
%{--
<div class="wrapper">
	<div class="left1">

	</div>
--}%
%{--	<div class="left2">
		<div
			class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'postalAddress', 'error')} required">
			<label for="postalAddress"> <g:message
					code="formAPart1.postalAddress.label" default="Postal Address" />
				<span class="required-indicator">*</span>
			</label>
		</div>
		<div>
			<g:textArea class="twoCol" name="postalAddress" cols="40" rows="5"
				maxlength="${formAPart1aInstance?.constraints?.postalAddress?.maxSize}" required=""
				value="${formAPart1aInstance?.postalAddress}" />
		</div>
	</div>--}%%{--

</div>
--}%

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'financingSources', 'error')} required">
	<label for="financingSources">
		<g:message code="formAPart1.financingSources.label" default="Financing Sources" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textArea class="longTextSml" name="financingSources" cols="40" rows="5" maxlength="${formAPart1aInstance?.constraints?.financingSources?.maxSize}" required="" value="${formAPart1aInstance?.financingSources}"/></div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'formAContainmentUnitList', 'error')} ">
    <label for="formAContainmentUnitList">
        <g:message code="formAPart1.formAContainmentUnitList.label" default="Form A Containment Unit List" />

    </label>
</div>

<script type="text/javascript">

    function appendRows(html) {
        $('#formAContainmentUnitLisTbl > tbody:last').append(html);
    }

    //initialise all Jquery functions here, after DOM is fully constructed
    $(document).ready(function(){

        //Fetch element with the formAContainmentUnitLisTbl, and attach an onClick event to the element within which has the deleteLink CSS selector
        $("#formAContainmentUnitLisTbl").on('click','.deleteLink',function(){

            //Get the tr enclosing the td with the deleteLink selector, and change its background color
            var tr = $(this).closest('tr');
            tr.css("background-color","#FF3700");

            //check if this row was already persisted or if it is a new row
            var id = tr.find('.cuId').val();

            if (id){
                if (confirm("Are you sure?")) {
                    <g:remoteFunction  action="deleteContainmentUnit" onSuccess="removeRow(tr);displayMsg(data)" params="'id='+id"/>
                }
            }else{
                //non-persisted row,remove from DOM only
                removeRow(tr);
            }
        });
    });

    function displayMsg(data){
        $("#ajax-message").html(data.message).show().delay(2500).fadeOut();
    }
    function removeRow(tr){
        tr.fadeOut(400, function(){
            tr.remove();
        });
    }

</script>

<div>
    <table id="formAContainmentUnitLisTbl">
        <thead>
        <tr>

            <g:sortableColumn property="bioSafetyLevel" title="${message(code: 'formAPart1ContainmentUnit.bioSafetyLevel.label', default: 'Bio Safety Level')}" />

            <g:sortableColumn property="unitType" title="${message(code: 'formAPart1ContainmentUnit.unitType.label', default: 'Unit Type')}" />

            <g:sortableColumn property="unitSize" title="${message(code: 'formAPart1ContainmentUnit.unitSize.label', default: 'Unit Size (sqM)')}" />

            <g:sortableColumn property="comment" title="${message(code: 'formAPart1ContainmentUnit.comment.label', default: 'Comment')}" />

            <g:sortableColumn property="delete" title="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />

        </tr>
        </thead>
        <tbody >
            <g:set var="formAPart1ContainmentUnitInstanceList" value="${formAPart1aInstance?.formAContainmentUnitList}"></g:set>
            <g:render template="../formAPart1ContainmentUnit/rowContainmentUnit" />
        </tbody>
    </table>
    <div  class="message" id="ajax-message" style="display: none"></div>

    <g:remoteLink id="addRowsLink" action="addMoreRows" update=""  onSuccess="appendRows(data)">
        <i class="fa fa-plus-square-o"></i>
        ${message(code: 'default.add.label', args: [message(code: 'formAPart1.containmentUnit', default: 'Containment Unit')])}
    </g:remoteLink>

</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1aInstance, field: 'scope', 'error')} required long">
	<label for="scope">
		<g:message code="formAPart1.scope.label" default="Scope" />
	</label>
</div>
<div><g:textArea class="wysiwyg" name="scope" cols="40" rows="5" maxlength="${formAPart1aInstance?.constraints?.scope?.maxSize}" required="" value="${formAPart1aInstance?.scope}"/></div>

<g:set var="formInstance" value="${formAPart1aInstance}"></g:set>
<g:render template="../formStatus"/>