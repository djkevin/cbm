package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormAPart2a extends BaseForm {

    static auditable = true
    Boolean existingNationalProgrammes
    Report report

    String toString() {
        "${existingNationalProgrammes}"
    }

    static constraints = {
        existingNationalProgrammes widget: 'radio'
    }
}
