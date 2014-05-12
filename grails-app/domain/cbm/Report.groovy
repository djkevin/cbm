package cbm

import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus

class Report {

//    @I18nEnum
//    enum PublicationStatus {
//        NOTPUBLISHED, PUBLISHED
//    }

    static hasMany = [formAPart1: FormAPart1a, formAPart2b: FormAPart2b, formAPart2c: FormAPart2c, formB: FormB, formC: FormC, formE: FormE, formF: FormF, formG: FormG]
    static hasOne = [formAPart1b: FormAPart1b, formAPart2a: FormAPart2a, formZero: FormZero]// for hasOne a Report object has to be specified on the other side
    static belongsTo = [stateParty: StateParty]
    static auditable = true

    Date dateCreated
    Date lastUpdated

    Language language
    Integer year
    ReportStatus reportStatus
    PublicationStatus publicationStatus
    Boolean officialVersion

    String getReportName() {
        "${stateParty.country.toString()}_${year}".replaceAll(/\w+/) { w -> capitalize(w) } + "_${language.abbreviation}"
    }



    StateParty stateParty

    static transients = ['reportName']

    static constraints = {
//        reportName()
        language unique: ['year', 'stateParty']
        year range: 2000..2014//new LocalDate().getYear().intValue()
        reportStatus blank:false
        publicationStatus blank:false// inList: ["Not published", "Published"]
        officialVersion()
        //Set below hasOne relationships to nullable to avoid validation errors upon bootstrap
        formAPart1b nullable: true
        formAPart2a nullable: true
        formZero nullable: true
    }

    String toString() {
        return "${stateParty?.country}_${year}_${language?.abbreviation}"
    }

    def capitalize(s) { s[0].toUpperCase() + s[1..-1].toLowerCase() }


}
