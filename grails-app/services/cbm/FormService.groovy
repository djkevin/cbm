package cbm

import cbm.report.Report
import grails.transaction.Transactional

@Transactional
class FormService {

	public static final TIMESTAMP_FORMAT = "yyyy-MM-dd HH:mm:ss.SSS"
	
    def serviceMethod() {

    }

    public boolean hasFormAPart1a(long reportId){
        return Report.findById(reportId).formAPart1
    }
}
