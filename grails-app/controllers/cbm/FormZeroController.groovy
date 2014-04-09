package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormZeroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormZero.list(params), model:[formZeroInstanceCount: FormZero.count()]
    }

    def show(FormZero formZeroInstance) {
        respond formZeroInstance
    }

    def create() {
        def reportId = params.long('reportId')
        Report r =  Report.findById(reportId)
        FormZero f = new FormZero()
        f.setReport(r)
        respond f
    }

    @Transactional
    def save(FormZero formZeroInstance) {
        if (formZeroInstance == null) {
            notFound()
            return
        }

        if (formZeroInstance.hasErrors()) {
            respond formZeroInstance.errors, view:'create'
            return
        }

        formZeroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formZeroInstance.label', default: 'FormZero'), formZeroInstance.id])
                //redirect formZeroInstance
                redirect (controller: "report", action:"show", id:formZeroInstance.report.id, report:formZeroInstance.report)
            }
            '*' { respond formZeroInstance, [status: CREATED] }
        }
    }

    def edit(FormZero formZeroInstance) {
        respond formZeroInstance
    }

    @Transactional
    def update(FormZero formZeroInstance) {
        if (formZeroInstance == null) {
            notFound()
            return
        }

        if (formZeroInstance.hasErrors()) {
            respond formZeroInstance.errors, view:'edit'
            return
        }

        formZeroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormZero.label', default: 'FormZero'), formZeroInstance.id])
                redirect formZeroInstance
            }
            '*'{ respond formZeroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormZero formZeroInstance) {

        if (formZeroInstance == null) {
            notFound()
            return
        }

        formZeroInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormZero.label', default: 'FormZero'), formZeroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formZeroInstance.label', default: 'FormZero'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormZero formZeroInstance) {
        renderPdf template: 'print', contentType: 'application/pdf', model: [formZeroInstance: formZeroInstance]
    }
}
