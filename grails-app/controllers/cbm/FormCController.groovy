package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormC
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class FormCController {

    def formCService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormC.list(params), model:[formCInstanceCount: FormC.count()]
		*/		
		response.sendError(404)
    }

    def show(FormC formCInstance) {
        respond formCInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {
        FormC form = new FormC(params)
        form.formStatus = FormStatus.DRAFT
        form.visibility = Visibility.PUBLIC

        respond  form
    }

	@Secured(['ROLE_EDITOR'])
    def save(FormC formCInstance) {
        if (formCInstance == null) {
            notFound()
            return
        }

        if (formCInstance.hasErrors()) {
            respond formCInstance.errors, view:'create'
            return
        }

        formCService.save(formCInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formC.label', default: 'FormC'), formCInstance.id])
                redirect formCInstance
            }
            '*' { respond formCInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormC formCInstance) {
        respond formCInstance
    }

	@Secured(['ROLE_EDITOR'])
    def update(FormC formCInstance) {
        if (formCInstance == null) {
            notFound()
            return
        }

        if (formCInstance.hasErrors()) {
            respond formCInstance.errors, view:'edit'
            return
        }

        formCService.save(formCInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formC.label', default: 'FormC'), formCInstance.id])
                redirect formCInstance
            }
            '*'{ respond formCInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def delete(FormC formCInstance) {

        if (formCInstance == null) {
            notFound()
            return
        }

        formCService.delete(formCInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formC.label', default: 'FormC'), formCInstance.id])
                redirect action: "show", controller: "report", id: formCInstance.report.id, method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
	
    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formC.label', default: 'FormC'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormC formCInstance) {
        def fileName = formCInstance.report.getReportName() + "_"+ formCInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formCInstance: formCInstance]
    }
	
}
