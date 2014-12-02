package cbm

import cbm.admin.NationalContact
import cbm.constants.FormStatus
import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus
import cbm.form.*
import cbm.report.Report
import cbm.usermgt.SecUser
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_ADMIN', 'ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
@Transactional(readOnly = true)
class ReportController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService
    def securityService

    SecUser getUser() {
        return SecUser.get(springSecurityService.principal.id)
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            respond Report.findAll()
        } else {
            def user = getUser()
            respond Report.findAllByStateParty(user.stateParty), model: [reportInstanceCount: Report.count(), statePartyId: user.stateParty.id]
        }

    }


	@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
    def published(Integer max){
        params.max = Math.min(max ?: 10, 100)

        def submittedAndPublishedReports  = Report.findAllByReportStatusAndPublicationStatus(ReportStatus.SUBMITTED, PublicationStatus.PUBLISHED)
        respond submittedAndPublishedReports, model: [reportInstanceCount: submittedAndPublishedReports.size()]

    }

    @Secured(["@securityService.canView(#reportInstance)"])
    def show(Report reportInstance) {
        if (securityService.canView(reportInstance)) {
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
    @Transactional
    def save(Report reportInstance) {
        if (reportInstance == null) {
            notFound()
            return
        }

        if (reportInstance.hasErrors()) {
            respond reportInstance.errors, view: 'create'
            return
        }

        reportInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reportInstance.label', default: 'Report'), reportInstance.id])
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
    @Transactional
    def update(Report reportInstance) {
        if (reportInstance == null) {
            notFound()
            return
        }

        if (reportInstance.hasErrors()) {
            respond reportInstance.errors, view: 'edit'
            return
        }

        reportInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Report.label', default: 'Report'), reportInstance.id])
                redirect reportInstance
            }
            '*' { respond reportInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_SUBMITTER'])
    @Transactional
    def delete(Report reportInstance) {

        if (reportInstance == null) {
            notFound()
            return
        }

        reportInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Report.label', default: 'Report'), reportInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reportInstance.label', default: 'Report'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

	@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
    def print(Report reportInstance) {

        Set<FormAPart1a> formAPart1as = reportInstance.formAPart1

        response.setHeader("Content-Disposition", "attachment; filename=" + reportInstance.getReportName() + ".pdf")

        Set<NationalContact> nationalContacts = reportInstance.stateParty.nationalContact

        renderPdf template: 'print', contentType: 'application/pdf', model: [reportInstance: reportInstance, formAPart1aInstances: formAPart1as, nationalContacts: nationalContacts]
    }

	@Secured(['ROLE_SUBMITTER'])
    def review(Report reportInstance) {
        println params
        def report = Report.get(params.long("id"))

        respond reportInstance
    }

    @Transactional
    def ajaxSaveFormStatus() {
        //params: name, type, id, value[Completed]
        String result
        def saveOKMsg = message(code: 'report.submit.radio.save.ok', args: [params.name, params.type, params.value])
        def cbmForm

        switch (params.name) {
            case message(code: 'formAPart1.label'):
                cbmForm = FormAPart1a.get(params.long('id'))

                break

            case message(code: 'formAPart1b.label'):
                cbmForm = FormAPart1b.get(params.long('id'))
                break

            case message(code: 'formAPart2a.label'):
                cbmForm = FormAPart2a.get(params.long('id'))

                break

            case message(code: 'formAPart2b.label'):
                cbmForm = FormAPart2b.get(params.long('id'))

                break

            case message(code: 'formAPart2c.label'):
                cbmForm = FormAPart2c.get(params.long('id'))

                break

            case message(code: 'formB.label'):
                cbmForm = FormB.get(params.long('id'))

                break

            case message(code: 'formC.label'):
                cbmForm = FormC.get(params.long('id'))

                break

            case message(code: 'formE.label'):
                cbmForm = FormE.get(params.long('id'))

                break

            case message(code: 'formF.label'):
                cbmForm = FormF.get(params.long('id'))

                break

            case message(code: 'formG.label'):
                cbmForm = FormG.get(params.long('id'))

                break

            default:
                result = "Error in saving"
        }

        println params.value
        if (cbmForm) {
            if (params.value == "COMPLETED" || params.value == FormStatus.DRAFT) {
                cbmForm.formStatus = params.value
            } else {
                cbmForm.visibility = params.value
            }
            cbmForm.save()
            result = saveOKMsg
        } else {
            result = "Error in saving"
        }

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
    @Transactional
    def submit(Report reportInstance) {

        def errors = [:]

        errors.status = []
        errors.validation = []
/*
        BaseForm.metaClass.validateStatus = {
            def errors = [:]
            if (delegate.formStatus == FormStatus.DRAFT) {
                println delegate.id
            }
            errors
        }
*/

        println "a"
        def formAPart1s = reportInstance.formAPart1
        formAPart1s.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formAPart1.label')}, instance ${it.id}"
            }

        }
        def formAPart1b = reportInstance.formAPart1b
        if (formAPart1b?.formStatus == FormStatus.DRAFT) {
            errors["status"] << "${message(code: 'formAPart1b.label')}, instance ${formAPart1b.id}"
        }

        def formAPart2a = reportInstance.formAPart2a
        if (formAPart2a?.formStatus == FormStatus.DRAFT) {
            errors["status"] << "${message(code: 'formAPart2a.label')}, instance ${formAPart2a.id}"
        }

        def formAPart2bs = reportInstance.formAPart2b
        formAPart2bs?.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formAPart2b.label')}, instance ${it.id}"
            }
        }
        def formAPart2cs = reportInstance.formAPart2cs
        formAPart2cs?.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formAPart2c.label')}, instance ${it.id}"
            }
        }
        def formBs = reportInstance.formB
        formBs?.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formB.label')}, instance ${it.id}"
            }
        }
        def formCs = reportInstance.formC
        formCs?.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formC.label')}, instance ${it.id}"
            }
        }
        def formEs = reportInstance.formE
        formEs?.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formE.label')}, instance ${it.id}"
            }
        }
        def formFs = reportInstance.formF
        formFs?.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formF.label')}, instance ${it.id}"
            }
        }
        def formGs = reportInstance.formG
        formGs?.each {
            if (it.formStatus == FormStatus.DRAFT) {
                errors["status"] << "${message(code: 'formG.label')}, instance ${it.id}"
            }
        }
        println("errors: " + errors["status"] + "size: " + errors.size())


        //If no formAPart1a exists, then there needs to be a formAPart1b filled
        if (!formAPart1s && !formAPart1b) {
            println "validation error!!!!"
            errors["validation"] << message(code: 'report.submit.formA.validation.error', default: 'A Form A Part 1(ii) must be filled if there is no Form A Part 1(i)')
        }

        boolean hasBSL4 = false

        formAPart1s.each{
            if (it.hasBSL4()){
                hasBSL4 = true
            }

        }

        if (!hasBSL4 && !formAPart1b) {
            errors["validation"] << message(code:'report.submit.formA.bsl4validation.error', default: 'No BSL4 error')

        }

        // if existing national programmes declared, need to fill in formAPart2bs
        if (formAPart2a?.existingNationalProgrammes && !formAPart2bs){
            errors["validation"] << message(code: 'report.submit.formA.existing.programmes.error', default: 'Existing programmes error')
        }



        if (errors["status"] || errors["validation"]) {
            println "printing errors to gsp...."
            render view: "review", model: [reportInstance: reportInstance, errors: errors]
            return
        }

        //No errors, OK to submit
        reportInstance.publicationStatus = PublicationStatus.PUBLISHED
        reportInstance.reportStatus = ReportStatus.SUBMITTED
        reportInstance.save flush: true

        request.withFormat {
            '*' {
                flash.message = message(code: 'default.submitted.message', args: [message(code: 'Report.label', default: 'Report'), reportInstance.id])
                redirect(action: 'index')

            }
//            '*' { render view: "review", model: [reportInstance:reportInstance] }
//            '*' { redirect(action: 'index') }
        }

    }
}
