import cbm.*
import cbm.admin.StateParty
import cbm.form.FormAPart1ContainmentUnit
import cbm.form.FormAPart1a
import cbm.form.FormAPart1b
import cbm.form.FormAPart2a
import cbm.form.FormAPart2b
import cbm.form.FormAPart2c
import cbm.form.FormB
import cbm.report.Report
import cbm.usermgt.AdminUser
import cbm.usermgt.SecRole
import cbm.usermgt.SecUserSecRole
import cbm.usermgt.User

fixture {
    spSWE(StateParty) {
        country = "SWEDEN"
        accessionRatification = new Date()
    }

    spUS(StateParty) {
        country = "UNITED_STATES_OF_AMERICA"
        accessionRatification = new Date()
    }

    spUK(StateParty) {
        country = "UNITED_KINGDOM_OF_GREAT_BRITAIN_AND_NORTHERN_IRELAND"
        accessionRatification = new Date()
    }

    spMAL(StateParty) {
        country = "MALAYSIA"
        accessionRatification = new Date()
    }
    spBEL(StateParty) {
        country = "BELGIUM"
        accessionRatification = new Date()
    }

    spAUS(StateParty) {
        country = "AUSTRALIA"
        accessionRatification = new Date()
    }

    spCAN(StateParty) {
        country = "CANADA"
        accessionRatification = new Date()
    }

    spMUS(StateParty) {
        country = "MAURITIUS"
        accessionRatification = new Date()
    }

    spSWI(StateParty) {
        country = "SWITZERLAND"
        accessionRatification = new Date()
    }

    spGRE(StateParty) {
        country = "GREECE"
        accessionRatification = new Date()
    }

    userSweden(User) {
        username = "sweden"
        password = "sweden"
        stateParty = [spSWE]
    }

    userUS(User) {
        username = "unitedstates"
        password = "unitedstates"
        stateParty = [spUS]
    }

    userUK(User) {
        username = "unitedkingdom"
        password = "unitedkingdom"
        stateParty = [spUK]
    }

    userMalaysia(User) {
        username = "malaysia"
        password = "malaysia"
        stateParty = [spMAL]
    }

    userBelgium(User) {
        username = "belgium"
        password = "belgium"
        stateParty = [spBEL]
    }

    userCanada(User) {
        username = "canada"
        password = "canada"
        stateParty = [spCAN]
    }

    userAustralia(User) {
        username = "australia"
        password = "australia"
        stateParty = [spAUS]
    }
    /*Create admin user*/
    userAdmin(AdminUser) {
        username = "admin"
        password = "admin"
    }

    roleAdmin(SecRole) {
        authority = 'ROLE_ADMIN'
    }

    userRoleAdmin(SecUserSecRole) {
        secUser = userAdmin
        secRole = roleAdmin
    }

    roleUser(SecRole) {
        authority = 'ROLE_USER'
    }

    userRoleCAN(SecUserSecRole) {
        secUser = userCanada
        secRole = roleUser
    }

    userRoleAUS(SecUserSecRole) {
        secUser = userAustralia
        secRole = roleUser
    }

    userRoleSWE(SecUserSecRole) {
        secUser = userSweden
        secRole = roleUser
    }
    userRoleUS(SecUserSecRole) {
        secUser = userUS
        secRole = roleUser
    }

    userRoleUK(SecUserSecRole) {
        secUser = userUK
        secRole = roleUser
    }

    userRoleMAL(SecUserSecRole) {
        secUser = userMalaysia
        secRole = roleUser
    }
    userRoleBEL(SecUserSecRole) {
        secUser = userBelgium
        secRole = roleUser
    }



    reportAUSTRALIA2010EN(Report) {
        stateParty = [spAUS]
//		country = "AUSTRALIA"
        language = "ENGLISH"
        year = "2010"
        reportStatus = "Draft"
        publicationStatus = "Not published"
        officialVersion = true
    }

    reportCANADA2010EN(Report) {
        stateParty = [spCAN]
//		country = "CANADA"
        language = "ENGLISH"
        year = "2010"
        reportStatus = "Draft"
        publicationStatus = "Not published"
        officialVersion = true
    }

    report3(Report) {
        stateParty = [spMUS]
//		country = "MAURITIUS"
        language = "ENGLISH"
        year = "2011"
        reportStatus = "Submitted"
        publicationStatus = "Published"
        officialVersion = true
    }

    report4(Report) {
        stateParty = [spSWI]
//		country = "SWITZERLAND"
        language = "ENGLISH"
        year = "2011"
        reportStatus = "Submitted"
        publicationStatus = "Published"
        officialVersion = true
    }

    facility1(FormAPart1a) {
        title = "formAPart1a"
        formStatus = "Completed"
        visibility = "Private"
        report = [reportCANADA2010EN]
        facilityName = "Animal Health Laboratory (AHL)"
        responsibleOrganisation = "Commonwealth Scientific and Industrial Research Organisation (CSIRO) (Federal Government) and the Department of Agriculture, Fisheries and Forestry (Federal Government). Note: Australia has a two-tiered system of Government, with the Federal Government and, to a lesser extent, the six respective State Governments and two Territories all involved in the formulation and implementation of Government policy."
        location = "5 Port Arlington Road, Geelong, Victoria, CANADA"
        postalAddress = "PO Bag 24, Geelong VIC 3220, CANADA"
        financingSources = "The AAHL is funded by the Canadian Government, via CSIRO and the Department of Agriculture, Fisheries and Forestry. It is also funded by industry organisations and commercial companies."
        scope = "<p>The AHL plays a <b>vital</b> role in maintaining Australia's capability to diagnose quickly exotic (foreign) and emerging animal diseases. This is achieved through ongoing research programs to develop the most sensitive, accurate and timely diagnostic tests, which are critical to the success of any eradication campaign in the event of a disease outbreak. AAHL also undertakes research on exotic, new and emerging diseases to better understand the disease process and drivers for emergence of new diseases, to develop new diagnostic tests, vaccines and treatments for endemic animal diseases of national importance. Major diseases of livestock, aquaculture animals, and wildlife, are studied. AAHL includes a high-biocontainment facility, to safely fulfil its major role of diagnosing emergency animal disease outbreaks.</p>"
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

    facility2(FormAPart1a) {
        title = "formAPart1a"
        formStatus = "Draft"
        visibility = "Public"
        report = [reportAUSTRALIA2010EN]
        facilityName = "National High Security Quarantine Laboratory (NHSQL)"
        responsibleOrganisation = "Department of Health and Ageing (Commonwealth Government), Victorian Department of Human Services (State Government)"
        location = "Victorian Infectious Diseases, Reference Laboratory, 10 Wreckyn Street, North Melbourne VIC, AUSTRALIA"
        postalAddress = "National High Security, Quarantine Laboratory, c/o VIDRL, Locked Bag 815, Carlton South VIC 3053, AUSTRALIA"
        financingSources = "This facility receives no funding from the Australian Government Department of Defence. It receives funding from the Commonwealth and State Departments of Health"
        scope = "<p>The diagnosis of possible imported cases of viral haemorrhagic fever or other quarantinable viral diseases that present a significant danger to the Australian community. Development of laboratory tests and protocols for exotic respiratory viral diseases, including influenza virus A/H5N1 (bird flu) and SARS. In addition, VIDRL has established and maintained the capability to perform diagnostic testing for the variola virus. See, also, background information"
    }

    facility3(FormAPart1a) {
        title = "formAPart1a"
        formStatus = "Draft"
        visibility = "Public"
        report = [reportCANADA2010EN]
        facilityName = "Ottawa Health Forensic Scientific Services (OHFSS)"
        responsibleOrganisation = "Queensland Department of Health (State Government)"
        location = "39 Kessels Road, Coopers Plains, QLD, OTTAWA"
        postalAddress = "PO Box 594, Archefield QLD 4108, OTTAWA"
        financingSources = "This facility receives no funding from the Canadian Government Department of Defence. It receives funding from Ottawa Department of Health"
        scope = "<p>The maximum containment facility at OHFSS, a state government public health virology laboratory, has both a diagnostic and a research function. The maximum containment facilities are used for the development and performance of diagnostic tests on patients with suspected exotic or endemic viral illness. This includes Henipah viruses or exotic haemorrhagic fever viruses. The only PC4 level pathogens that the laboratory has are Hendra virus and SARS coronavirus (AQIS QC4), which are used for diagnostic purposes. The laboratory intends to introduce reagents useful for the diagnosis of a number of exotic viral diseases including Ebola, Marburg, Lassa, Junin, Rift Valley fevers and Hantavirus among others. These reagents will consist of either inactivated diagnostic reagents, cloned viral subunits or live virus.</p>"
    }

    containmentUnit3(FormAPart1ContainmentUnit) {
        facility = [facility3]
        bioSafetyLevel = "BSL4"
        unitType = "laboratory"
        unitSize = "250"
        comment = "Forensic Laboratory"
    }

    containmentUnit4(FormAPart1ContainmentUnit) {
        facility = [facility3]
        bioSafetyLevel = "Enhanced BSL3"
        unitType = "treatment module"
        unitSize = "250"
        comment = "Chemical diseases lab"
    }


    formAPart1b1(FormAPart1b) {
        title = "formAPart1b1"
        formStatus = "Draft"
        visibility = "Public"
        report = [reportAUSTRALIA2010EN]
        bioSafetyLevel3 = true
        bioSafetyLevel2 = false
        additionalInformation = "some sample text"
    }

    formAPart1b2(FormAPart1b) {
        title = "formAPart1b2"
        formStatus = "Draft"
        visibility = "Public"
        report = [reportCANADA2010EN]
        bioSafetyLevel3 = true
        bioSafetyLevel2 = false
        additionalInformation = "formAPart1B for reportCANADA2010EN"
    }

    formAPart2a1(FormAPart2a) {
        report = [reportCANADA2010EN]
        existingNationalProgrammes = true
    }
    formAPart2a2(FormAPart2a) {
        report = [reportAUSTRALIA2010EN]
        existingNationalProgrammes = true
    }

    formAPart2b1(FormAPart2b) {
        title = "formAPart2b"
        formStatus = "Draft"
        visibility = "Public"
        programName = "sample programme in Canada"
        objectives = "sample objectives"
        conductedUnderContract = true
        proportionContracted = "sample proportion"
        summaryObjectivesContractor = "sample summary of the objectives"
        declaration = "sample declaration"
        amount = 1200000
        source = "sample source"
        report = [reportCANADA2010EN]
    }

    formAPart2c1(FormAPart2c) {
        title = "formAPart2c"
        formStatus = "Draft"
        visibility = "Private"

        formAPart2b = formAPart2b1

        facilityName = "sample facility name"
        location = "sample location"
        postalAddress = "22, impasse de null part, Ville-Loin, 12543 XX"

        floorAreaBL2 = 14
        floorAreaBL3 = 36
        floorAreaBL4 = 8

        militaryPersonnel = 12
        civilianPersonnel = 73
        scientists = 12
        engineers = 5
        technicians = 3
        administrators = 9

        scientificDisciplines = "some disciplines"
        contractors = 1
        fundingSources = "some information about funding sources"
        fundResearch = 120000
        fundDevelopment = 30000
        fundTest = 56000

        publicationPolicy = "some policy"
        publicPapers = "some papers"
        bioDefenseWork = "some biological defense work"
    }

    formBCAN(FormB) {
        title = "formBCAN"
        formStatus = "Draft"
        visibility = "Private"
        report = [reportCANADA2010EN]
        eventName = "Foot and mouth disease"
        eventCategory = "Animal"
        eventDate = "08/01/2007"
        locationAffected = "Surrey county, England"
        typeOfDisease = "Foot and mouth disease"
        sourceOfDisease = "Laboratory escape"
        possibleCause = "Foot and mouth disease virus"
        /*detailedSymptoms = "Vesicular condition of the feet, bucal mucosa and, in females, the mammary glands"*/
/*        deviationFromNormalPattern = "FMDV  is Exotic to the UK"*/
        numOfTotalCases = "238 animals at 8 premises"
        numDeaths = "0"
        developmentOfOutbreak = "In late July there was laboratory escape of pathogen with subsequent local spread. Spread contained by measures taken below and last case was reported on 29 August 2007."
        measuresTaken = "Stamping out, quarantine, movement control inside the country, zoning, disinfection of infected premises/ establishment(s), no vaccination and no treatment of affected animals."
        additionalInfo = "Further information is available at: http://www.defra.gov.uk/animalh/diseases/fmd/investigations/index.html"
    }


}