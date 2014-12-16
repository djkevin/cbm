package cbm.form

import cbm.Address
import cbm.BaseForm
import cbm.admin.Country
import cbm.report.Report

class FormAPart1a extends BaseForm {

    static belongsTo = [Report]
    static hasMany = [formAContainmentUnitList: FormAPart1ContainmentUnit]

    static embedded = ['location']

    String facilityName
    String responsibleOrganisation
//    String location
//    String postalAddress
    String financingSources
    String scope
    Report report
    Boolean declaredInAccordanceWithFormAPart2c
    Address location
    Country country


    String toString() {
        facilityName
    }


    static constraints = {
        facilityName maxSize: 250, blank: false, nullable: false
        responsibleOrganisation maxSize: 500, blank: false
//        location maxSize: 500, blank: false
//        postalAddress maxSize: 500, blank: false
        financingSources maxSize: 1000, blank: false
        scope maxSize: 10000, blank: false
        formAContainmentUnitList nullable: true
        country nullable: false
    }

    public boolean hasBSL4() {
        if (!formAContainmentUnitList) return false

        for (FormAPart1ContainmentUnit formAPart1ContainmentUnit:formAContainmentUnitList){
            if (formAPart1ContainmentUnit.bioSafetyLevel.equalsIgnoreCase("BSL4")){
                return true
            }
        }
        return false

    }
}
