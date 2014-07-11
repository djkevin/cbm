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
        if (val?.pastBiologicalActivity == null) {
            return 'formF.offensiveActivity.activity.notchecked.error'
        } else if (val.pastBiologicalActivity && (!val.periodOfActivity || !val.summaryOfRnDActivities)) {
            return 'formF.offensiveActivity.activity.empty.fields.error'
        }  else if  (val.summaryOfRnDActivities.length() > 10000) {
            return ['cbm.form.FormF.offensiveActivity.summaryOfRnDActivities.maxSize.error', 10000]
        }
    }
    static pastDefensiveActivityValidator = { val ->
        if (val?.pastBiologicalActivity == null) {
            return 'formF.defensiveActivity.activity.notchecked.error'
        } else if (val.pastBiologicalActivity && (!val.periodOfActivity || !val.summaryOfRnDActivities)) {
            return 'formF.defensiveActivity.activity.empty.fields.error'
        } else if (val.summaryOfRnDActivities.length() > 10000) {
            //TODO fetch from constraints e.g like offensiveActivity?.constraints?.summaryOfRnDActivities?.maxSize
            return ['cbm.form.FormF.defensiveActivity.summaryOfRnDActivities.maxSize.error', 10000]
        }

    }

    String toString() {
        return id
    }
}