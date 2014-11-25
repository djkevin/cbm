<%@ page import="cbm.constants.PublicationStatus; cbm.constants.ReportStatus" %>
<table id="inner-table" width="60%">
    <g:each in="${forms}" var="f">
        <tr>
            <td width="60%">
            <!-- Draft or completed-->
                <g:if test="${f.formStatus.equalsIgnoreCase("draft")}">
                    <i class="fa fa-pencil"></i>
                </g:if>
                <g:else>
                    <i class="fa fa-check"></i>
                </g:else>
            <!-- Private or public -->
                <g:if test="${f.visibility.equalsIgnoreCase("private")}">
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
                              values="${f.constraints.formStatus.inList}"
                              labels="${f.constraints.formStatus.inList}"
                              value="${f?.formStatus.capitalize()}">  %{--TODO i18n--}%
                    ${it.radio} <g:message code="${it.label}" />&nbsp;
                </g:radioGroup>
            </td>
            <td width="20%">
       %{--         <g:if test="${f.visibility.equalsIgnoreCase("private")}">
                    <i class="fa fa-lock">
                    </i>
                    <g:message code="publicationStatus.private" default="private"/>
                </g:if>
                <g:else>
                    <i class="fa fa-unlock"></i>
                    <g:message code="publicationStatus.public" default="public"/>
                </g:else>--}%

          %{--      <g:radioGroup name="conductedUnderContract" value="${formAPart2bInstance?.conductedUnderContract == null ? 'false': formAPart2bInstance?.conductedUnderContract}"
                              values="['true','false']"
                              labels="['Yes','No']" >     --}%%{--TODO i18n--}%%{--
                    <span>${it.radio} ${it.label}</span>

                </g:radioGroup>--}%

                <g:radioGroup name="visibility_${f.title}_${f.id}"
                              values="${f.constraints.visibility.inList}"
                              labels="${f.constraints.visibility.inList}"
                              value="${f?.visibility?.capitalize()}">  %{--TODO i18n--}%
                    ${it.radio}
                    <g:message code="${it.label}" />&nbsp;
                </g:radioGroup>

            </td>
        </tr>
    </g:each>
</table>