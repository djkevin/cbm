<div id="list-report" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="Report"/>

            <g:sortableColumn property="year" title="${message(code: 'year.label', default: 'Year')}"/>

            <g:sortableColumn property="language" title="${message(code: 'language.label', default: 'Language')}"/>

            <g:sortableColumn property="reportStatus" title="${message(code: 'report.reportStatus.label', default: 'Report Status')}"/>

            <g:sortableColumn property="publicationStatus" title="${message(code: 'report.publicationStatus.label', default: 'Publication Status')}"/>

            <g:sortableColumn property="officialVersion" title="${message(code: 'report.officialVersion.label', default: 'Official Version')}"/>

            <g:sortableColumn property="lastUpdated" title="${message(code: 'lastUpdated.label', default: 'Last Updated')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${reportInstanceList}" status="i" var="reportInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${reportInstance.id}">${reportInstance}</g:link></td>

                <td>${reportInstance.year}</td>

                <td>${fieldValue(bean: reportInstance, field: "language")}</td>

                <td>${fieldValue(bean: reportInstance, field: "reportStatus")}</td>

                <td>${fieldValue(bean: reportInstance, field: "publicationStatus")}</td>

                <td><g:formatBoolean boolean="${reportInstance.officialVersion}"/></td>

                <td><g:formatDate date="${reportInstance.lastUpdated}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${reportInstanceCount ?: 0}"/>
    </div>
</div>