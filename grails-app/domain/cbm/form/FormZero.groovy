package cbm.form

import cbm.BaseForm
import cbm.DeclarationForm
import cbm.report.Report

class FormZero extends BaseForm {

    static belongsTo = [Report]
    static embedded = ['formAPart1', 'formAPart2a', 'formAPart2b', 'formAPart2c', 'formB', 'formC', 'formE', 'formF', 'formG']


    DeclarationForm formAPart1
    DeclarationForm formAPart2a
    DeclarationForm formAPart2b
    DeclarationForm formAPart2c
    DeclarationForm formB
    DeclarationForm formC
    DeclarationForm formE
    DeclarationForm formF
    DeclarationForm formG
    //Use embedded fields for nothing to declare patterns
    Report report

    static constraints = {
        formAPart1 validator: declarationValidator
        formAPart2a validator: declarationValidator
        formAPart2b validator: declarationValidator
        formAPart2c validator: declarationValidator
        formB validator: declarationValidator
        formC validator: declarationValidator
        formE validator: declarationValidator
        formF validator: declarationValidator
        formG validator: declarationValidator
    }

    static declarationValidator = { val ->

        if (val.nothingToDeclare && val.nothingNewToDeclare) {
            return 'formZero.bothFieldsChecked.error'
        }
     /*   if (!val.nothingToDeclare && !val.nothingNewToDeclare) {
            return 'formZero.no.checkbox.selected'
        }*/
        if (val.nothingNewToDeclare && !val.yearOfLastDeclaration) {
            return 'formZero.noYearSelected.error'
        }
        if (!val.nothingNewToDeclare && val.yearOfLastDeclaration) {
            return 'formZero.error.year.without.nothing.new'
        }

    }

    String toString() {
        return "${title}_${id}"
    }
}
