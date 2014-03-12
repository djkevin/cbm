package cbm

class FormAPart1b extends BaseForm {

    Boolean bioSafetyLevel3
    Boolean bioSafetyLevel2
    String additionalInformation
    Report report

    String toString() {
        return bioSafetyLevel3 ? "BSL3" : (bioSafetyLevel2 ? "BSL2" : "no data")
    }


    static constraints = {
        bioSafetyLevel3()
        bioSafetyLevel2()
        additionalInformation maxSize: 5000
    }
}