package cbm.form

import cbm.BaseForm
import cbm.PastBiologicalRnDActivity
import cbm.report.Report

class FormF extends BaseForm {

    static belongsTo = [Report]
    static embedded = ['offensiveActivity', 'defensiveActivity']

    Date entryIntoForceOfConvention

    PastBiologicalRnDActivity offensiveActivity
    PastBiologicalRnDActivity defensiveActivity

    Report report


    static constraints = {
        entryIntoForceOfConvention()
        offensiveActivity validator: pastActivityValidator
        defensiveActivity validator: pastActivityValidator

    }

    static pastActivityValidator = { val ->
        if (val.pastBiologicalActivity && (!val.periodOfActivity || !val.summaryOfRnDActivities)) {
            return 'default.blank.message'
        }
    }
}