<%@ page import="cbm.report.Report" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-report" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        
        <sec:ifAnyGranted roles="ROLE_SUBMITTER">
        	<li><g:link class="create" action="create" params="['stateParty.id': statePartyId]"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
        </sec:ifAnyGranted>
        
        <sec:ifAnyGranted roles="ROLE_VIEWER, ROLE_EDITOR, ROLE_SUBMITTER, ROLE_ADMIN">	
        	<li><g:link class="published" action="published"><g:message code="report.view.published.label" default="View published" /> </g:link> </li>
        </sec:ifAnyGranted>
    </ul>
</div>

<tmpl:list/>

</body>
</html>
