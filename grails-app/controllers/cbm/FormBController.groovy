package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormB
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class FormBController {
    def formBService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		response.sendError(404)
    }

    def show(FormB formBInstance) {
        respond formBInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {
        FormB form = new FormB(params)
        form.formStatus = FormStatus.DRAFT
        form.visibility = Visibility.PUBLIC

        respond  form
    }

	@Secured(['ROLE_EDITOR'])
    def save(FormB formBInstance) {
        if (formBInstance == null) {
            notFound()
            return
        }

        if (formBInstance.hasErrors()) {
            respond formBInstance.errors, view:'create'
            return
        }

        formBService.save(formBInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formB.label', default: 'FormB'), formBInstance.id])
                /*redirect formBInstance*/
                redirect (controller: "report", action:"show", id:formBInstance.report.id, report:formBInstance.report)
            }
            '*' { respond formBInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormB formBInstance) {
        respond formBInstance
    }

	@Secured(['ROLE_EDITOR'])
    def update(FormB formBInstance) {
        if (formBInstance == null) {
            notFound()
            return
        }

        if (formBInstance.hasErrors()) {
            respond formBInstance.errors, view:'edit'
            return
        }

        formBService.save(formBInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formB.label', default: 'FormB'), formBInstance.id])
                redirect formBInstance
            }
            '*'{ respond formBInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def delete(FormB formBInstance) {

        if (formBInstance == null) {
            notFound()
            return
        }

        formBService.delete(formBInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formB.label', default: 'FormB'), formBInstance.id])
                redirect action: "show", controller: "report", id: formBInstance.report.id, method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formB.label', default: 'FormB'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormB formBInstance) {
        def fileName = formBInstance.report.getReportName() + "_"+ formBInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formBInstance: formBInstance]
    }
	
}
