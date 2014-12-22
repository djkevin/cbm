package cbm

import cbm.admin.NationalContact
import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus
import cbm.constants.Visibility
import cbm.report.Report
import cbm.usermgt.SecUser
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_ADMIN', 'ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class ReportController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService
    def securityService
    def reportService

    SecUser getUser() {
        return SecUser.get(springSecurityService.principal.id)
    }

    // this method does not need to override the security of the class.
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        //Admin can view all reports
        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            respond Report.findAll()
            return
        }

        //Fetch the reports for the logged in user's State Party
        def allReports = reportService.findAllReportsByStateParty(user?.stateParty)
        def submittedReports = allReports.findAll { it.reportStatus == ReportStatus.SUBMITTED }

        def reportsInProgress = allReports.minus(submittedReports)

        println "allReports: " + allReports + ", num submitted:" + submittedReports.size() + " in progress: " + reportsInProgress.size()


        respond reportsInProgress, model: [submittedReports: submittedReports, statePartyId: user?.stateParty?.id, country: user?.stateParty?.country]


    }

    /**
     * View submitted reports with 'PUBLISHED' publication status.
     * @param max
     * @return
     */
    @Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
    def listPublished(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        def submittedAndPublishedReports = Report.findAllByReportStatusAndPublicationStatus(ReportStatus.SUBMITTED, PublicationStatus.PUBLISHED)
        respond submittedAndPublishedReports, model: [reportInstanceCount: submittedAndPublishedReports.size()]

    }

    // DOES THIS WORK? @Secured(["@securityService.canView(#reportInstance)"])
    @Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER', 'ROLE_ADMIN'])
    def show(Report reportInstance) {
        if (securityService.canView(reportInstance)) {  //TODO replace by Spring security ACL
            respond reportInstance
        } else {
            flash.message = message(code: 'report.url.access.error', default: 'You can only access records created by your country')
            redirect action: "index", method: "GET"
        }

    }

    @Secured(['ROLE_SUBMITTER'])
    def create() {
        Report report = new Report(params)
        report.reportStatus = ReportStatus.DRAFT
        report.publicationStatus = PublicationStatus.NOTPUBLISHED
        respond report
    }

    @Secured(['ROLE_SUBMITTER'])
    def save(Report reportInstance) {
        if (reportInstance == null) {
            notFound()
            return
        }

        if (reportInstance.hasErrors()) {
            respond reportInstance.errors, view: 'create'
            return
        }

        reportService.save(reportInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'report.label', default: 'Report'), reportInstance.reportName])
                redirect reportInstance
            }
            '*' { respond reportInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_SUBMITTER'])
    def edit(Report reportInstance) {
        respond reportInstance
    }

    @Secured(['ROLE_SUBMITTER'])
    def update(Report reportInstance) {
        if (reportInstance == null) {
            notFound()
            return
        }

        if (reportInstance.hasErrors()) {
            respond reportInstance.errors, view: 'edit'
            return
        }

        reportService.save(reportInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'report.label', default: 'Report'), reportInstance.reportName])
                redirect reportInstance
            }
            '*' { respond reportInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_SUBMITTER'])
    def delete(Report reportInstance) {

        if (reportInstance == null) {
            notFound()
            return
        }

        reportService.delete(reportInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'report.label', default: 'Report'), reportInstance.reportName])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'report.label', default: 'Report'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    @Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
    def print(Report reportInstance) {

        println params

        boolean publicOnly = params.boolean('public')
        println "public only: $publicOnly"

        response.setHeader("Content-Disposition", "attachment; filename=" + reportInstance.getReportName() + ".pdf")

        Set<NationalContact> nationalContacts = reportInstance.stateParty.nationalContact

        if (publicOnly) {
            reportInstance.formAPart1 = reportService.getPublicForms(reportInstance.formAPart1)
            reportInstance.formAPart1b = (reportInstance?.formAPart1b?.visibility == Visibility.PUBLIC) ? reportInstance.formAPart1b : null
            reportInstance.formAPart2a = (reportInstance?.formAPart2a?.visibility == Visibility.PUBLIC) ? reportInstance.formAPart2a : null
            reportInstance.formZero = (reportInstance?.formZero?.visibility == Visibility.PUBLIC) ? reportInstance.formZero : null
            reportInstance.formB = reportService.getPublicForms(reportInstance.formB)
            reportInstance.formC = reportService.getPublicForms(reportInstance.formC)
            reportInstance.formE = reportService.getPublicForms(reportInstance.formE)
            reportInstance.formF = reportService.getPublicForms(reportInstance.formF)
            reportInstance.formG = reportService.getPublicForms(reportInstance.formG)

        }



        renderPdf template: 'print', contentType: 'application/pdf', model: [reportInstance: reportInstance, nationalContacts: nationalContacts]
    }

    @Secured(['ROLE_SUBMITTER'])
    def review(Report reportInstance) {
        println params
        def report = Report.get(params.long("id"))

        respond reportInstance
    }

    /**
     * Sets the form Status or Visibility
     * @param name : the form class name, value (one of DRAFT,COMPLETED, PUBLIC or PRIVATE) , type: formStatus or visibility, id the form Id
     * @return ok message if form was found and saved correctly, else error message
     */
    @Secured(['ROLE_SUBMITTER'])
    def ajaxSaveFormStatus() {
        //TODO disable if report is already submitted
        println params
        //params: name, type, id, value[Completed]
        String result
        def saveOKMsg = message(code: 'report.submit.radio.save.ok', args: [params.name, params.type, params.value])    //TODO i18n confirm message

        def cbmForm = reportService.getFormByNameAndId(params.name, params.long('id'))

        if (!cbmForm) {
            result = $ { message(code: "report.save.error", default: "Error in saving") }

            render([message: result] as JSON) //TODO test this
            return
        }

        reportService.updateFormStatusOrVisibility(cbmForm, params.value)
        result = saveOKMsg

        request.withFormat {
            form {
                render([message: result] as JSON)
            }
            '*' { render status: OK }
        }
    }

    /**
     * Does the validation
     * and sets the report Status to SUBMITTED and publicationStatus to PUBLISHED
     * TODO move to Service
     * TODO hide submit button if already submitted (in gsp)
     */

    @Secured(['ROLE_SUBMITTER'])
    def submit(Report reportInstance) {

        def errors = [:]

        errors.status = []
        errors.validation = []

        errors["status"] = reportService.validateFormsCompletion(reportInstance)

        errors["validation"] = reportService.validateFormAPart1BSL4(reportInstance)

        errors["validation"] += reportService.validateNationalProgrammes(reportInstance)


        if (errors["status"] || errors["validation"]) {
            println "printing errors to gsp...."
            render view: "review", model: [reportInstance: reportInstance, errors: errors]
            return
        }

        //No errors found, OK to submit
        reportService.submitReport(reportInstance)

        request.withFormat {
            '*' {
                flash.message = message(code: 'default.submitted.message', args: [message(code: 'report.label', default: 'Report'), reportInstance.reportName])
                redirect(action: 'index')

            }
        }

    }
}
