package cbm.form

import cbm.Address
import cbm.BaseForm
import cbm.admin.Country
import cbm.report.Report


class FormG extends BaseForm {

    static belongsTo = [Report]
    static embedded = ['location']

    String facilityName
    Address location
    Country country
    String typesOfDiseaseCovered

    Report report

    static constraints = {
        facilityName maxSize: 250, blank: false
        location()
        typesOfDiseaseCovered maxSize: 5000, blank:false
        country nullable: false

    }

    String toString(){
        facilityName
    }
}
