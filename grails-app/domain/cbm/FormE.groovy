package cbm

class FormE extends BaseForm {

    static auditable = true
    static belongsTo = [Report]
    static embedded = ['developmentAndMeansOfDelivery', 'exportsOfMicroOrganisms', 'importsOfMicroOrganisms', 'biosafetyAndBioSecurity']

    DeclarationOfMeasures developmentAndMeansOfDelivery
    DeclarationOfMeasures exportsOfMicroOrganisms
    DeclarationOfMeasures importsOfMicroOrganisms
    DeclarationOfMeasures biosafetyAndBioSecurity

    String additionalComments

    Report report

    static constraints = {

    }
}
