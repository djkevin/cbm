<table>
    <thead>
    <tr>
        <g:sortableColumn property="bioSafetyLevel"
                          title="${message(code: 'formAPart1ContainmentUnit.bioSafetyLevel.label', default: 'Bio Safety Level')}"/>

        <g:sortableColumn property="unitType"
                          title="${message(code: 'formAPart1ContainmentUnit.unitType.label', default: 'Unit Type')}"/>

        <g:sortableColumn property="unitSize"
                          title="${message(code: 'formAPart1ContainmentUnit.unitSize.label', default: 'Unit Size')}"/>

        <g:sortableColumn property="comment"
                          title="${message(code: 'formAPart1ContainmentUnit.comment.label', default: 'Comment')}"/>
    </tr>
    </thead>
    <tbody>
    <g:each in="${formAPart1ContainmentUnitInstanceList}" status="i" var="formAPart1ContainmentUnitInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "bioSafetyLevel")}</td>

            <td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "unitType")}</td>

            <td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "unitSize")}</td>

            <td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "comment")}</td>
        </tr>
    </g:each>
    </tbody>
</table>