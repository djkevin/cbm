<%@ defaultCodec="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

    <title><g:message code="report.label"/></title>
    <%-- TODO Once rendering plugin can handle paths properly, use use resource plugin to provision stylesheet --%>
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'print.css', absolute: true)}"
          type="text/css"/>
</head>

<body>
%{--
<g:set var="formInstance" value="${formFInstance}" />
<g:render template="../common/printHeader"/>
--}%

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
            <h2>${reportInstance.stateParty}</h2>
            <h3>${reportInstance}</h3>
        </div>
    </div>
</div>

%{---------------------------------------------------------------------------- FORM ZERO  --------------------------------------------------------------------------}%
<div class="A4portrait">
<g:if test="${reportInstance.formZero}">

    <g:set var="formZeroInstance" value="${reportInstance.formZero}"  />
    <g:render template="../formZero/view"/>

</g:if>
</div>


%{------------------------------------------------------------------------- FORM A PART 1A -------------------------------------------------------------------------}%
<div class="A4portrait">
<g:if test="${reportInstance.formAPart1}">
    <g:each in="${reportInstance.formAPart1}" var="f">

        <g:set var="formAPart1aInstance" value="${f}" />
        <g:render template="../formAPart1a/view"/>

    </g:each>
</g:if>
</div>

<br/><br/>
%{------------------------------------------------------------------------- FORM A PART 1B -------------------------------------------------------------------------}%

<g:if test="${reportInstance.formAPart1b}">

    <g:set var="formAPart1bInstance" value="${reportInstance.formAPart1b}"  />
    <g:render template="../formAPart1b/view"/>

</g:if>

<br/><br/>
%{------------------------------------------------------------------------- FORM A PART 2A -------------------------------------------------------------------------}%
<g:if test="${reportInstance.formAPart2a}">

    <g:set var="formAPart2aInstance" value="${reportInstance.formAPart2a}" />
    <g:render template="../formAPart2a/view"/>

</g:if>

<br/><br/>
%{------------------------------------------------------------------------- FORM A PART 2B -------------------------------------------------------------------------}%
<g:if test="${reportInstance.formAPart2b}">
    <g:each in="${reportInstance.formAPart2b}" var="f">

        <g:set var="formAPart2bInstance" value="${f}" />
        <g:render template="../formAPart2b/view"/>

    </g:each>
</g:if>

<br/><br/>
%{----------------------------------------------------------------------------- FORM B -----------------------------------------------------------------------------}%
<g:if test="${reportInstance.formB}">
    <g:each in="${reportInstance.formB}" var="f">

        <g:set var="formBInstance" value="${f}" />
        <g:render template="../formB/view"/>

    </g:each>
</g:if>

<br/><br/>
%{----------------------------------------------------------------------------- FORM C -----------------------------------------------------------------------------}%
<g:if test="${reportInstance.formC}">
    <g:each in="${reportInstance.formC}" var="f">

        <g:set var="formCInstance" value="${f}" />
        <g:render template="../formC/view"/>

    </g:each>
</g:if>

<br/><br/>
%{----------------------------------------------------------------------------- FORM E -----------------------------------------------------------------------------}%
<g:if test="${reportInstance.formE}">
    <g:each in="${reportInstance.formE}" var="f">

        <g:set var="formEInstance" value="${f}" />
        <g:render template="../formE/view"/>

    </g:each>
</g:if>

<br/><br/>
%{----------------------------------------------------------------------------- FORM F -----------------------------------------------------------------------------}%
<g:if test="${reportInstance.formF}">
    <g:each in="${reportInstance.formF}" var="f">

        <g:set var="formFInstance" value="${f}" />
        <g:render template="../formF/view"/>

    </g:each>
</g:if>

<br/><br/>
%{----------------------------------------------------------------------------- FORM G -----------------------------------------------------------------------------}%
<g:if test="${reportInstance.formG}">
    <g:each in="${reportInstance.formG}" var="f">

        <g:set var="formGInstance" value="${f}" />
        <g:render template="../formG/view"/>

    </g:each>
</g:if>
<br/><br/>
%{------------------------------------------------------------------------- NATIONAL CONTACT  -------------------------------------------------------------------------}%
<div class="A4portrait">
    <g:if test="${nationalContacts}">
        <g:each in="${nationalContacts}" var="f">
            <g:set var="nationalContactInstance" value="${f}" />
            <g:render template="../nationalContact/view"/>

        </g:each>
    </g:if>
</div>

</body>
</html>