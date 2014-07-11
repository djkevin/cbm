package cbm.report

import cbm.admin.StateParty
import cbm.constants.Language
import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus
import cbm.form.*
import org.joda.time.LocalDate

class Report {

    static hasMany = [formAPart1: FormAPart1a, formAPart2b: FormAPart2b, formB: FormB, formC: FormC, formE: FormE, formF: FormF, formG: FormG]
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
    static int currentYear = new LocalDate().getYear()

    String getReportName() {
        "${stateParty.country.toString()}_${year}".replaceAll(/\w+/) { w -> capitalize(w) } + "_${language.abbreviation}"
    }

    StateParty stateParty

    static transients = ['reportName', 'currentYear']

    static constraints = {
        language unique: ['year', 'stateParty']
        year range: currentYear..currentYear - 5
        reportStatus blank: false
        publicationStatus blank: false// inList: ["Not published", "Published"]
        officialVersion()
        //Set below hasOne relationships to nullable to avoid validation errors upon bootstrap
        formAPart1b nullable: true
        formAPart2a nullable: true
        formZero nullable: true
    }

    String toString() {
        return "${stateParty?.country}_${year}_${language?.abbreviation}"
    }

    def capitalize(s) { //TODO remove and replace by name
        return s
        //s[0].toUpperCase() + s[1..-1].toLowerCase()
    }

    public Set<FormAPart2c> getFormAPart2cs() {
        Set<FormAPart2c> formAPart2c = new HashSet<FormAPart2c>()
        for (def faP2b : formAPart2b) {
            formAPart2c.addAll(faP2b.formAPart2c)
        }
        return formAPart2c

    }

    public boolean hasBSL4(){
        if (!formAPart1) return false;

        for (FormAPart1a formAPart1a: formAPart1){
            if (formAPart1a.hasBSL4()){
                return  true
            }
        }
        return false;
    }


}
