package cbm

class FormF extends BaseForm {

    static auditable = true
    static belongsTo = [Report]
    static embedded = ['offensiveActivity', 'defensiveActivity']

    Date entryIntoForceOfConvention

    PastBiologicalRnDActivity offensiveActivity
    PastBiologicalRnDActivity defensiveActivity

    Report report


    static constraints = {
        entryIntoForceOfConvention()
    }
}