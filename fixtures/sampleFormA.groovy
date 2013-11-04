import cbm.FormAPart1
import cbm.FormAPart1ContainmentUnit

fixture {
	facility1(FormAPart1) {
		facilityName = "Australian Animal Health Laboratory (AAHL)"
		responsibleOrganisation = "Commonwealth Scientific and Industrial Research Organisation (CSIRO) (Federal Government) and the Department of Agriculture, Fisheries and Forestry (Federal Government). Note: Australia has a two-tiered system of Government, with the Federal Government and, to a lesser extent, the six respective State Governments and two Territories all involved in the formulation and implementation of Government policy."
		location = "5 Port Arlington Road, Geelong, Victoria, AUSTRALIA"
		postalAddress = "PO Bag 24, Geelong VIC 3220, AUSTRALIA"
		financingSources = "The AAHL is funded by the Australian Government, via CSIRO and the Department of Agriculture, Fisheries and Forestry. It is also funded by industry organisations and commercial companies."
		scope = "<p>The AAHL plays a <b>vital</b> role in maintaining Australia's capability to diagnose quickly exotic (foreign) and emerging animal diseases. This is achieved through ongoing research programs to develop the most sensitive, accurate and timely diagnostic tests, which are critical to the success of any eradication campaign in the event of a disease outbreak. AAHL also undertakes research on exotic, new and emerging diseases to better understand the disease process and drivers for emergence of new diseases, to develop new diagnostic tests, vaccines and treatments for endemic animal diseases of national importance. Major diseases of livestock, aquaculture animals, and wildlife, are studied. AAHL includes a high-biocontainment facility, to safely fulfil its major role of diagnosing emergency animal disease outbreaks.</p>"
	}
	
	containmentUnit1(FormAPart1ContainmentUnit) {
		facility = [facility1]
		bioSafetyLevel = "BSL4"
		unitType = "laboratory"
		unitSize = "250"
		comment = "Sample comment"
	}

}