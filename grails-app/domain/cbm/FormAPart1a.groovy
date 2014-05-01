package cbm

class FormAPart1a extends BaseForm {

    static belongsTo = [Report]
    static hasMany = [formAContainmentUnitList: FormAPart1ContainmentUnit]
    String facilityName
    String responsibleOrganisation
    String location
    String postalAddress
    String financingSources
    String scope
    Report report


    String toString() {
        facilityName
    }


    static constraints = {
        facilityName maxSize: 250, blank: false
        responsibleOrganisation maxSize: 500, blank: false
        location maxSize: 500, blank: false
        postalAddress maxSize: 500, blank: false
        financingSources maxSize: 1000, blank: false
        scope maxSize: 5000, blank: false
        formAContainmentUnitList nullable: true
    }
}
