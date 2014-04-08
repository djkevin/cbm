<div class="table header">
    <div>
        <div>
            <h1><g:message code="global.label.organization"/></h1>

            <h2><g:message code="global.label.division"/></h2>

            %{--<h3><g:message code="global.label.unit"/></h3>--}%
        </div>

        <div>
            <%-- Removing brackets in message() is syntactically correct, but leads to internal server error when .gsp is transformed to servlet --%>
            <img  src="${resource(dir: 'images', file: 'unlogo.png', absolute: 'true')}"
                  alt="${message(code: 'global.label.logo')}"/>
        </div>

        <div>
            <h1><g:message code="report.label"/> </h1>
            %{--TODO i18n labels--}%
            <h2>${formInstance.report.stateParty}</h2>
            <h3>${formInstance.title}</h3>
        </div>
    </div>
</div>