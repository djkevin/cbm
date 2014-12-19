<%@ page import="cbm.constants.Visibility; cbm.constants.PublicationStatus; cbm.constants.FormStatus" %>
<table id="inner-table" width="60%">
    <g:each in="${forms}" var="f">
        <tr>
            <td width="58%">
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
            <td width="22%">

                <span class="icon-thread">
                    <ul>
                        <li>
                            <g:radio name="formStatus_${f.class.simpleName}_${f.id}" value="${FormStatus.DRAFT}" checked="${f.formStatus == FormStatus.DRAFT}"/>
                            <label class="radio" for="formStatus_${f.class.simpleName}_${f.id}"><i class="fa fa-pencil"></i> <g:message code="cbm.constants.FormStatus.DRAFT" /> </label>
                        </li>
                        <li>
                            <g:radio name="formStatus_${f.class.simpleName}_${f.id}" value="${FormStatus.COMPLETED}" checked="${f.formStatus == FormStatus.COMPLETED}"/>
                            <label class="radio" for="formStatus_${f.class.simpleName}_${f.id}"><i class="fa fa-check"></i> <g:message code="cbm.constants.FormStatus.COMPLETED" /></label>
                        </li>
                    </ul>
                </span>
            </td>
            <td width="20%">
                <span class="icon-thread">
                    <ul>
                        <li>
                            <g:radio name="visibility_${f.class.simpleName}_${f.id}" value="${Visibility.PUBLIC}" checked="${f.visibility == Visibility.PUBLIC}"/>
                            <label class="radio" for="formStatus_$f.class.simpleName}_${f.id}"><i class="fa fa-unlock"></i> <g:message code="cbm.constants.Visibility.PUBLIC" /> </label>
                        </li>
                        <li>
                            <g:radio name="visibility_${f.class.simpleName}_${f.id}" value="${Visibility.PRIVATE}" checked="${f.visibility == Visibility.PRIVATE}"/>
                            <label class="radio" for="formStatus_${f.class.simpleName}_${f.id}"><i class="fa fa-lock"></i> <g:message code="cbm.constants.Visibility.PRIVATE" /></label>
                        </li>
                    </ul>
                </span>

            </td>
        </tr>
    </g:each>
</table>