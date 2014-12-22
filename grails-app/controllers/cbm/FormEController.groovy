package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormE
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
@Transactional(readOnly = true)
class FormEController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormE.list(params), model:[formEInstanceCount: FormE.count()]
		*/		
		response.sendError(404)
    }

    def show(FormE formEInstance) {
        respond formEInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {
        FormE f = new FormE(params)

        f.formStatus = FormStatus.DRAFT
        f.visibility = Visibility.PUBLIC

        // Need to initialise embedded domain classes to allow access to domain constraints
        f.setDevelopmentAndMeansOfDelivery(new DeclarationOfMeasures())
        f.setExportsOfMicroOrganisms(new DeclarationOfMeasures())
        f.setBiosafetyAndBioSecurity(new DeclarationOfMeasures())
        f.setImportsOfMicroOrganisms(new DeclarationOfMeasures())

        respond f
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def save(FormE formEInstance) {
        if (formEInstance == null) {

            notFound()
            return
        }

        if (formEInstance.hasErrors()) {
            respond formEInstance.errors, view:'create'
            return
        }

        formEInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formE.label', default: 'FormE'), formEInstance.id])
                redirect formEInstance
            }
            '*' { respond formEInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormE formEInstance) {
        respond formEInstance
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def update(FormE formEInstance) {
        if (formEInstance == null) {
            notFound()
            return
        }

        if (formEInstance.hasErrors()) {
            respond formEInstance.errors, view:'edit'
            return
        }

        formEInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formE.label', default: 'FormE'), formEInstance.id])
                redirect formEInstance
            }
            '*'{ respond formEInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def delete(FormE formEInstance) {

        if (formEInstance == null) {
            notFound()
            return
        }

        formEInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formE.label', default: 'FormE'), formEInstance.id])
                redirect action: "show", controller: "report", id: formEInstance.report.id, method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formE.label', default: 'FormE'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormE formEInstance) {
        def fileName = formEInstance.report.getReportName() + "_"+ formEInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formEInstance: formEInstance]
    }
	
}
