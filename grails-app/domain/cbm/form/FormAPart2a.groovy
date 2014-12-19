package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormAPart2a extends BaseForm {


    Boolean existingNationalProgrammes

    static belongsTo = [report:Report]
    String toString() {
        "${existingNationalProgrammes}"
    }

    static constraints = {
        existingNationalProgrammes widget: 'radio'
    }
}
