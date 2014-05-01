<table id="inner-table">
    <g:each in="${forms}" var="f">
        <tr>
            <td width="90%"><g:link controller="${controller}" action="show" id="${f.id}">${f.title}: ${f ? f.encodeAsHTML():''}</g:link></td>

            <!-- Draft or completed-->
            <g:if test="${f.formStatus.equalsIgnoreCase("draft")}">
                <td><i class="fa fa-pencil"></i></td>
            </g:if>
            <g:else>
                <td><i class="fa fa-check"></i></td>
            </g:else>
            <!-- Private or public -->
            <g:if test="${f.visibility.equalsIgnoreCase("private")}">
                <td><i class="fa fa-lock"></i></td>
            </g:if>
            <g:else>
                <td>&nbsp;</td>
            </g:else>

        </tr>
    </g:each>
</table>