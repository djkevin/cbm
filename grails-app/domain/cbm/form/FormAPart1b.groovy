package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormAPart1b extends BaseForm {

    Boolean bioSafetyLevel3
    Boolean bioSafetyLevel2
    String additionalInformation
    Report report

    String toString() {
        return bioSafetyLevel3 ? "BSL3" : (bioSafetyLevel2 ? "BSL2" : "no data")
    }


    static constraints = {
        bioSafetyLevel3 nullable: true, validator: bsl3Validator
        bioSafetyLevel2 nullable: true, validator: bsl3Validator
        additionalInformation nullable: true, maxSize: 5000
    }

    static bsl3Validator = { val, object ->
        if (object.bioSafetyLevel3 && object.bioSafetyLevel2) {
            return 'formAPart1b.BSL.both.error'
        }

        if (!object.bioSafetyLevel3 && !object.bioSafetyLevel2) {
            return 'formAPart1b.BSL.min.error'
        }

    }
}