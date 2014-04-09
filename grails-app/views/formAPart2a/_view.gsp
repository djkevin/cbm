<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%

<div class="box">
    <h1><g:message code="formAPart2a.label" default="Form A Part 2a"/> </h1>
</div>
<br/><br/>

<h4><g:message code="formAPart2a.long.label" default="National biological defence Research and Development Programmes"/></h4>
<br/>
<h4><g:message code="formAPart2a.declaration" default="Declaration"/></h4>
<li class="fieldcontain">
    <span id="existingNationalProgrammes-label" class="property-label25"><g:message code="formAPart2a.existingNationalProgrammes.label" default="Existing National Programmes"/></span>
</li>
<span class="property-value" aria-labelledby="existingNationalProgrammes-label"><g:formatBoolean
        boolean="${formAPart2aInstance?.existingNationalProgrammes}"/></span>
<br/><br/>%{--to allow gap when multi-page print--}%