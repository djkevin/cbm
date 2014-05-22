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
        offensiveActivity validator: pastOffensiveActivityValidator
        defensiveActivity validator: pastDefensiveActivityValidator

    }

    static pastOffensiveActivityValidator = { val ->
        if (val?.pastBiologicalActivity == null){
            return 'formF.offensiveActivity.activity.notchecked.error'
        }
        if (val.pastBiologicalActivity && (!val.periodOfActivity || !val.summaryOfRnDActivities)) {
            return 'formF.offensiveActivity.activity.empty.fields.error'
        }
    }
    static pastDefensiveActivityValidator = { val ->
        if (val?.pastBiologicalActivity == null){
            return 'formF.defensiveActivity.activity.notchecked.error'
        }
        if (val.pastBiologicalActivity && (!val.periodOfActivity || !val.summaryOfRnDActivities)) {
            return 'formF.defensiveActivity.activity.empty.fields.error'
        }
    }

    String toString(){
        return id
    }
}