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
    <g:each in="${reportInstanceList}" status="i" var="report">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${report.id}">${report}</g:link></td>

            <td>${report.year}</td>

            <td>${fieldValue(bean: report, field: "language")}</td>

            <td>${fieldValue(bean: report, field: "reportStatus")}</td>

            <td>${fieldValue(bean: report, field: "publicationStatus")}</td>

            <td><g:formatBoolean boolean="${report.officialVersion}"/></td>

            <td><g:formatDate date="${report.lastUpdated}"/></td>

        </tr>
    </g:each>
    </tbody>
</table>