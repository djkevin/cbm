<%@ page import="cbm.form.FormAPart2c" %>
<%@ page import="cbm.report.Report" %>
<%@ defaultCodec="none" %>

<!--  retrieve the Report object associated with this FormAPart2c object, because we need to use the report id and name. -->
<g:set var="report" value="${formAPart2cInstance?.formAPart2b?.report}" />

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formAPart2c.label', default: 'FormAPart2c')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formAPart2c" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li>
                    %{--<g:link class="list" controller="report" action="show" id="${report.id}">${report.reportName}</g:link>--}%
                    %{--<g:link class="list" controller="formAPart2b" action="show" id="${formAPart2cInstance?.formAPart2b?.id}">${formAPart2cInstance?.formAPart2b}</g:link>--}%
                    <g:link class="list" controller="report" action="show" id="${formAPart2cInstance?.formAPart2b?.report?.id}">${formAPart2cInstance?.formAPart2b?.report?.reportName}</g:link>
                </li>
			</ul>
		</div>
		<div id="show-formAPart2c" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formAPart2c">
			
				<li class="fieldcontain">
                    <span id="language-label" class="property-label">
                    	<g:message code="report.reportName.label" default="Report Name" /></span>
                    <span class="property-value" aria-labelledby="language-label">                    	                    
						${report.reportName}                    	                   	
                    </span>
                </li>
                    
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


                <g:if test="${formAPart2cInstance?.orgStructureComments1}">
                    <h4><g:message code="default.additional.comments.label" default="Additional Comments" /></h4>
                    <li>
                        <span class="property-value" aria-labelledby="orgStructureComments3-label">${formAPart2cInstance.orgStructureComments1}</span>
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
                        <span class="property-value" aria-labelledby="orgStructureComments3-label">${formAPart2cInstance.orgStructureComments2}</span>
                    </li>
                    <br/>
                </g:if>
				
				<!--  2 fields below merged as CSV above -->
				<%-- li class="fieldcontain">
					<span id="militaryPersonnel-label" class="property-label"><g:message code="formAPart2c.militaryPersonnel.label" default="militaryPersonnel" /></span>					
					<span class="property-value" aria-labelledby="militaryPersonnel-label"><g:fieldValue bean="${formAPart2cInstance}" field="militaryPersonnel"/>
					</span>					
				</li>
								
				<li class="fieldcontain">
					<span id="civilianPersonnel-label" class="property-label"><g:message code="formAPart2c.civilianPersonnel.label" default="civilianPersonnel" /></span>					
					<span class="property-value" aria-labelledby="civilianPersonnel-label"><g:fieldValue bean="${formAPart2cInstance}" field="civilianPersonnel"/>
					</span>					
				</li--%>
				
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

				<!--  4 fields below merged into CSV above -->
				<%-- li class="fieldcontain">
					<span id="scientists-label" class="property-label"><g:message code="formAPart2c.scientists.label" default="scientists" /></span>					
					<span class="property-value" aria-labelledby="scientists-label"><g:fieldValue bean="${formAPart2cInstance}" field="scientists"/>
					</span>					
				</li>
				
				<li class="fieldcontain">
					<span id="engineers-label" class="property-label"><g:message code="formAPart2c.engineers.label" default="engineers" /></span>					
					<span class="property-value" aria-labelledby="engineers-label"><g:fieldValue bean="${formAPart2cInstance}" field="engineers"/>
					</span>					
				</li>

				<li class="fieldcontain">
					<span id="technicians-label" class="property-label"><g:message code="formAPart2c.technicians.label" default="technicians" /></span>					
					<span class="property-value" aria-labelledby="technicians-label"><g:fieldValue bean="${formAPart2cInstance}" field="technicians"/>
					</span>					
				</li>
				
				<li class="fieldcontain">
					<span id="administratorss-label" class="property-label"><g:message code="formAPart2c.administrators.label" default="administrators" /></span>					
					<span class="property-value" aria-labelledby="administrators-label"><g:fieldValue bean="${formAPart2cInstance}" field="administrators"/>
					</span>					
				</li --%>				
	
				<br/>
				<h4>
					<g:message code="formAPart2c.scientificDisciplines.label" default="scientific Disciplines" />		
				</h4>
				<li>
					<span class="property-value" aria-labelledby="scientificDisciplines-label">${formAPart2cInstance.scientificDisciplines}</span>
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
		
				<g:set var="formInstance" value="${formAPart2cInstance}"></g:set>
                <g:render template="../showStatus" />
	
			</ol>
			<g:form url="[resource:formAPart2cInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formAPart2cInstance}" params="['report.id':report.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="print" action="print" resource="${formAPart2cInstance}" target="_blank" title="${message(code: 'global.print.help')}"><g:message code="global.print.label"/>  </g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
