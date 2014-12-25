package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormG
import cbm.report.Report
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class FormGController {

    def formGService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		response.sendError(404)
    }

    def show(FormG formGInstance) {
        respond formGInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {
        FormG formG = new FormG(params);

        formG.formStatus  = FormStatus.DRAFT
        formG.visibility = Visibility.PUBLIC

        Report r = Report.get(params.long('report.id'))
        formG.country = r.getStateParty().country

        Address a = new Address() //Embedded object
        formG.setLocation(a)
        respond formG
    }

	@Secured(['ROLE_EDITOR'])
    def save(FormG formGInstance) {

        if (formGInstance == null) {
            notFound()
            return
        }

        if (formGInstance.hasErrors()) {
            respond formGInstance.errors, view:'create'
            return
        }

        formGService.save(formGInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formG.label', default: 'FormG'), formGInstance.id])
                redirect formGInstance
            }
            '*' { respond formGInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormG formGInstance) {
        respond formGInstance
    }

	@Secured(['ROLE_EDITOR'])
    def update(FormG formGInstance) {
        if (formGInstance == null) {
            notFound()
            return
        }

        if (formGInstance.hasErrors()) {
            respond formGInstance.errors, view:'edit'
            return
        }

        formGService.save(formGInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formG.label', default: 'FormG'), formGInstance.id])
                redirect formGInstance
            }
            '*'{ respond formGInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def delete(FormG formGInstance) {

        if (formGInstance == null) {
            notFound()
            return
        }

        formGService.delete(formGInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formG.label', default: 'FormG'), formGInstance.id])
                redirect action: "show", controller: "report", id: formGInstance.report.id, method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formG.label', default: 'FormG'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormG formGInstance) {
        def fileName = formGInstance.report.getReportName() + "_"+ formGInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formGInstance: formGInstance]
    }
	
}
