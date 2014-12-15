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

            %{--    <g:radioGroup name="formStatus_${f.title}_${f.id}"
                              values="${cbm.constants.FormStatus.values()}"
                              labels="${cbm.constants.FormStatus.values()*.name()}"
                              value="${f?.formStatus?.name()}">
                    ${it.radio}

                    <g:message code="${it.label}" />&nbsp;
                </g:radioGroup>--}%

                <span class="icon-thread">
                    <ul>
                        <li>
                            <g:radio name="formStatus_${f.title}_${f.id}" value="${f?.formStatus?.name()}" checked="${f.formStatus == FormStatus.DRAFT}"/>
                            <label class="radio" for="formStatus_${f.title}_${f.id}"><i class="fa fa-pencil"></i> <g:message code="cbm.constants.FormStatus.DRAFT" /> </label>
                        </li>
                        <li>
                            <g:radio name="formStatus_${f.title}_${f.id}" value="${f?.formStatus?.name()}" checked="${f.formStatus == FormStatus.COMPLETED}"/>
                            <label class="radio" for="formStatus_${f.title}_${f.id}"><i class="fa fa-check"></i> <g:message code="cbm.constants.FormStatus.COMPLETED" /></label>
                        </li>
                    </ul>
                </span>
            </td>
            <td width="20%">


    %{--            <g:radioGroup name="visibility_${f.title}_${f.id}"
                              values="${cbm.constants.Visibility.values()}"
                              labels="${cbm.constants.Visibility.values()*.name()}"
                              value="${f?.visibility?.name()}">  --}%%{--TODO i18n--}%%{--
                    ${it.radio}
                    --}%%{--<span class="published">--}%%{--
                        <g:message code="${it.label}" />&nbsp;
                    --}%%{--</span>--}%%{--

                </g:radioGroup>--}%


                <span class="icon-thread">
                    <ul>
                        <li>
                            <g:radio name="visibility_${f.title}_${f.id}" value="${f?.formStatus?.name()}" checked="${f.formStatus == Visibility.PUBLIC}"/>
                            <label class="radio" for="formStatus_${f.title}_${f.id}"><i class="fa fa-pencil"></i> <g:message code="cbm.constants.Visibility.PUBLIC" /> </label>
                        </li>
                        <li>
                            <g:radio name="visibility_${f.title}_${f.id}" value="${f?.formStatus?.name()}" checked="${f.formStatus == Visibility.PRIVATE}"/>
                            <label class="radio" for="formStatus_${f.title}_${f.id}"><i class="fa fa-check"></i> <g:message code="cbm.constants.Visibility.PRIVATE" /></label>
                        </li>
                    </ul>
                </span>

            </td>
        </tr>
    </g:each>
</table>