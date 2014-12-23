package cbm.form

import cbm.report.Report
import grails.transaction.Transactional

@Transactional
class FormAPart1bService {

    void save(FormAPart1b formAPart1b) {
        formAPart1b.save()
    }

    void delete(FormAPart1b formAPart1b) {
        formAPart1b.delete()
    }

    void delete(long formAPart1bId) {
        def formAPart1b = FormAPart1b.load(formAPart1bId)
        formAPart1b.delete()
    }

    void deleteFromReport(long reportId, long formId){
        Report report = Report.load(reportId)
        report.formAPart1b = null
        report.save()

        delete(formId)
    }
}
