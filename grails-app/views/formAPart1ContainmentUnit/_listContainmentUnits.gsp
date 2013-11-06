<table>
<thead>
		<tr>
		
			<g:sortableColumn property="bioSafetyLevel" title="${message(code: 'formAPart1ContainmentUnit.bioSafetyLevel.label', default: 'Bio Safety Level')}" />
		
			<g:sortableColumn property="unitType" title="${message(code: 'formAPart1ContainmentUnit.unitType.label', default: 'Unit Type')}" />
		
			<g:sortableColumn property="unitSize" title="${message(code: 'formAPart1ContainmentUnit.unitSize.label', default: 'Unit Size')}" />
		
			<g:sortableColumn property="comment" title="${message(code: 'formAPart1ContainmentUnit.comment.label', default: 'Comment')}" />
			
			<g:if test="${formAPart1Instance}">
                <th></th>
            </g:if>
		
		</tr>
	</thead>
	<tbody>
	<g:each in="${formAPart1ContainmentUnitInstanceList}" status="i" var="formAPart1ContainmentUnitInstance">
		<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
		
			<td>
			<g:if test="${formAPart1Instance}">
				${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "bioSafetyLevel")}
		 	</g:if>
		 	<g:else>
		 		<g:link action="show" id="${formAPart1ContainmentUnitInstance.id}">${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "bioSafetyLevel")}</g:link>
		 	</g:else>
		 	
		 	</td>
		 	
			<td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "unitType")}</td>
		
			<td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "unitSize")}</td>
		
			<td>${fieldValue(bean: formAPart1ContainmentUnitInstance, field: "comment")}</td>
			
			<g:if test="${formAPart1Instance}">
                <td>[&nbsp;<g:link controller="formAPart1ContainmentUnit" action="edit" id="${formAPart1ContainmentUnitInstance?.id}"
                                   title="${message(code: 'default.button.edit.label')}"><g:message
                                code="default.button.edit.label"/>/<g:message
                                code="default.button.delete.label"/></g:link>&nbsp;]
                </td>
            </g:if>
		
		</tr>
	</g:each>
	</tbody>
</table>