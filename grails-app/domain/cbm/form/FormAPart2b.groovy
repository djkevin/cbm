package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormAPart2b extends BaseForm {

    static belongsTo = [Report]
    static hasMany = [formAPart2c: FormAPart2c]
    static hasOne = [formAPart2bOrganigram: FormAPart2bOrganigram]

    String programName
    String objectives
    //Funding Source and amounts
    Boolean conductedUnderContract// or String?
    String proportionContracted
    String summaryObjectivesContractor
    //byte[] organisationalStructureDiagram     //Uploaded files bind automatically to byte[] field
    String declaration
    BigDecimal amount
    String source

//    FormAPart2bOrganigram formAPart2bOrganigram


    Report report

    String toString() {
        return "${programName}"
    }


    static constraints = {
        programName blank: false, maxSize: 200
        objectives blank: false, maxSize: 5000
        conductedUnderContract()
        proportionContracted blank: false, maxSize: 5000
        summaryObjectivesContractor blank: false, maxSize: 5000
       /* organisationalStructureDiagram nullable: true, size: 0..1024 * 1024 * 5 //5MB*/
        declaration blank: false, maxSize: 5000
        amount min: 0.01, max: 1000000000.00, scale: 2, blank: false
        source maxSize: 500
        //formAPart2c nullable: true
        formAPart2bOrganigram nullable: true

    }
}
