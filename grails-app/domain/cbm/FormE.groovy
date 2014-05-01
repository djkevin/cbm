package cbm

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
        additionalComments maxSize: 2000, blank: true, nullable: true
    }
}
