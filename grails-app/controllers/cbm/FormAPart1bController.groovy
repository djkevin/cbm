package cbm

import cbm.form.FormAPart1b
import cbm.report.Report
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart1bController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart1b.list(params), model: [formAPart1bInstanceCount: FormAPart1b.count()]
        */
		response.sendError(404)
    }

    def show(FormAPart1b formAPart1bInstance) {
        respond formAPart1bInstance
    }



    def create() {
        def report = Report.get(params.long('report.id'))
        FormAPart1b formAPart1b = new FormAPart1b(params)
        if (report.hasBSL4()) formAPart1b.errors.reject("formAPart1.error.existing.BSL4")
        respond formAPart1b
    }

    @Transactional
    def save(FormAPart1b formAPart1bInstance) {
        if (formAPart1bInstance == null) {
            notFound()
            return
        }

        if (formAPart1bInstance.hasErrors()) {
            respond formAPart1bInstance.errors, view: 'create'
            return
        }

        formAPart1bInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart1b.label', default: 'FormAPart1b'), formAPart1bInstance.id])
                redirect formAPart1bInstance
            }
            '*' { respond formAPart1bInstance, [status: CREATED] }
        }
    }

    def edit(FormAPart1b formAPart1bInstance) {
        respond formAPart1bInstance
    }

    @Transactional
    def update(FormAPart1b formAPart1bInstance) {
        if (formAPart1bInstance == null) {
            notFound()
            return
        }

        if (formAPart1bInstance.hasErrors()) {
            respond formAPart1bInstance.errors, view: 'edit'
            return
        }

        formAPart1bInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formAPart1b.label', default: 'FormAPart1b'), formAPart1bInstance.id])
                redirect formAPart1bInstance
            }
            '*' { respond formAPart1bInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart1b formAPart1bInstance) {

        if (formAPart1bInstance == null) {
            notFound()
            return
        }

        formAPart1bInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formAPart1b.label', default: 'FormAPart1b'), formAPart1bInstance.id])
                redirect action: "show", controller: "report", id: formAPart1bInstance.report.id, method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart1b.label', default: 'FormAPart1b'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def print(FormAPart1b formAPart1bInstance) {

        def fileName = formAPart1bInstance.report.getReportName() + "_"+ formAPart1bInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart1bInstance: formAPart1bInstance]
    }
}
