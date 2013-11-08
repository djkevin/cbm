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
		comment = "Forensic Laboratory"
	}
	
	containmentUnit2(FormAPart1ContainmentUnit) {
		facility = [facility1]
				bioSafetyLevel = "Enhanced BSL3"
				unitType = "treatment module"
				unitSize = "250"
				comment = "Chemical diseases lab"
	}
	
	facility2(FormAPart1) {
		facilityName = "National High Security Quarantine Laboratory (NHSQL)"
		responsibleOrganisation = "Department of Health and Ageing (Commonwealth Government), Victorian Department of Human Services (State Government)"
		location = "Victorian Infectious Diseases, Reference Laboratory, 10 Wreckyn Street, North Melbourne VIC, AUSTRALIA"
		postalAddress = "National High Security, Quarantine Laboratory, c/o VIDRL, Locked Bag 815, Carlton South VIC 3053, AUSTRALIA"
		financingSources = "This facility receives no funding from the Australian Government Department of Defence. It receives funding from the Commonwealth and State Departments of Health"
		scope = "<p>The diagnosis of possible imported cases of viral haemorrhagic fever or other quarantinable viral diseases that present a significant danger to the Australian community. Development of laboratory tests and protocols for exotic respiratory viral diseases, including influenza virus A/H5N1 (bird flu) and SARS. In addition, VIDRL has established and maintained the capability to perform diagnostic testing for the variola virus. See, also, background information"
	}
	
	facility3(FormAPart1) {
		facilityName = "Queensland Health Forensic Scientific Services (QHFSS)"
		responsibleOrganisation = "Queensland Department of Health (State Government)"
		location = "39 Kessels Road, Coopers Plains, QLD, AUSTRALIA"
		postalAddress = "PO Box 594, Archefield QLD 4108, AUSTRALIA"
		financingSources = "This facility receives no funding from the Australian Government Department of Defence. It receives funding from Queensland Department of Health"
		scope = "<p>The maximum containment facility at QHFSS, a state government public health virology laboratory, has both a diagnostic and a research function. The maximum containment facilities are used for the development and performance of diagnostic tests on patients with suspected exotic or endemic viral illness. This includes Henipah viruses or exotic haemorrhagic fever viruses. The only PC4 level pathogens that the laboratory has are Hendra virus and SARS coronavirus (AQIS QC4), which are used for diagnostic purposes. The laboratory intends to introduce reagents useful for the diagnosis of a number of exotic viral diseases including Ebola, Marburg, Lassa, Junin, Rift Valley fevers and Hantavirus among others. These reagents will consist of either inactivated diagnostic reagents, cloned viral subunits or live virus.</p>"
	}

}