package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormAPart2b extends BaseForm {

    static belongsTo = [report:Report]
    static hasMany = [formAPart2c: FormAPart2c]
    static hasOne = [formAPart2bOrganigram: FormAPart2bOrganigram]

    String programName
    String objectives
    //Funding Source and amounts
    Boolean conductedUnderContract// or String?
    String proportionContracted
    String summaryObjectivesContractor
    String organigramDescription
    BigDecimal amount
    String source
    Currency currency


    String toString() {
        return "${programName}"
    }

    static mapping = {
        objectives type: 'text'
        proportionContracted type: 'text'
        summaryObjectivesContractor type: 'text'
        organigramDescription type: 'text'
    }


    static constraints = {
        programName blank: false, maxSize: 200
        objectives blank: false, maxSize: 65000
        conductedUnderContract validator: {val, object ->
            def res  = true
            if (val){
                if (!object.proportionContracted || !object.summaryObjectivesContractor){
                    res = 'formAPart2b.error.conducted.under.contract'
                }
            }
            res
        }
        proportionContracted maxSize: 65000, nullable: true
        summaryObjectivesContractor maxSize: 65000, nullable: true
        amount min: 0.01, max: 1000000000.00, scale: 2, blank: false
        source maxSize: 5000
        formAPart2bOrganigram nullable: true
        organigramDescription maxSize: 65000, nullable: true

    }
}
