package cbm.report

import cbm.admin.StateParty
import cbm.constants.Language
import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus
import cbm.form.*
import org.joda.time.LocalDate

class Report {

    static hasMany = [formAPart1: FormAPart1a, formAPart2b: FormAPart2b, formB: FormB, formC: FormC, formE: FormE, formF: FormF, formG: FormG]
    static hasOne = [formAPart1b: FormAPart1b, formAPart2a: FormAPart2a, formZero: FormZero]
// for hasOne a Report object has to be specified on the other side
    static belongsTo = [stateParty: StateParty]
    static auditable = true

    Date dateCreated
    Date lastUpdated

    Language language
    Integer year
    ReportStatus reportStatus

    /** indicates whether report is published or not, meaning can be viewed by other State Parties and/or general public. */
    PublicationStatus publicationStatus

    Boolean officialVersion
    static int currentYear = new LocalDate().getYear()

    String getReportName() {
        "${stateParty.country.toString()}_${year}_${language.abbreviation}"
    }


    static transients = ['reportName', 'currentYear']

    static constraints = {
        language unique: ['year', 'stateParty', 'officialVersion']
        year range: currentYear..1975
        reportStatus blank: false
        publicationStatus blank: false// inList: ["Not published", "Published"]
        officialVersion()
        //Set below hasOne relationships to nullable to avoid validation errors upon bootstrap
        formAPart1b nullable: true
        formAPart2a nullable: true
        formZero nullable: true
    }

    String toString() { "${stateParty?.country}_${year}_${language?.abbreviation}" }

    public Set<FormAPart2c> getFormAPart2cs() {
        Set<FormAPart2c> formAPart2c = new HashSet<FormAPart2c>()
        for (def faP2b : formAPart2b) {
            formAPart2c.addAll(faP2b.formAPart2c)
        }
        formAPart2c
    }

    public boolean hasBSL4() {
        if (!formAPart1) return false;

        for (FormAPart1a formAPart1a : formAPart1) {
            if (formAPart1a.hasBSL4()) {
                return true
            }
        }
        return false;
    }


}
