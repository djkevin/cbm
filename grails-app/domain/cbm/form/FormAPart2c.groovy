package cbm.form

import cbm.Address
import cbm.BaseForm
import cbm.admin.Country
import cbm.report.Report

/**
 * Detailed info on facilities. Each program (FormAPart2b) can have many facilities assigned/contributing to it
 */

class FormAPart2c extends BaseForm {

    static belongsTo = [FormAPart2b]

    static embedded = ['location']

    FormAPart2b formAPart2b

    String facilityName
    Address location
    Country country

    String geolocation

    // fields unique to this form
    BigDecimal floorAreaBL2
    BigDecimal floorAreaBL3
    BigDecimal floorAreaBL4

    Integer militaryPersonnel
    Integer civilianPersonnel

    Integer scientists
    Integer engineers
    Integer technicians
    Integer administrators

    String scientificDisciplines
    Integer contractors
    String fundingSources
    Long fundResearch
    Long fundDevelopment
    Long fundTest

    String orgStructureComments1
    String orgStructureComments2
    String orgStructureComments3

    String contractWorkersComments
    String floorAreaComments

    String publicationPolicy
    String publicPapers
    String bioDefenseWork
    // Report report
    static mapping = {
        publicPapers type: 'text'
        orgStructureComments1 type: 'text'
        orgStructureComments2 type: 'text'
        orgStructureComments3 type: 'text'
        contractWorkersComments type: 'text'
        floorAreaComments type: 'text'
    }

    static transients = ['totalFloorArea', 'totalPersonnel', 'report']

    static constraints = {
        facilityName maxSize: 250, blank: false
        //location maxSize: 500, blank: false
        geolocation maxSize: 500, blank: false
        floorAreaBL2 nullable: false, min: 0.0
        floorAreaBL3 nullable: false, min: 0.0
        floorAreaBL4 nullable: false, min: 0.0
        militaryPersonnel nullable: false, min: 0
        civilianPersonnel nullable: false, min: 0
        scientists nullable: false, min: 0
        engineers nullable: false, min: 0
        technicians nullable: false, min: 0
        administrators nullable: false, min: 0
        scientificDisciplines maxSize: 5000, blank: false
        contractors nullable: false, min: 0
        fundingSources maxSize: 5000, blank: false
        fundResearch nullable: false, min: 0L
        fundDevelopment nullable: false, min: 0L
        fundTest nullable: false, min: 0L
        publicationPolicy maxSize: 5000, blank: true
        publicPapers maxSize: 65000, blank: true
        bioDefenseWork maxSize: 5000, blank: true
        orgStructureComments1 maxSize: 5000, blank: true, nullable: true
        orgStructureComments2 maxSize: 5000, blank: true, nullable: true
        orgStructureComments3 maxSize: 5000, blank: true, nullable: true
        contractWorkersComments maxSize: 5000, blank: true, nullable: true
        floorAreaComments maxSize: 5000, blank: true, nullable: true
        country nullable: false

    }

    BigDecimal getTotalFloorArea() {
        floorAreaBL2.plus(floorAreaBL3).plus(floorAreaBL4)
    }

    Long getTotalPersonnel() {
        militaryPersonnel.plus(civilianPersonnel)
    }

    String toString() { "${facilityName}" }

    // To make this form have a similar behavior to other forms. Used in SecurityFilters
    Report getReport() { formAPart2b.report }

}
