package cbm

import cbm.report.Report
import grails.transaction.Transactional

@Transactional
class FormService {

    def serviceMethod() {

    }

    public boolean hasFormAPart1a(long reportId){
        return Report.findById(reportId).formAPart1
    }
}
