<%@ page import="cbm.FormE" %>



<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'formStatus', 'error')} ">
    <label for="formStatus">
        <g:message code="formE.formStatus.label" default="Form Status" />

    </label>
</div>
<div><g:select name="formStatus" from="${formEInstance.constraints.formStatus.inList}" value="${formEInstance?.formStatus}" valueMessagePrefix="formE.formStatus" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'visibility', 'error')} ">
    <label for="visibility">
        <g:message code="formE.visibility.label" default="Visibility" />

    </label>
</div>
<div><g:select name="visibility" from="${formEInstance.constraints.visibility.inList}" value="${formEInstance?.visibility}" valueMessagePrefix="formE.visibility" noSelection="['': '']"/></div>

<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'additionalComments', 'error')} ">
    <label for="additionalComments">
        <g:message code="formE.additionalComments.label" default="Additional Comments" />

    </label>
</div>
<div><g:textField name="additionalComments" value="${formEInstance?.additionalComments}"/></div>
<fieldset class="embedded"><legend><g:message code="formE.biosafetyAndBioSecurity.label" default="Biosafety And Bio Security" /></legend>
    <div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'biosafetyAndBioSecurity.amendedSinceLastYear', 'error')} ">
        <label for="biosafetyAndBioSecurity.amendedSinceLastYear">
            <g:message code="formE.biosafetyAndBioSecurity.amendedSinceLastYear.label" default="Amended Since Last Year" />

        </label>
    </div>
    <div><g:select name="amendedSinceLastYear" from="${formEInstance?.biosafetyAndBioSecurity?.constraints.amendedSinceLastYear?.inList}" value="${formEInstance?.biosafetyAndBioSecurity?.amendedSinceLastYear}" valueMessagePrefix="declarationOfMeasures.amendedSinceLastYear" noSelection="['': '']"/></div>

    <div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'biosafetyAndBioSecurity.legislation', 'error')} ">
        <label for="biosafetyAndBioSecurity.legislation">
            <g:message code="formE.biosafetyAndBioSecurity.legislation.label" default="Legislation" />

        </label>
    </div>
    <div><g:select name="legislation" from="${declarationOfMeasuresInstance.constraints.legislation.inList}" value="${declarationOfMeasuresInstance?.legislation}" valueMessagePrefix="declarationOfMeasures.legislation" noSelection="['': '']"/></div>

    <div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'biosafetyAndBioSecurity.otherMeasures', 'error')} ">
    <label for="biosafetyAndBioSecurity.otherMeasures">
    <g:message code="formE.biosafetyAndBioSecurity.otherMeasures.label" default="Other Measures" />

    </label>
    </div>
    <div><g:select name="otherMeasures" from="${declarationOfMeasuresInstance.constraints.otherMeasures.inList}" value="${declarationOfMeasuresInstance?.otherMeasures}" valueMessagePrefix="declarationOfMeasures.otherMeasures" noSelection="['': '']"/></div>

    <div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'biosafetyAndBioSecurity.regulation', 'error')} ">
    <label for="biosafetyAndBioSecurity.regulation">
    <g:message code="formE.biosafetyAndBioSecurity.regulation.label" default="Regulation" />

    </label>
    </div>
    <div><g:select name="regulation" from="${declarationOfMeasuresInstance.constraints.regulation.inList}" value="${declarationOfMeasuresInstance?.regulation}" valueMessagePrefix="declarationOfMeasures.regulation" noSelection="['': '']"/></div>
</fieldset>
%{--<fieldset class="embedded"><legend><g:message code="formE.developmentAndMeansOfDelivery.label" default="Development And Means Of Delivery" /></legend>--}%
%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'developmentAndMeansOfDelivery.amendedSinceLastYear', 'error')} ">--}%
%{--<label for="developmentAndMeansOfDelivery.amendedSinceLastYear">--}%
%{--<g:message code="formE.developmentAndMeansOfDelivery.amendedSinceLastYear.label" default="Amended Since Last Year" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="amendedSinceLastYear" from="${declarationOfMeasuresInstance.constraints.amendedSinceLastYear.inList}" value="${declarationOfMeasuresInstance?.amendedSinceLastYear}" valueMessagePrefix="declarationOfMeasures.amendedSinceLastYear" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'developmentAndMeansOfDelivery.legislation', 'error')} ">--}%
%{--<label for="developmentAndMeansOfDelivery.legislation">--}%
%{--<g:message code="formE.developmentAndMeansOfDelivery.legislation.label" default="Legislation" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="legislation" from="${declarationOfMeasuresInstance.constraints.legislation.inList}" value="${declarationOfMeasuresInstance?.legislation}" valueMessagePrefix="declarationOfMeasures.legislation" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'developmentAndMeansOfDelivery.otherMeasures', 'error')} ">--}%
%{--<label for="developmentAndMeansOfDelivery.otherMeasures">--}%
%{--<g:message code="formE.developmentAndMeansOfDelivery.otherMeasures.label" default="Other Measures" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="otherMeasures" from="${declarationOfMeasuresInstance.constraints.otherMeasures.inList}" value="${declarationOfMeasuresInstance?.otherMeasures}" valueMessagePrefix="declarationOfMeasures.otherMeasures" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'developmentAndMeansOfDelivery.regulation', 'error')} ">--}%
%{--<label for="developmentAndMeansOfDelivery.regulation">--}%
%{--<g:message code="formE.developmentAndMeansOfDelivery.regulation.label" default="Regulation" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="regulation" from="${declarationOfMeasuresInstance.constraints.regulation.inList}" value="${declarationOfMeasuresInstance?.regulation}" valueMessagePrefix="declarationOfMeasures.regulation" noSelection="['': '']"/></div>--}%
%{--</fieldset><fieldset class="embedded"><legend><g:message code="formE.exportsOfMicroOrganisms.label" default="Exports Of Micro Organisms" /></legend>--}%
%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'exportsOfMicroOrganisms.amendedSinceLastYear', 'error')} ">--}%
%{--<label for="exportsOfMicroOrganisms.amendedSinceLastYear">--}%
%{--<g:message code="formE.exportsOfMicroOrganisms.amendedSinceLastYear.label" default="Amended Since Last Year" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="amendedSinceLastYear" from="${declarationOfMeasuresInstance.constraints.amendedSinceLastYear.inList}" value="${declarationOfMeasuresInstance?.amendedSinceLastYear}" valueMessagePrefix="declarationOfMeasures.amendedSinceLastYear" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'exportsOfMicroOrganisms.legislation', 'error')} ">--}%
%{--<label for="exportsOfMicroOrganisms.legislation">--}%
%{--<g:message code="formE.exportsOfMicroOrganisms.legislation.label" default="Legislation" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="legislation" from="${declarationOfMeasuresInstance.constraints.legislation.inList}" value="${declarationOfMeasuresInstance?.legislation}" valueMessagePrefix="declarationOfMeasures.legislation" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'exportsOfMicroOrganisms.otherMeasures', 'error')} ">--}%
%{--<label for="exportsOfMicroOrganisms.otherMeasures">--}%
%{--<g:message code="formE.exportsOfMicroOrganisms.otherMeasures.label" default="Other Measures" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="otherMeasures" from="${declarationOfMeasuresInstance.constraints.otherMeasures.inList}" value="${declarationOfMeasuresInstance?.otherMeasures}" valueMessagePrefix="declarationOfMeasures.otherMeasures" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'exportsOfMicroOrganisms.regulation', 'error')} ">--}%
%{--<label for="exportsOfMicroOrganisms.regulation">--}%
%{--<g:message code="formE.exportsOfMicroOrganisms.regulation.label" default="Regulation" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="regulation" from="${declarationOfMeasuresInstance.constraints.regulation.inList}" value="${declarationOfMeasuresInstance?.regulation}" valueMessagePrefix="declarationOfMeasures.regulation" noSelection="['': '']"/></div>--}%
%{--</fieldset><fieldset class="embedded"><legend><g:message code="formE.importsOfMicroOrganisms.label" default="Imports Of Micro Organisms" /></legend>--}%
%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'importsOfMicroOrganisms.amendedSinceLastYear', 'error')} ">--}%
%{--<label for="importsOfMicroOrganisms.amendedSinceLastYear">--}%
%{--<g:message code="formE.importsOfMicroOrganisms.amendedSinceLastYear.label" default="Amended Since Last Year" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="amendedSinceLastYear" from="${declarationOfMeasuresInstance.constraints.amendedSinceLastYear.inList}" value="${declarationOfMeasuresInstance?.amendedSinceLastYear}" valueMessagePrefix="declarationOfMeasures.amendedSinceLastYear" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'importsOfMicroOrganisms.legislation', 'error')} ">--}%
%{--<label for="importsOfMicroOrganisms.legislation">--}%
%{--<g:message code="formE.importsOfMicroOrganisms.legislation.label" default="Legislation" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="legislation" from="${declarationOfMeasuresInstance.constraints.legislation.inList}" value="${declarationOfMeasuresInstance?.legislation}" valueMessagePrefix="declarationOfMeasures.legislation" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'importsOfMicroOrganisms.otherMeasures', 'error')} ">--}%
%{--<label for="importsOfMicroOrganisms.otherMeasures">--}%
%{--<g:message code="formE.importsOfMicroOrganisms.otherMeasures.label" default="Other Measures" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="otherMeasures" from="${declarationOfMeasuresInstance.constraints.otherMeasures.inList}" value="${declarationOfMeasuresInstance?.otherMeasures}" valueMessagePrefix="declarationOfMeasures.otherMeasures" noSelection="['': '']"/></div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'importsOfMicroOrganisms.regulation', 'error')} ">--}%
%{--<label for="importsOfMicroOrganisms.regulation">--}%
%{--<g:message code="formE.importsOfMicroOrganisms.regulation.label" default="Regulation" />--}%

%{--</label>--}%
%{--</div>--}%
%{--<div><g:select name="regulation" from="${declarationOfMeasuresInstance.constraints.regulation.inList}" value="${declarationOfMeasuresInstance?.regulation}" valueMessagePrefix="declarationOfMeasures.regulation" noSelection="['': '']"/></div>--}%
%{--</fieldset>--}%
%{--<div class="fieldcontain ${hasErrors(bean: formEInstance, field: 'title', 'error')} ">--}%
%{--<label for="title">--}%
%{--<g:message code="formE.title.label" default="Title" />--}%

%{--</label>--}%
%{--</div>--}%
<div><g:textField name="title" value="${formEInstance?.title}"/></div>

