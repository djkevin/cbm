package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormAPart2a
import cbm.report.Report

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class FormAPart2aController {

    def formAPart2aService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		response.sendError(404)
    }

    def show(FormAPart2a formAPart2aInstance) {
        respond formAPart2aInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {

        FormAPart2a form = new FormAPart2a(params)
        form.formStatus = FormStatus.DRAFT
        form.visibility = Visibility.PUBLIC

        respond  form

    }

	@Secured(['ROLE_EDITOR'])
    def save(FormAPart2a formAPart2aInstance) {
        if (formAPart2aInstance == null) {
            notFound()
            return
        }

        if (formAPart2aInstance.hasErrors()) {
            respond formAPart2aInstance.errors, view:'create'
            return
        }

        formAPart2aService.save(formAPart2aInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2a.label', default: 'FormAPart2a'), formAPart2aInstance.id])
                redirect formAPart2aInstance
            }
            '*' { respond formAPart2aInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormAPart2a formAPart2aInstance) {
        respond formAPart2aInstance
    }

	@Secured(['ROLE_EDITOR'])
    def update(FormAPart2a formAPart2aInstance) {
        if (formAPart2aInstance == null) {
            notFound()
            return
        }

        if (formAPart2aInstance.hasErrors()) {
            respond formAPart2aInstance.errors, view:'edit'
            return
        }

        formAPart2aService.save(formAPart2aInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formAPart2a.label', default: 'FormAPart2a'), formAPart2aInstance.id])
                redirect formAPart2aInstance
            }
            '*'{ respond formAPart2aInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR', 'ROLE_SUBMITTER'])
    def delete(FormAPart2a formAPart2aInstance) {

        if (formAPart2aInstance == null) {
            notFound()
            return
        }

        def reportId = formAPart2aInstance.report.id

        Report report = Report.get(reportId)
        report.formAPart2a = null
        report.save()

        formAPart2aService.delete(formAPart2aInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formAPart2a.label', default: 'FormAPart2a'), formAPart2aInstance.id])
                redirect action: "show", controller: "report", id: formAPart2aInstance.report.id, method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2a.label', default: 'FormAPart2a'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormAPart2a formAPart2aInstance) {
        def fileName = formAPart2aInstance.report.getReportName() + "_"+ formAPart2aInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart2aInstance: formAPart2aInstance]
    }
	
}
