package cbm

import cbm.form.FormAPart2b
import cbm.report.Report
import org.springframework.web.multipart.MultipartHttpServletRequest

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart2bController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
       // respond FormAPart2b.list(params), model:[formAPart2bInstanceCount: FormAPart2b.count()]

        def reportId =params.long('reportId')
        Report r = Report.findById(reportId)
        respond FormAPart2b.findAllByReport(r) , model:[formAPart2bInstanceCount: FormAPart2b.count(), reportId:reportId]
    }

    def show(FormAPart2b formAPart2bInstance) {
        respond formAPart2bInstance
    }

    def create() {
        respond  new FormAPart2b(params)
    }

    @Transactional
    def save(FormAPart2b formAPart2bInstance) {

        if (!(request instanceof MultipartHttpServletRequest)) {
            println("no multipart")
        }

        if (formAPart2bInstance == null) {
            notFound()
            return
        }
        if (formAPart2bInstance.hasErrors()) {
            respond formAPart2bInstance.errors, view:'create'
            return
        }
        formAPart2bInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                //redirect formAPart2bInstance
                redirect (controller: "report", action:"show", id:formAPart2bInstance.report.id, report:formAPart2bInstance.report)
            }
            '*' { respond formAPart2bInstance, [status: CREATED] }
        }
    }

    def edit(FormAPart2b formAPart2bInstance) {
        respond formAPart2bInstance
    }

    @Transactional
    def update(FormAPart2b formAPart2bInstance) {
        if (formAPart2bInstance == null) {
            notFound()
            return
        }

        if (formAPart2bInstance.hasErrors()) {
            respond formAPart2bInstance.errors, view:'edit'
            return
        }

        formAPart2bInstance.save flush:true

        request.withFormat {

            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect formAPart2bInstance
            }
            '*'{ respond formAPart2bInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart2b formAPart2bInstance) {

        if (formAPart2bInstance == null) {
            notFound()
            return
        }

        formAPart2bInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect action: "show", controller: "report", id: formAPart2bInstance.report.id, method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormAPart2b formAPart2bInstance) {
        // to force browser to download PDF, add parameter  filename: '<name>.pdf'
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart2bInstance: formAPart2bInstance]
    }
}
