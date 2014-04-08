<%@ defaultCodec="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

    <title><g:message code="formC.label"/></title>
    <%-- TODO Once rendering plugin can handle paths properly, use use resource plugin to provision stylesheet --%>
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'print.css', absolute: true)}"
          type="text/css"/>
</head>

<body>
<g:set var="formInstance" value="${formCInstance}"/>
<g:render template="../common/printHeader"/>

<h4><g:message code="formC.long.label" default="Encouragement of publication of results"/></h4>
<br/>

<g:if test="${formCInstance?.comments}">
    <li>
        <span class="property-value" aria-labelledby="comments-label">${formCInstance.comments}</span>
    </li>
</g:if>

</body>
</html>