package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormC extends BaseForm {

    static belongsTo = [Report]

    String comments

    Report report

    static constraints = {
        comments maxSize: 5000

    }

    /*
String getTitle(){
    //return  report.reportName+ " form c"
    return "formC instance ${id}"
} */
}
