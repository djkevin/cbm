<!-- 
	Requires the caller to pass a parameter "reportId". The value of this parameter is the id of the Report linked to the FormAPart2c.
 -->
 
 <%@page import="cbm.FormAPart2b"%>
<%@page import="cbm.FormAPart2c" %>
<%@page import="cbm.Report" %>

 

<div class="fieldcontain">
    <label class="property-label25">
        <g:message code="report.label" default="report"/>                                 
    </label>

    <g:field type="text" name="report.name" value="${Report.get(params.reportId).reportName}" readonly="true" />
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'formAPart2b', 'error')} required">
    <label for="formAPart2b">
        <g:message code="formAPart2c.facility.label" default="facility"/>                         
        <span class="required-indicator">*</span>
    </label>

    <g:select id="formAPart2b" name="formAPart2b.id" from="${cbm.FormAPart2b.list()}" optionKey="id" required=""
               value="${formAPart2cInstance?.formAPart2b?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'facilityName', 'error')} required">
	<label for="facilityName">
		<g:message code="formAPart2c.facilityName.label" default="Facility Name" />
		<span class="required-indicator">*</span>
	</label>
</div>
<div><g:textField class="longText" name="facilityName" maxlength="250" required="" value="${formAPart2cInstance?.facilityName}"/></div>


<%-- div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'location', 'error')} ">
	<label for="location" class="property-label25">
		<g:message code="formAPart2c.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${formAPart2cInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'mailingAddress', 'error')} ">
	<label for="mailingAddress" class="property-label25">
		<g:message code="formAPart2c.mailingAddress.label" default="Mailing Address" />
		
	</label>
	<g:textField name="mailingAddress" value="${formAPart2cInstance?.mailingAddress}"/>
</div --%>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.facilityLocation.label" default="Location & Address" />
	</label>
</div>

<div class="wrapper">
	
	<div class="left1">
		<div
			class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'location', 'error')} required">
			<label for="location"> 
				<g:message code="formAPart2c.geoLocation.label" default="Location" /> 
				<span class="required-indicator">*</span>
			</label>
		</div>
		<div>
			<g:textArea class="twoCol" name="location" cols="40" rows="5"
				maxlength="500" required="" value="${formAPart2cInstance?.location}" />
		</div>
	</div>
	<div class="left2">
		<div
			class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'postalAddress', 'error')} required">
			<label for="postalAddress"> <g:message
					code="formAPart2c.postalAddress.label" default="Postal Address" />
				<span class="required-indicator">*</span>
			</label>
		</div>
		<div>
			<g:textArea class="twoCol" name="postalAddress" cols="40" rows="5"
				maxlength="500" required=""
				value="${formAPart2cInstance?.postalAddress}" />
		</div>
	</div>
</div>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.floorAreas" default="Floor Areas" />
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'floorAreaBL2', 'error')} required">
	<label class="property-label" for="floorAreaBL2">
		<g:message code="formAPart2c.floorAreaBL2.label" default="BL2" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="floorAreaBL2" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'floorAreaBL2')}"/>
		(<g:message code="formAPart2c.sqm.label" default="m^2" />)
	 </span>
</div>
<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'floorAreaBL3', 'error')} required">
	<label class="property-label" for="floorAreaBL3">
		<g:message code="formAPart2c.floorAreaBL3.label" default="BL3" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="floorAreaBL3" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'floorAreaBL3')}"/>
		(<g:message code="formAPart2c.sqm.label" default="m^2" />)
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'floorAreaBL4', 'error')} required">
	<label class="property-label" for="floorAreaBL4">
		<g:message code="formAPart2c.floorAreaBL4.label" default="BL4" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="floorAreaBL4" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'floorAreaBL4')}"/>
		(<g:message code="formAPart2c.sqm.label" default="m^2" />)
	</span>
</div>


<%-- this field is calculated, should only show it in show.gsp, not in create.gsp and edit.gsp 
	div class="fieldcontain">
	<label class="property-label"> 
		<g:message code="formAPart2c.totalFloorArea.label" default="total floor area" />
	</label>
	<span class="property-value" >
		${formAPart2cInstance?.totalFloorArea?:'?'}	
		(<g:message code="formAPart2c.sqm.label" default="m^2" />)
	</span>
</div --%>
 
<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.orgStructure.label" default="organisational structure" />
	</label>
</div>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.totalPersonnel.label" default="total personnel" />
	</label>
</div>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.divisionPersonnel.label" default="division of personnel" />
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'militaryPersonnel', 'error')} required">
	<label class="property-label" for="militaryPersonnel">
		<g:message code="formAPart2c.militaryPersonnel.label" default="militaries" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="militaryPersonnel" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'militaryPersonnel')}"/>
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'civilianPersonnel', 'error')} required">
	<label class="property-label" for="civilianPersonnel">
		<g:message code="formAPart2c.civilianPersonnel.label" default="militaries" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="civilianPersonnel" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'civilianPersonnel')}"/>
	</span>
</div>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.divisionPersonnelCategory.label" default="division of personnel by category" />
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'scientists', 'error')} required">
	<label class="property-label" for="scientists">
		<g:message code="formAPart2c.scientists.label" default="scientists" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="scientists" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'scientists')}"/>
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'engineers', 'error')} required">
	<label class="property-label" for="engineers">
		<g:message code="formAPart2c.engineers.label" default="engineers" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="engineers" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'engineers')}"/>
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'technicians', 'error')} required">
	<label class="property-label" for="technicians">
		<g:message code="formAPart2c.technicians.label" default="technicians" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="technicians" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'technicians')}"/>
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'administrators', 'error')} required">
	<label class="property-label" for="administrators">
		<g:message code="formAPart2c.administrators.label" default="administrators" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="administrators" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'administrators')}"/>
	</span>
</div>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.scientificDisciplines.label" default="scientific disciplines" />
	</label>
	<g:textArea class="longTextMed" name="scientificDisciplines" required="" >${formAPart2cInstance?.scientificDisciplines}</g:textArea>		
</div>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.contractors.label" default="contractors" />
	</label>
	<span class="property-value" >
		<g:textField name="contractors" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'contractors')}"/>
	</span>
</div>

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.fundingSources.label" default="funding sources" />
	</label>
	<g:textArea class="longTextMed" name="fundingSources" required="" >${formAPart2cInstance?.fundingSources}</g:textArea>		
</div>
	
<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.fundLevels.label" default="fund levels" />
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'fundResearch', 'error')} required">
	<label class="property-label" for="fundResearch">
		<g:message code="formAPart2c.fundResearch.label" default="fund research" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="fundResearch" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'fundResearch') }"/>
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'fundDevelopment', 'error')} required">
	<label class="property-label" for="fundDevelopment">
		<g:message code="formAPart2c.fundDevelopment.label" default="fund development" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="fundDevelopment" required="" value="${fieldValue(bean: formAPart2cInstance, field: 'fundDevelopment')}"/>
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'fundTest', 'error')} required">
	<label class="property-label" for="fundTest">
		<g:message code="formAPart2c.fundTest.label" default="fund test" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="fundTest" required="" value="${fieldValue(bean:formAPart2cInstance, field: 'fundTest')}"/>
	</span>
</div>		 
		
		 
		
<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.publicationPolicy.label" default="publication policy" />
	</label>
	<g:textArea class="longTextMed" name="publicationPolicy" required="" >${formAPart2cInstance?.publicationPolicy}</g:textArea>		
</div>	

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.publicPapers.label" default="public papers" />
	</label>
	<g:textArea class="longTextMed" name="publicPapers" required="" >${formAPart2cInstance?.publicPapers}</g:textArea>		
</div>	

<div class="fieldcontain property-label">
	<label>
		<g:message code="formAPart2c.bioDefenseWork.label" default="bio defense work" />
	</label>
	<g:textArea class="longTextMed" name="bioDefenseWork" required="" >${formAPart2cInstance?.bioDefenseWork}</g:textArea>		
</div>			
		
<g:set var="formInstance" value="${formAPart2cInstance}"></g:set>
<g:render template="../formStatus"/>		
		
		