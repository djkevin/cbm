package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormF
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
@Transactional(readOnly = true)
class FormFController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormF.list(params), model:[formFInstanceCount: FormF.count()]
		*/		
		response.sendError(404)
    }

    def show(FormF formFInstance) {
        respond formFInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {
        FormF form = new FormF(params)
        form.formStatus = FormStatus.DRAFT
        form.visibility = Visibility.PUBLIC

        respond  form
    }
	
	@Secured(['ROLE_EDITOR'])
    @Transactional
    def save(FormF formFInstance) {
        if (formFInstance == null) {
            notFound()
            return
        }

        if (formFInstance.hasErrors()) {
            respond formFInstance.errors, view:'create'
            return
        }

        formFInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formF.label', default: 'FormF'), formFInstance.id])
                redirect formFInstance
            }
            '*' { respond formFInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormF formFInstance) {
        respond formFInstance
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def update(FormF formFInstance) {
        if (formFInstance == null) {
            notFound()
            return
        }

        if (formFInstance.hasErrors()) {
            respond formFInstance.errors, view:'edit'
            return
        }

        formFInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formF.label', default: 'FormF'), formFInstance.id])
                redirect formFInstance
            }
            '*'{ respond formFInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def delete(FormF formFInstance) {

        if (formFInstance == null) {
            notFound()
            return
        }

        formFInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formF.label', default: 'FormF'), formFInstance.id])
                redirect action: "show", controller: "report", id: formFInstance.report.id, method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formF.label', default: 'FormF'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormF formFInstance) {
        def fileName = formFInstance.report.getReportName() + "_"+ formFInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formFInstance: formFInstance]
    }
	
}
