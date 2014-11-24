<%@ page import="cbm.form.FormAPart1b" %>

<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'report', 'error')} required">
    <label for="report" class="property-label25">
        <g:message code="report.label" default="Report" />
        <span class="required-indicator">*</span>
    </label>
    <g:hiddenField name="report.id" id="report" value="${formAPart1bInstance?.report?.id}" />
    <g:field type="text" name="report.name" value="${formAPart1bInstance?.report}" readonly="true" />
</div>
<br/>

<h4><g:message code="formAPart1b.highestBSL.label" default="Indicate the highest BSL" /></h4>
<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'bioSafetyLevel3', 'error')} ">
	<label for="bioSafetyLevel3" class="property-label25">
		<g:message code="formAPart1b.bioSafetyLevel3.label" default="Bio Safety Level3" />
        <sup>7</sup>
	</label>
	<g:checkBox name="bioSafetyLevel3" value="${formAPart1bInstance?.bioSafetyLevel3}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'bioSafetyLevel2', 'error')} ">
	<label for="bioSafetyLevel2" class="property-label25">
		<g:message code="formAPart1b.bioSafetyLevel2.label" default="Bio Safety Level2" />
        <sup>8</sup>
	</label>
	<g:checkBox name="bioSafetyLevel2" value="${formAPart1bInstance?.bioSafetyLevel2}" />
</div>


<div class="fieldcontain ${hasErrors(bean: formAPart1bInstance, field: 'additionalInformation', 'error')} ">
    <h4><g:message code="formAPart1b.additionalInformation.label" default="Additional Information" /></h4>
	<g:textArea name="additionalInformation" class="longTextSml" maxlength="${formAPart1bInstance?.constraints?.additionalInformation?.maxSize}" value="${formAPart1bInstance?.additionalInformation}"/>
</div>

<g:set var="formInstance" value="${formAPart1bInstance}"></g:set>
<g:render template="../formStatus"/>

<br>
<div id="footnote">
    <hr>
    <br>
    <ol>
        <li>
            <sup>6</sup>
            <g:message code="formAPart1b.footer.6" default="Microorganisms.."/>
        </li>
        <li>
            <sup>7</sup>
            <g:message code="formAPart1b.footer.7" default="In accordance with latest edition.."/>
        </li>
        <li>
            <sup>8</sup>
            <g:message code="formAPart1b.footer.8" default="In accordance with latest edition.."/>
        </li>
    </ol>
</div>

