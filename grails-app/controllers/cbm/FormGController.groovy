package cbm

import cbm.admin.NationalContact
import cbm.form.FormG
import cbm.report.Report
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormGController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormG.list(params), model:[formGInstanceCount: FormG.count()]
		*/		
		response.sendError(404)
    }

    def show(FormG formGInstance) {
        respond formGInstance
    }

    def create() {
        FormG formG = new FormG(params);

        Report r = Report.get(params.long('report.id'))
        formG.country = r.getStateParty().country

        Address a = new Address() //Embedded object
        formG.setLocation(a)
        respond formG
    }

    @Transactional
    def save(FormG formGInstance) {

        if (formGInstance == null) {
            notFound()
            return
        }

        if (formGInstance.hasErrors()) {
            respond formGInstance.errors, view:'create'
            return
        }

        formGInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formG.label', default: 'FormG'), formGInstance.id])
                redirect formGInstance
            }
            '*' { respond formGInstance, [status: CREATED] }
        }
    }

    def edit(FormG formGInstance) {
        respond formGInstance
    }

    @Transactional
    def update(FormG formGInstance) {
        if (formGInstance == null) {
            notFound()
            return
        }

        if (formGInstance.hasErrors()) {
            respond formGInstance.errors, view:'edit'
            return
        }

        formGInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formG.label', default: 'FormG'), formGInstance.id])
                redirect formGInstance
            }
            '*'{ respond formGInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormG formGInstance) {

        if (formGInstance == null) {
            notFound()
            return
        }

        formGInstance.delete flush:true

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
                redirect action: "index", method: "GET"
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
