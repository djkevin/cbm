<%@ page import="cbm.constants.Visibility; cbm.constants.PublicationStatus; cbm.constants.FormStatus" %>
<table id="inner-table" width="60%">
    <g:each in="${forms}" var="f">
        <tr>
            <td width="60%">
            <!-- Draft or completed-->
                <g:if test="${f.formStatus == FormStatus.DRAFT}">
                    <i class="fa fa-pencil"></i>
                </g:if>
                <g:else>
                    <i class="fa fa-check"></i>
                </g:else>
            <!-- Private or public -->
                <g:if test="${f.visibility == Visibility.PRIVATE}">
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
            <td width="20%">
     %{--           <g:if test="${f.formStatus.equalsIgnoreCase("draft")}">
                    <i class="fa fa-pencil"></i>
                    <g:message code="formStatus.draft" default="draft"/>
                </g:if>
                <g:else>
                    <i class="fa fa-check"></i>
                    <g:message code="formStatus.completed" default="completed"/>
                </g:else>--}%

                <g:radioGroup name="formStatus_${f.title}_${f.id}"
                              values="${cbm.constants.FormStatus.values()}"
                              labels="${cbm.constants.FormStatus.values()*.name()}"
                              value="${f?.formStatus?.name()}">
                    ${it.radio}

                    <g:message code="${it.label}" />&nbsp;
                </g:radioGroup>
            </td>
            <td width="20%">

                |&nbsp;&nbsp;&nbsp;
                <g:radioGroup name="visibility_${f.title}_${f.id}"
                              values="${cbm.constants.Visibility.values()}"
                              labels="${cbm.constants.Visibility.values()*.name()}"
                              value="${f?.visibility?.name()}">  %{--TODO i18n--}%
                    ${it.radio}
                    %{--<span class="published">--}%
                        <g:message code="${it.label}" />&nbsp;
                    %{--</span>--}%

                </g:radioGroup>

            </td>
        </tr>
    </g:each>
</table>