<table id="inner-table">
    <g:each in="${forms}" var="f">
        <tr>
            <td width="90%">
            <!-- Draft or completed-->
                <g:if test="${f.formStatus == cbm.constants.FormStatus.DRAFT}">
                    <i class="fa fa-pencil"></i>
                </g:if>
                <g:else>
                    <i class="fa fa-check"></i>
                </g:else>
                <!-- Private or public -->
                <g:if test="${f.visibility == cbm.constants.Visibility.PRIVATE}">
                    <i class="fa fa-lock"></i>
                </g:if>
                <g:link controller="${controller}" action="show" id="${f.id}">
                    <!-- Label -->
                    <g:if test="${customTitle}"> <!--title overridden in report show-->
                        ${customTitle}
                    </g:if>
                    <g:else>${f.title}</g:else>
                    : ${f ? f.encodeAsHTML():''}
                 </g:link>
            </td>
        </tr>
    </g:each>
</table>