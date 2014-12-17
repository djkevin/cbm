<%--
	This template shows audit info for a record.
	Must be rendered in show views within <OL> tags.
	Example:

	<ol class="property-list correspondent">
		<g:render template="../audit" model="['objInstance':addressInstance]" />
	</ol>
--%>

<g:javascript>

    //Note - every click on More does an Ajax call as well as
    function loadAuditEntries(){
        var className= '${objInstance.class.simpleName}'
        var objId = '${objInstance.id}'

        <g:remoteFunction controller="auditLog" action="loadAuditLog" update="auditlog" params="'className='+className+'&id='+objId"/>
    }

    // show the auditlog section
    function toggleAuditLog() {
        e = document.getElementById('auditlog')
        m = document.getElementById('moredetails')
        l = document.getElementById('lessdetails')
        if (e.style.display == "none") {
            e.style.display = "inline";
            m.style.display = "none";
            l.style.display = "inline";
        } else {
            e.style.display = "none";
            m.style.display = "inline";
            l.style.display = "none";
        }
    }

</g:javascript>

<li class="smaller fieldcontain">
    <span id="empty-label" class="property-label">&nbsp;</span>
    <span class="property-value">
        <!-- only show last update timestamp if different from date created -->
        <g:if test="${objInstance?.lastUpdated != objInstance?.dateCreated}">
            <g:message code="audit.updated.label" default="Updated"/>
            <g:formatDate date="${objInstance?.lastUpdated}" formatName="default.datetime.format"/>
            &nbsp;|&nbsp;
        </g:if>
        <g:message code="audit.created.label" default="Created"/>
        <g:formatDate date="${objInstance?.dateCreated}" formatName="default.datetime.format"/>
        &nbsp;|&nbsp;
        <a id="moredetails" href="javascript:loadAuditEntries();toggleAuditLog()"><g:message code="audit.moreDetails.label" default="more..."/></a>
        <a style="display:none;" id="lessdetails" href="javascript:toggleAuditLog()"><g:message code="audit.lessDetails.label" default="less..."/></a>
    </span>

</li>
<div id="auditlog" style="display:none">
%{--filled by ajax call to controller AuditLogController.loadAuditLog which renders audit_details.gsp template --}%
</div

<%-- for the event change --%>
<g:javascript library="jquery"/>
