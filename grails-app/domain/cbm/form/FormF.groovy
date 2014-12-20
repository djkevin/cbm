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
        entryIntoForceOfConvention() //range: new LocalDate().getYear()..1975
        offensiveActivity validator: pastOffensiveActivityValidator
        defensiveActivity validator: pastDefensiveActivityValidator

    }

    static pastOffensiveActivityValidator = { val ->
        def error = true
        if (val?.pastBiologicalActivity == null) {
            error =  'formF.offensiveActivity.activity.notchecked.error'
        } else if (val.pastBiologicalActivity && (!val.periodOfActivity || !val.summaryOfRnDActivities)) {
            error =  'formF.offensiveActivity.activity.empty.fields.error'
        } else if (val.summaryOfRnDActivities?.length() > 10000) {
            error =  ['cbm.form.FormF.offensiveActivity.summaryOfRnDActivities.maxSize.error', 10000]
        }
        error
    }
    static pastDefensiveActivityValidator = { val ->
        def error = true
        if (val?.pastBiologicalActivity == null) {
            error =  'formF.defensiveActivity.activity.notchecked.error'
        } else if (val.pastBiologicalActivity && (!val.periodOfActivity || !val.summaryOfRnDActivities)) {
            error =  'formF.defensiveActivity.activity.empty.fields.error'
        } else if (val.summaryOfRnDActivities?.length() > 10000) {
            //TODO fetch from constraints e.g like offensiveActivity?.constraints?.summaryOfRnDActivities?.maxSize
            error =  ['cbm.form.FormF.defensiveActivity.summaryOfRnDActivities.maxSize.error', 10000]
        }
        error
    }

    String toString() { id }
}