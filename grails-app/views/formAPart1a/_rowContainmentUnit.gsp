<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="cbm.FormService" %>

<g:each in="${formAPart1ContainmentUnitInstanceList?.sort{it.created}}" status="i" var="formAPart1ContainmentUnitInstance">

    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
        <td style="display:none;">
            <g:hiddenField name="formAPart1ContainmentUnit.created" value="${new SimpleDateFormat(FormService.TIMESTAMP_FORMAT).format(formAPart1ContainmentUnitInstance?.created)}"  />            
         </td>
        <td>
            <g:select name="formAPart1ContainmentUnit.bioSafetyLevel"
                      from="${formAPart1ContainmentUnitInstance.constraints.bioSafetyLevel.inList}"
                      value="${formAPart1ContainmentUnitInstance?.bioSafetyLevel}"
                      valueMessagePrefix="formAPart1ContainmentUnit.bioSafetyLevel"/>
            <g:hiddenField class="cuId" name="formAPart1ContainmentUnitId"
                           value="${formAPart1ContainmentUnitInstance.id}"/>
        </td>
        <td>
            <g:select name="formAPart1ContainmentUnit.unitType"
                      from="${formAPart1ContainmentUnitInstance.constraints.unitType.inList}"
                      value="${formAPart1ContainmentUnitInstance?.unitType}"
                      valueMessagePrefix="formAPart1ContainmentUnit.unitType"/>
        </td>
        <td>
            <g:field name="formAPart1ContainmentUnit.unitSize" class="number" type="number"
                     value="${formAPart1ContainmentUnitInstance.unitSize}" required=""/>
        </td>
        <td width="45%">
            <g:textField name="formAPart1ContainmentUnit.comment" class="longText"
                         maxlength="${formAPart1ContainmentUnitInstance?.constraints?.comment?.maxSize}"
                         value="${formAPart1ContainmentUnitInstance?.comment}"/>
        </td>
        <td>			
            <a class="deleteLink" href="javascript:void(0);">
                <i class="fa fa-trash-o"></i>
                <g:message code="default.button.delete.label" default="Delete"/>
            </a>
        </td>
    </tr>
</g:each>