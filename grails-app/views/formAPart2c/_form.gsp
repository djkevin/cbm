<%@page import="cbm.FormAPart2b"%>
<%@page import="cbm.FormAPart2c" %>
<%@page import="cbm.Report" %>

 

<div class="fieldcontain">
    <label>
        <g:message code="report.label" default="report"/>                                 
    </label>
	${Report.get(params.reportId)}
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
		<g:textField name="floorAreaBL2" required="" value="${formAPart2cInstance?.floorAreaBL2}"/>
		(<g:message code="formAPart2c.sqm" default="m^2" />)
	 </span>
</div>
<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'floorAreaBL3', 'error')} required">
	<label class="property-label" for="floorAreaBL3">
		<g:message code="formAPart2c.floorAreaBL3.label" default="BL3" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="floorAreaBL3" required="" value="${formAPart2cInstance?.floorAreaBL3}"/>
		(<g:message code="formAPart2c.sqm.label" default="m^2" />)
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'floorAreaBL4', 'error')} required">
	<label class="property-label" for="floorAreaBL4">
		<g:message code="formAPart2c.floorAreaBL4.label" default="BL4" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="floorAreaBL4" required="" value="${formAPart2cInstance?.floorAreaBL4}"/>
		(<g:message code="formAPart2c.sqm.label" default="m^2" />)
	</span>
</div>


<%-- div class="fieldcontain">
	<label class="property-label"> 
		<g:message code="formAPart2c.totalFloorArea.label" default="total floor area" />
	</label>
	<span class="property-value" >
		${formAPart2cInstance?.totalFloorArea?:'?'}	
		(<g:message code="formAPart2c.sqm.label" default="m^2" />)
	</span>
</div --%>

<!-- 
	Integer militaryPersonnel
	Integer civilianPersonnel
	
	Integer scientists
	Integer engineers
	Integer technicians
	Integer administrators
	
 -->
 
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
		<g:textField name="militaryPersonnel" required="" value="${formAPart2cInstance?.militaryPersonnel}"/>		
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'civilianPersonnel', 'error')} required">
	<label class="property-label" for="civilianPersonnel">
		<g:message code="formAPart2c.civilianPersonnel.label" default="militaries" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="civilianPersonnel" required="" value="${formAPart2cInstance?.civilianPersonnel}"/>		
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
		<g:textField name="scientists" required="" value="${formAPart2cInstance?.scientists}"/>		
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'engineers', 'error')} required">
	<label class="property-label" for="engineers">
		<g:message code="formAPart2c.engineers.label" default="engineers" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="engineers" required="" value="${formAPart2cInstance?.engineers}"/>		
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'technicians', 'error')} required">
	<label class="property-label" for="technicians">
		<g:message code="formAPart2c.technicians.label" default="technicians" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="technicians" required="" value="${formAPart2cInstance?.technicians}"/>		
	</span>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2cInstance, field: 'administrators', 'error')} required">
	<label class="property-label" for="administrators">
		<g:message code="formAPart2c.administrators.label" default="administrators" />
		<span class="required-indicator">*</span>
	</label>
	<span class="property-value" >
		<g:textField name="administrators" required="" value="${formAPart2cInstance?.administrators}"/>		
	</span>
</div>

		scientificDisciplines
		contractors 
		fundingSources
		fundResearch 
		fundDevelopment
		fundTest 
		publicationPolicy
		publicPapers
		bioDefenseWork
		