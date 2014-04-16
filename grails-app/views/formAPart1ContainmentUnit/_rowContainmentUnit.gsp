<g:each in="${formAPart1ContainmentUnitInstanceList}" status="i" var="formAPart1ContainmentUnitInstance">

    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
        <td>
            <g:select name="formAPart1ContainmentUnit.bioSafetyLevel"
                      from="${formAPart1ContainmentUnitInstance.constraints.bioSafetyLevel.inList}"
                      value="${formAPart1ContainmentUnitInstance?.bioSafetyLevel}"
                      valueMessagePrefix="formAPart1ContainmentUnit.bioSafetyLevel" noSelection="['': '']"/>
            <g:hiddenField name="formAPart1ContainmentUnitId" value="${formAPart1ContainmentUnitInstance.id}"/>
        </td>
        <td>
            <g:select name="formAPart1ContainmentUnit.unitType" from="${formAPart1ContainmentUnitInstance.constraints.unitType.inList}"
                      value="${formAPart1ContainmentUnitInstance?.unitType}"
                      valueMessagePrefix="formAPart1ContainmentUnit.unitType" noSelection="['': '']"/>
        </td>
        <td>
            <g:field name="formAPart1ContainmentUnit.unitSize" type="number" value="${formAPart1ContainmentUnitInstance.unitSize}" required=""/>
        </td>
        <td width="40%">
            <g:textField name="formAPart1ContainmentUnit.comment" class="inlineText"
                         maxlength="${formAPart1ContainmentUnitInstance?.constraints?.comment?.maxSize}"
                         value="${formAPart1ContainmentUnitInstance?.comment}"/>
        </td>
    </tr>
</g:each>