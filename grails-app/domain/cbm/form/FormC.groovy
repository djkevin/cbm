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

    String toString(){
        //Replaces the htmltags
        int maxChars=20
        comments?.length()<maxChars?stripHTML(comments):stripHTML(comments).substring(0,maxChars)+"..."

    }


    String stripHTML(String htmlContent){
       htmlContent.replaceAll("<(.|\n)*?>", '')
    }

    /*
String getTitle(){
    //return  report.reportName+ " form c"
    return "formC instance ${id}"
} */
}
