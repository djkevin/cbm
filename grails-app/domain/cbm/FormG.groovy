package cbm


class FormG extends BaseForm {

    static auditable = true
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
