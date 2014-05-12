package cbm.form

import cbm.Address
import cbm.BaseForm
import cbm.Report


class FormG extends BaseForm {

    static belongsTo = [Report]
    static embedded = ['location']

    String facilityName
    Address location
    String typesOfDiseaseCovered

    Report report

    static constraints = {
        facilityName maxSize: 250, blank: false
        location()
        typesOfDiseaseCovered maxSize: 5000

    }

    String toString(){
        facilityName
    }
}