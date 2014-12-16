package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormAPart1a;
import cbm.form.FormAPart2b
import cbm.form.FormAPart2c
import cbm.report.Report
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
@Transactional(readOnly = true)
class FormAPart2cController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart2c.list(params), model:[formAPart2cInstanceCount: FormAPart2c.count()]
		*/		
		response.sendError(404)
    }

    def show(FormAPart2c formAPart2cInstance) {
        respond formAPart2cInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {

        def reportId = params.long('report.id')
		def report = Report.get(reportId)
        Set<FormAPart2b> formAPart2bs = report.formAPart2b

        FormAPart2c formAPart2c = new FormAPart2c(params)
        formAPart2c.formStatus = FormStatus.DRAFT
        formAPart2c.visibility = Visibility.PUBLIC
        formAPart2c.location = new Address()
        formAPart2c.country = report.getStateParty().country


        if (!formAPart2bs) {

            flash.message = message(code: "formAPart2c.no.program.message", default: "No program created")
            redirect controller: "report", action: "show", params: [id: reportId]
            return
        }else{
            //set default formAPart2b
            formAPart2c.formAPart2b = formAPart2bs.first()
        }

        respond formAPart2c , model: [formAPart2bs:formAPart2bs]
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def save(FormAPart2c formAPart2cInstance) {


        if (formAPart2cInstance == null) {
            notFound()
            return
        }
        Report report = formAPart2cInstance.report
        Set<FormAPart2b> formAPart2bs =  report.formAPart2b

        if (formAPart2cInstance.hasErrors()) {
            respond formAPart2cInstance.errors, view:'create' , model: [formAPart2bs:formAPart2bs]
            return
        }

        FormAPart2b formAPart2b = FormAPart2b.get(params.formAPart2b.id)
        formAPart2b.addToFormAPart2c(formAPart2cInstance)

        formAPart2b.save flush: true
       // formAPart2cInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2cInstance.label', default: 'FormAPart2c'), formAPart2cInstance.id])
           //     redirect (controller: "formAPart2b", action:"show", id:formAPart2cInstance.formAPart2b.id)
                redirect formAPart2cInstance
            }
            '*' { respond formAPart2cInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormAPart2c formAPart2cInstance) {
        def reportId = params.long('report.id')
        Set<FormAPart2b> formAPart2bs = Report.get(reportId).formAPart2b

        respond formAPart2cInstance//, model: [formAPart2bs:formAPart2bs]
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def update(FormAPart2c formAPart2cInstance) {
        if (formAPart2cInstance == null) {
            notFound()
            return
        }

        if (formAPart2cInstance.hasErrors()) {
            respond formAPart2cInstance.errors, view:'edit'
            return
        }

        formAPart2cInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart2c.label', default: 'FormAPart2c'), formAPart2cInstance.id])
                redirect formAPart2cInstance
            }
            '*'{ respond formAPart2cInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def delete(FormAPart2c formAPart2cInstance) {

        if (formAPart2cInstance == null) {
            notFound()
            return
        }

        formAPart2cInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart2c.label', default: 'FormAPart2c'), formAPart2cInstance.id])
                redirect action: "show", controller: "report", id: formAPart2cInstance.formAPart2b.report.id, method: "GET"
//              redirect (controller: "formAPart2b", action:"show", id:formAPart2cInstance.formAPart2b.id)
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2cInstance.label', default: 'FormAPart2c'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormAPart2c formAPart2cInstance) {
        // to force browser to download PDF, add parameter  filename: '<name>.pdf'
        def fileName = formAPart2cInstance.report.getReportName() + "_"+ formAPart2cInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart2cInstance: formAPart2cInstance]
    }
	
}
