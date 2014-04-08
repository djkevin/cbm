<%@ defaultCodec="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

    <title><g:message code="formAPart1.label"/></title>
    <%-- TODO Once rendering plugin can handle paths properly, use use resource plugin to provision stylesheet --%>
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'print.css', absolute: true)}"
          type="text/css"/>
</head>

<body>
<g:set var="formInstance" value="${formAPart2aInstance}"/>
<g:render template="../common/printHeader"/>

<h4><g:message code="formAPart2a.long.label" default="National biological defence Research and Development Programmes"/></h4>
<br/>
<h4><g:message code="formAPart2a.declaration" default="Declaration"/></h4>
<li class="fieldcontain">
    <span id="existingNationalProgrammes-label" class="property-label25"><g:message code="formAPart2a.existingNationalProgrammes.label" default="Existing National Programmes"/></span>
</li>
<span class="property-value" aria-labelledby="existingNationalProgrammes-label"><g:formatBoolean
        boolean="${formAPart2aInstance?.existingNationalProgrammes}"/></span>

</body>
</html>