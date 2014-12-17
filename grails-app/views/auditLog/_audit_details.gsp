<g:if test="${listAuditLog.size() > 0}">
    <span id="empty-label" class="property-label">&nbsp;</span>
    <span class="property-value">
        <table>
            <thead>
            <th><g:message code="audit.user.label" default="user"/></th>
            <th><g:message code="audit.date.and.time.label" default="date & time"/></th>
            <th><g:message code="audit.action.label" default="action"/></th>
            <th><g:message code="audit.field.label" default="field"/></th>
            </thead>
            <g:each var="auditrec" in="${listAuditLog}">
                <tr>
                    <td>${auditrec.actor}</td>
                    <td><g:formatDate date="${auditrec.lastUpdated}" formatName="default.datetime.format"/></td>
                    <td>${auditrec.eventName}</td>
                    <td>${auditrec.propertyName}</td>
                </tr>
            </g:each>
        </table>
    </span>
</g:if>