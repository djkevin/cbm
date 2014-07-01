package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormC extends BaseForm {

    static belongsTo = [Report]

    String comments

    Report report

    static constraints = {
        comments blank: false, maxSize: 5000

    }

    String toString() {
        if (comments != null){
            return getSummary(stripHTML(comments)) + "..."
        }
    }

    String getSummary(String s){
        def summary = s.length() > 20 ? s.substring(0, 20) : s
    }

    String stripHTML(String htmlContent) {
        htmlContent?.replaceAll("<(.|\n)*?>", '')
    }

}
