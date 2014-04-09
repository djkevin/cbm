<%@ defaultCodec="none" %>
%{--FormAPart2c is a subform of FormAPart2B so it is printed from within the FormAPart2b print function--}%

<h4><g:message code="formAPart2b.long.label" default="National biological defence Research and Development Programmes"/></h4>
<br/>
<h4><g:message code="formAPart2c.facilities" default="Facilities"/></h4>

<g:if test="${formAPart2cInstance?.facilityName}">
    <li class="fieldcontain">
        <span id="facilityName-label" class="property-label"><g:message code="formAPart2c.facilityName.label" default="Facility Name" /></span>

        <span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue bean="${formAPart2cInstance}" field="facilityName"/></span>
    </li>
</g:if>

<br/>
<h4>
    <g:message code="formAPart2c.facilityLocation.label" default="Facility Location" />
</h4>

<g:if test="${formAPart2cInstance?.location}">
    <li class="fieldcontain">
        <span id="location-label" class="property-label"><g:message code="formAPart2c.geoLocation.label" default="Location" /></span>
        <span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${formAPart2cInstance}" field="location"/></span>
    </li>
</g:if>

<g:if test="${formAPart2cInstance?.postalAddress}">
    <li class="fieldcontain">
        <span id="postalAddress-label" class="property-label"><g:message code="formAPart2c.postalAddress.label" default="Address" /></span>
        <span class="property-value" aria-labelledby="postalAddress-label"><g:fieldValue bean="${formAPart2cInstance}" field="postalAddress"/></span>
    </li>
</g:if>

<br/>
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

<br/>
<h4>
    <g:message code="formAPart2c.orgStructure.label" default="org structure" />
</h4>

<li class="fieldcontain">
    <span id="totalPersonnel-label" class="property-label"><g:message code="formAPart2c.totalPersonnel.label" default="totalPersonnel" /></span>
    <span class="property-value" aria-labelledby="totalPersonnel-label"><g:fieldValue bean="${formAPart2cInstance}" field="totalPersonnel"/>
    </span>
</li>

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

<br/>
<h4>
    <g:message code="formAPart2c.scientificDisciplines.label" default="scientific Disciplines" />
</h4>
<li>
    <span class="property-value" aria-labelledby="scientificDisciplines-label">
        <g:fieldValue bean="${formAPart2cInstance}" field="scientificDisciplines"/>
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

<br/>
<h4>
    <g:message code="formAPart2c.fundingSources.label" default="funding Sources" />
</h4>
<li>
    <span class="property-value" aria-labelledby="fundingSources-label">
        <g:fieldValue bean="${formAPart2cInstance}" field="fundingSources"/>
    </span>
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
    <span class="property-value" aria-labelledby="publicationPolicy-label">
        <g:fieldValue bean="${formAPart2cInstance}" field="publicationPolicy"/>
    </span>
</li>

<br/>
<h4>
    <g:message code="formAPart2c.publicPapers.label" default="public Papers" />
</h4>
<li>
    <span class="property-value" aria-labelledby="publicPapers-label">
        <g:fieldValue bean="${formAPart2cInstance}" field="publicPapers"/>
    </span>
</li>

<br/>
<h4>
    <g:message code="formAPart2c.bioDefenseWork.label" default="bio Defense Work" />
</h4>
<li>
    <span class="property-value" aria-labelledby="bioDefenseWork-label">
        <g:fieldValue bean="${formAPart2cInstance}" field="bioDefenseWork"/>
    </span>
</li>


