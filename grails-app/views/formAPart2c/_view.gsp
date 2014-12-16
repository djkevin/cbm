<%@ defaultCodec="none" %>
%{--FormAPart2c is a subform of FormAPart2B so it is printed from within the FormAPart2b print function--}%

<div class="box">
    <h1><g:message code="formAPart2c.label" default="Form A Part 2(iii)"/> </h1>
</div>
<br/><br/>
%{--<h3><g:message code="formAPart2b.long.label" default="National biological defence Research and Development Programmes"/></h3>--}%
%{--<br/>--}%
%{--<h4><g:message code="formAPart2c.facilities" default="Facilities"/></h4><br/>--}%

<g:if test="${formAPart2cInstance?.facilityName}">
    <li class="fieldcontain">
        <span id="facilityName-label" class="property-label"><g:message code="formAPart2c.facilityName.label" default="Facility Name" /></span>

        <span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue bean="${formAPart2cInstance}" field="facilityName"/></span>
    </li>
</g:if>

<br/>
<h4><g:message code="formAPart2c.facilityLocation.label" default="Facility Location" /></h4>
<br/>
<g:if test="${formAPart2cInstance?.location}">
    <h4><g:message code="formAPart2c.postalAddress.label" default="Location"/></h4>
    <li>
        <span class="property-value" aria-labelledby="address-label">
            <g:fieldValue bean="${formAPart2cInstance}" field="location"/>, <country:name country="${formAPart2cInstance?.country}"/>
        </span>
    </li>
</g:if>

<br/>
<g:if test="${formAPart2cInstance?.geolocation}">
    <li>
        <h4><g:message code="formAPart2c.geoLocation.label" default="Location" /></h4>
        <span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${formAPart2cInstance}" field="geolocation"/></span>
    </li>
</g:if>
<h4>
    <g:message code="formAPart2c.floorAreas" default="floor area" />
</h4>

<g:if test="${formAPart2cInstance?.floorAreaBL2}">
    <li class="fieldcontain">
        <span id="floorAreaBL2-label" class="property-label"><g:message code="formAPart2c.floorAreaBL2.label" default="floorAreaBL2" /></span>
        <span class="property-value" aria-labelledby="floorAreaBL2-label"><g:fieldValue bean="${formAPart2cInstance}" field="floorAreaBL2"/>
        (<g:message code="formAPart2c.sqm.label" default="m^2" />)
        </span>
    </li>
</g:if>

<g:if test="${formAPart2cInstance?.floorAreaBL3}">
    <li class="fieldcontain">
        <span id="floorAreaBL3-label" class="property-label"><g:message code="formAPart2c.floorAreaBL3.label" default="floorAreaBL3" /></span>
        <span class="property-value" aria-labelledby="floorAreaBL3-label"><g:fieldValue bean="${formAPart2cInstance}" field="floorAreaBL3"/>
        (<g:message code="formAPart2c.sqm.label" default="m^2" />)
        </span>
    </li>
</g:if>

<g:if test="${formAPart2cInstance?.floorAreaBL4}">
    <li class="fieldcontain">
        <span id="floorAreaBL4-label" class="property-label"><g:message code="formAPart2c.floorAreaBL4.label" default="floorAreaBL4" /></span>
        <span class="property-value" aria-labelledby="floorAreaBL4-label"><g:fieldValue bean="${formAPart2cInstance}" field="floorAreaBL4"/>
        (<g:message code="formAPart2c.sqm.label" default="m^2" />)
        </span>
    </li>
</g:if>

<li class="fieldcontain">
    <span id="totalfloorArea-label" class="property-label"><g:message code="formAPart2c.totalFloorArea.label" default="totalFloorArea" /></span>
    <span class="property-value" aria-labelledby="totalFloorArea-label"><g:fieldValue bean="${formAPart2cInstance}" field="totalFloorArea"/>
    (<g:message code="formAPart2c.sqm.label" default="m^2" />)
    </span>
</li>

<g:if test="${formAPart2cInstance?.floorAreaComments}">
    <h4><g:message code="default.additional.comments.label" default="Additional Comments" /></h4>
    <li>
        <span class="property-value" aria-labelledby="orgStructureComments2-label">${formAPart2cInstance.floorAreaComments}</span>
    </li>
    <br/>
</g:if>

<br/>
<h4>
    <g:message code="formAPart2c.orgStructure.label" default="org structure" />
</h4>

<li class="fieldcontain">
    <span id="totalPersonnel-label" class="property-label"><g:message code="formAPart2c.totalPersonnel.label" default="totalPersonnel" /></span>
    <span class="property-value" aria-labelledby="totalPersonnel-label"><g:fieldValue bean="${formAPart2cInstance}" field="totalPersonnel"/>
    </span>
</li>

<g:if test="${formAPart2cInstance?.orgStructureComments1}">
    <h4><g:message code="default.additional.comments.label" default="Additional Comments" /></h4>
    <li>
        <span class="property-value" aria-labelledby="orgStructureComments1-label">${formAPart2cInstance.orgStructureComments1}</span>
    </li>
    <br/>
</g:if>

<li class="fieldcontain">
    <span id="divisionPersonnel-label" class="property-label"><g:message code="formAPart2c.divisionPersonnel.label" default="div personnel" /></span>
    <span class="property-value" >
        <g:fieldValue bean="${formAPart2cInstance}" field="militaryPersonnel"/>
        <g:message code="formAPart2c.militaryPersonnel.label" default="militaryPersonnel" />
        ,
        <g:fieldValue bean="${formAPart2cInstance}" field="civilianPersonnel"/>
        <g:message code="formAPart2c.civilianPersonnel.label" default="civilianPersonnel" />
    </span>
</li>

<g:if test="${formAPart2cInstance?.orgStructureComments2}">
    <h4><g:message code="default.additional.comments.label" default="Additional Comments" /></h4>
    <li>
        <span class="property-value" aria-labelledby="orgStructureComments2-label">${formAPart2cInstance.orgStructureComments2}</span>
    </li>
    <br/>
</g:if>

<li class="fieldcontain">
    <span id="divisionPersonnelCategory-label" class="property-label"><g:message code="formAPart2c.divisionPersonnelCategory.label" default="div personnel cat" /></span>
    <span class="property-value" >
        <g:fieldValue bean="${formAPart2cInstance}" field="scientists"/>
        <g:message code="formAPart2c.scientists.label" default="scientists" />
        ,
        <g:fieldValue bean="${formAPart2cInstance}" field="engineers"/>
        <g:message code="formAPart2c.engineers.label" default="engineers" />
        ,
        <g:fieldValue bean="${formAPart2cInstance}" field="technicians"/>
        <g:message code="formAPart2c.technicians.label" default="technicians" />
        ,
        <g:fieldValue bean="${formAPart2cInstance}" field="administrators"/>
        <g:message code="formAPart2c.administrators.label" default="administrators" />
    </span>
</li>


<g:if test="${formAPart2cInstance?.orgStructureComments3}">
    <h4><g:message code="default.additional.comments.label" default="Additional Comments" /></h4>
    <li>
        <span class="property-value" aria-labelledby="orgStructureComments3-label">${formAPart2cInstance.orgStructureComments3}</span>
    </li>
    <br/>
</g:if>

<br/>
<h4>
    <g:message code="formAPart2c.scientificDisciplines.label" default="scientific Disciplines" />
</h4>
<li>
    <span class="property-value" aria-labelledby="scientificDisciplines-label">
        ${formAPart2cInstance.scientificDisciplines}
    </span>
</li>

<br/>
<h4>
    <g:message code="formAPart2c.contractors.label" default="contractors" />
</h4>
<li class="fieldcontain">
    <span class="property-value" aria-labelledby="contractors-label">
        <g:fieldValue bean="${formAPart2cInstance}" field="contractors"/>
    </span>
</li>

<g:if test="${formAPart2cInstance?.contractWorkersComments}">
    <h4><g:message code="default.additional.comments.label" default="Additional Comments" /></h4>
    <li>
        <span class="property-value" aria-labelledby="orgStructureComments2-label">${formAPart2cInstance.contractWorkersComments}</span>
    </li>
    <br/>
</g:if>

<br/>
<h4>
    <g:message code="formAPart2c.fundingSources.label" default="funding Sources" />
</h4>
<li>
    <span class="property-value" aria-labelledby="fundingSources-label">${formAPart2cInstance.fundingSources}</span>
</li>

<br/>
<h4>
    <g:message code="formAPart2c.fundLevels.label" default="fund levels" />
</h4>

<li class="fieldcontain">
    <span id="fundResearch-label" class="property-label"><g:message code="formAPart2c.fundResearch.label" default="Research" /></span>
    <span class="property-value" aria-labelledby="fundResearch-label"><g:fieldValue bean="${formAPart2cInstance}" field="fundResearch"/>
    </span>
</li>

<li class="fieldcontain">
    <span id="fundDevelopment-label" class="property-label"><g:message code="formAPart2c.fundDevelopment.label" default="Development" /></span>
    <span class="property-value" aria-labelledby="fundDevelopment-label"><g:fieldValue bean="${formAPart2cInstance}" field="fundDevelopment"/>
    </span>
</li>

<li class="fieldcontain">
    <span id="fundTest-label" class="property-label"><g:message code="formAPart2c.fundTest.label" default="Test" /></span>
    <span class="property-value" aria-labelledby="fundTest-label"><g:fieldValue bean="${formAPart2cInstance}" field="fundTest"/>
    </span>
</li>

<br/>
<h4>
    <g:message code="formAPart2c.publicationPolicy.label" default="publication Policy" />
</h4>
<li>
    <span class="property-value" aria-labelledby="publicationPolicy-label">${formAPart2cInstance.publicationPolicy}</span>
</li>

<br/>
<h4>
    <g:message code="formAPart2c.publicPapers.label" default="public Papers" />
</h4>
<li>
    <span class="property-value" aria-labelledby="publicPapers-label">${formAPart2cInstance.publicPapers}</span>
</li>

<br/>
<h4>
    <g:message code="formAPart2c.bioDefenseWork.label" default="bio Defense Work" />
</h4>
<li>
    <span class="property-value" aria-labelledby="bioDefenseWork-label">${formAPart2cInstance.bioDefenseWork}</span>
</li>

<br/><br/>%{--to allow gap when multi-page print--}%


