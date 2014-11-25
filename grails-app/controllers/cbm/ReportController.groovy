package cbm

import cbm.admin.NationalContact
import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus
import cbm.form.FormAPart1a
import cbm.form.FormAPart1b
import cbm.form.FormAPart2a
import cbm.form.FormAPart2b
import cbm.form.FormAPart2c
import cbm.form.FormB
import cbm.form.FormC
import cbm.form.FormE
import cbm.form.FormF
import cbm.form.FormG


import cbm.report.Report
import cbm.usermgt.SecUser
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import sun.text.resources.FormatData

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
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

    // @Secured(["@securityService.canView(#reportInstance)"])
    def show(Report reportInstance) {
        if (securityService.canView(reportInstance)) {
            respond reportInstance
        } else {
            flash.message = message(code: 'report.url.access.error', default: 'You can only access records created by your country')
            redirect action: "index", method: "GET"
        }

    }

    def create() {
        Report report = new Report(params)
        report.reportStatus = ReportStatus.DRAFT
        report.publicationStatus = PublicationStatus.NOTPUBLISHED
        respond report
    }

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

    def edit(Report reportInstance) {
        respond reportInstance
    }

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

    def print(Report reportInstance) {

        Set<FormAPart1a> formAPart1as = reportInstance.formAPart1

        response.setHeader("Content-Disposition", "attachment; filename="+reportInstance.getReportName()+".pdf")

        Set<NationalContact> nationalContacts = reportInstance.stateParty.nationalContact

        renderPdf template: 'print', contentType: 'application/pdf', model: [reportInstance: reportInstance, formAPart1aInstances: formAPart1as, nationalContacts:nationalContacts]
    }

    def review(Report reportInstance){
        println params
        def report = Report.get(params.long("id"))

        respond reportInstance
    }

    def ajaxSaveFormStatus(){
           //params: name, type, id, value[Completed]
        String result
        def saveOKMsg = message(code: 'report.submit.radio.save.ok', args:[params.name, params.type, params.value] )
        def  cbmForm

        switch (params.name){
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

        if(cbmForm){
            if (params.value == "Completed" || params.value =="Draft"){
                cbmForm.formStatus = params.value
            }else{
                cbmForm.visibility = params.value
            }
            cbmForm.save()
            result = saveOKMsg
        }else{
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
     */
    def submit(Report reportInstance) {

        def errors = [:]

        errors.status = []
/*
        BaseForm.metaClass.validateStatus = {
            def errors = [:]
            if (delegate.formStatus == "Draft") {
                println delegate.id
            }
            errors
        }
*/

        def formAPart1s = reportInstance.formAPart1
        formAPart1s.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formAPart1.label')}, instance ${it.id}"
            }

        }
       def formAPart1bs = reportInstance.formAPart1b
        formAPart1bs.each {
            if (it.formStatus == "Draft") {
                errors["status"] <<"${message(code: 'formAPart1b.label')}, instance ${it.id}"
            }
        }
        def formAPart2as = reportInstance.formAPart2a
        formAPart2as.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formAPart2a.label')}, instance ${it.id}"
            }
        }
        def formAPart2bs = reportInstance.formAPart2b
        formAPart2bs.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formAPart2b.label')}, instance ${it.id}"
            }
        }
        def formAPart2cs = reportInstance.formAPart2cs
        formAPart2cs.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formAPart2c.label')}, instance ${it.id}"
            }
        }
        def formBs = reportInstance.formB
        formBs.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formB.label')}, instance ${it.id}"
            }
        }
        def formCs = reportInstance.formC
        formCs.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formC.label')}, instance ${it.id}"
            }
        }
        def formEs = reportInstance.formE
        formEs.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formE.label')}, instance ${it.id}"
            }
        }
        def formFs = reportInstance.formF
        formFs.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formF.label')}, instance ${it.id}"
            }
        }
        def formGs = reportInstance.formG
        formGs.each {
            if (it.formStatus == "Draft") {
                errors["status"] << "${message(code: 'formG.label')}, instance ${it.id}"
            }
        }
        println ("errors: "+errors["status"]+ "size: "+errors.size())


        if (errors["status"].size()>0) {
            render view: "review", model: [reportInstance:reportInstance, errors:errors]
            return
        }
         println "in else....."
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
