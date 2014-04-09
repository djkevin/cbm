<%@ defaultCodec="none" %>
%{--This template is referenced by the show view and the print view --}%

<div class="box">
    <h1><g:message code="formC.label" default="Form C"/> </h1>
</div>
<br/><br/>

<h4><g:message code="formC.long.label" default="Encouragement of publication of results"/></h4>
<br/>

<li>
    <span class="property-value" aria-labelledby="comments-label">${formCInstance.comments}</span>
</li>
<br/><br/>%{--to allow gap when multi-page print--}%