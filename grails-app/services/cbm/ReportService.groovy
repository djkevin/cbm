package cbm

import cbm.constants.FormStatus
import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus
import cbm.constants.Visibility
import cbm.form.*
import cbm.report.Report
import grails.transaction.Transactional
import org.springframework.context.i18n.LocaleContextHolder

@Transactional
class ReportService {

    def messageSource

    /**
     * Checks if all the forms in a report are in status FormStatus.COMPLETED
     * If any form found in FormStatus.DRAFT, wrap it in an errors object
     * @param report
     * @return empty errors object if all forms are completed, else error map
     */
    def validateFormsCompletion(Report report) {

        def errors = []
        def locale = LocaleContextHolder.locale

        BaseForm.metaClass.static.isDraft = {->
            formStatus == FormStatus.DRAFT
        }

        def formAPart1s = report.formAPart1
        formAPart1s.each {
            if (it?.isDraft()) {
                errors << [messageSource.getMessage('formAPart1.label', null, "error", locale), "instance ${it.id}"]  //TODO use toString instead of id
            }

        }
        def formAPart1b = report.formAPart1b
        if (formAPart1b?.isDraft()) {
            errors << [messageSource.getMessage('formAPart1b.label', null, "error", locale), "instance ${formAPart1b.id}"]
        }

        def formAPart2a = report.formAPart2a
        if (formAPart2a?.isDraft()) {
            errors << [messageSource.getMessage('formAPart2a.label', null, "error", locale), "instance ${formAPart2a.id}"]
        }

        def formAPart2bs = report.formAPart2b
        formAPart2bs?.each {
            if (it?.isDraft()) {
                errors << [messageSource.getMessage('formAPart2b.label', null, "error", locale), "instance ${it.id}"]
            }
        }
        def formAPart2cs = report.formAPart2cs
        formAPart2cs?.each {
            if (it?.isDraft()) {
                errors << [messageSource.getMessage('formAPart2c.label', null, "error", locale), "instance ${it.id}"]
            }
        }
        def formBs = report.formB
        formBs?.each {
            if (it?.isDraft()) {
                errors << [messageSource.getMessage('formB.label', null, "error", locale), "instance ${it.id}"]
            }
        }
        def formCs = report.formC
        formCs?.each {
            if (it?.isDraft()) {
                errors << [messageSource.getMessage('formC.label', null, "error", locale), "instance ${it.id}"]
            }
        }
        def formEs = report.formE
        formEs?.each {
            if (it?.isDraft()) {
                errors << [messageSource.getMessage('formE.label', null, "error", locale), "instance ${it.id}"]
            }
        }
        def formFs = report.formF
        formFs?.each {
            if (it.isDraft()) {
                errors << [messageSource.getMessage('formF.label', null, "error", locale), "instance ${it.id}"]
            }
        }
        def formGs = report.formG
        formGs?.each {
            if (it?.isDraft()) {
                errors << [messageSource.getMessage('formG.label', null, "error", locale), "instance ${it.id}"]
            }
        }
        def formZero = report.formZero
        if (formZero?.isDraft()) {
            errors << [messageSource.getMessage('formZero.label', null, "error", locale), "instance ${formZero.id}"]
        }

        println "validateFormsCompletion:, errors: $errors"
        errors

    }

    /**
     * If no BSL4 containment unit declared in Form A Part 1a, a Form A Part 1b needs to be filled
     * @param report
     * @return error array to indicate the report did not pass BSL4 validation
     */
    def validateFormAPart1BSL4(Report report) {

        def formAPart1s = report.formAPart1
        def formAPart1b = report.formAPart1b

        def errors = []

        boolean hasBSL4 = false

        def locale = LocaleContextHolder.locale

        formAPart1s.each {
            if (it.hasBSL4()) {
                hasBSL4 = true
            }

        }

        if (!hasBSL4 && !formAPart1b) {
            errors << messageSource.getMessage('report.submit.formA.bsl4validation.error', null, "error", locale)
        }

        println "validateFormAPart1BSL4:, errors: $errors"
        errors
    }

    /**
     * If Form A Part 2 a is filled in, the user needs to fill in the Existing national Programmes (Form  A Part 2b)
     * @param report
     * @return error array if no national programmes are declared
     */
    def validateNationalProgrammes(Report report) {

        def errors = []
        def locale = LocaleContextHolder.locale

        def formAPart2a = report.formAPart2a
        def formAPart2bs = report.formAPart2b

        if (formAPart2a?.existingNationalProgrammes && !formAPart2bs) {
            errors << messageSource.getMessage('report.submit.formA.existing.programmes.error', null, "error", locale)
        }
        errors
    }

    /**
     * Submits the report
     * @param nerd
     */
    def submitReport(Report report) {
        report.publicationStatus = PublicationStatus.PUBLISHED
        report.reportStatus = ReportStatus.SUBMITTED
        report.save()
    }

    /**
     * saves to the db. used for both create and update
     * @param nerd
     */
    void save(Report report) {
        report.save() // No need to set flush:true - the transaction does it
    }


    void delete(Report report) {
        report.delete()
    }

    void delete(long reportId) {
        def report = Report.load(reportId)// only gets a proxy wrapping the id. Use over get(id)
        report.delete()
    }

    void saveForm(def form) {

        println "reportService.saveForm!!"
        form.save()
    }

    /**
     * Retrieves a Form object using its simpleName and long id
     * A Form object can be any of FormAPart1a, FormB, FormC ...
     * @param name className of the form
     * @param id
     * @return the form object if found, else false if either name or id not found
     */
    def getFormByNameAndId(String name, Long id) {

        def cbmForm

        switch (name) {
            case FormAPart1a.class.simpleName:
                cbmForm = FormAPart1a.get(id)

                break

            case FormAPart1b.class.simpleName:
                cbmForm = FormAPart1b.get(id)
                break

            case FormAPart2a.class.simpleName:
                cbmForm = FormAPart2a.get(id)

                break

            case FormAPart2b.class.simpleName:
                cbmForm = FormAPart2b.get(id)

                break

            case FormAPart2c.class.simpleName:
                cbmForm = FormAPart2c.get(id)

                break

            case FormB.class.simpleName:
                cbmForm = FormB.get(id)

                break

            case FormC.class.simpleName:
                cbmForm = FormC.get(id)

                break

            case FormE.class.simpleName:
                cbmForm = FormE.get(id)

                break

            case FormF.class.simpleName:
                cbmForm = FormF.get(id)

                break

            case FormG.class.simpleName:
                cbmForm = FormG.get(id)

                break

            case FormZero.class.simpleName:
                cbmForm = FormZero.get(id)

                break

            default:
                cbmForm = false
        }
        cbmForm

    }

    void updateFormStatusOrVisibility(def form, String value){
        if (value == FormStatus.COMPLETED.toString() || value == FormStatus.DRAFT.toString()) {
            form.formStatus = value
        } else {
            form.visibility = value
        }
        saveForm(form)
    }

    def getPublicForms(def forms) {
        def publicForms = []
        forms.each {
            if (it.visibility == Visibility.PUBLIC) publicForms << it

        }
        println "size of public forms: "+publicForms.size()
        publicForms
    }
}
