<div id="form-status-box">
    <div class="inline fieldcontain ">
        <label class="property-inline">
            <g:message code="form.title.label" default="Title"/>
        </label>
        <g:fieldValue bean="${formInstance}" field="title"/>
    </div>

    <div class="inline fieldcontain ">
        <label class="property-inline">
            <g:message code="form.formStatus.label" default="Form Status"/>
        </label>
        <g:fieldValue bean="${formInstance}" field="formStatus"/>
    </div>

    <div class="inline fieldcontain } ">
        <label class="property-inline">
            <g:message code="form.visibility.label" default="Visibility"/>
        </label>
        <g:fieldValue bean="${formInstance}" field="visibility"/>
    </div>

    <div class="inline fieldcontain } ">
        <label class="property-inline">
            <g:message code="form.dateCreated.label" default="Date Created"/>
        </label>
        <g:formatDate format="dd-MMM-yyyy" date="${formInstance?.dateCreated}"/>
    </div>

    <div class="inline fieldcontain } ">
        <label class="property-inline">
            <g:message code="form.lastUpdated.label" default="Last Updated"/>
        </label>
        <g:formatDate format="dd-MMM-yyyy" date="${formInstance?.lastUpdated}"/>
    </div>
    <br class="clearBoth"/><!-- you may or may not need this -->
</div>
