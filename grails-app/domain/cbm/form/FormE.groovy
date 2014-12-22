package cbm.form

import cbm.BaseForm
import cbm.DeclarationOfMeasures
import cbm.report.Report

class FormE extends BaseForm {

    static belongsTo = [Report]
    static embedded = ['developmentAndMeansOfDelivery', 'exportsOfMicroOrganisms', 'importsOfMicroOrganisms', 'biosafetyAndBioSecurity']

    DeclarationOfMeasures developmentAndMeansOfDelivery
    DeclarationOfMeasures exportsOfMicroOrganisms
    DeclarationOfMeasures importsOfMicroOrganisms
    DeclarationOfMeasures biosafetyAndBioSecurity

    String additionalComments

    Report report

    static constraints = {
        //val maxSize: 2000, blank: false, nullable: false
        additionalComments nullable: true, blank: true, maxSize: 20000, validator: { val, object ->
            def err = true
            if (object.developmentAndMeansOfDelivery?.hasDeclaration() && (!val || val?.isEmpty())) {
                err = 'formE.additionalComments.development.blank.error'
            }
            if (object.exportsOfMicroOrganisms?.hasDeclaration() && (!val || val?.isEmpty())) {
                err = 'formE.additionalComments.export.blank.error'
            }
            if (object.importsOfMicroOrganisms?.hasDeclaration() && (!val || val?.isEmpty())) {
                err = 'formE.additionalComments.import.blank.error'
            }
            if (object.biosafetyAndBioSecurity?.hasDeclaration() && (!val || val?.isEmpty())) {
                err = 'formE.additionalComments.biosafety.blank.error'
            }
            err
        }

    }

    String toString() { id }

}
