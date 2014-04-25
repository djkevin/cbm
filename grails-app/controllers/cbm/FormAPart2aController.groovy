package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart2aController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart2a.list(params), model:[formAPart2aInstanceCount: FormAPart2a.count()]
    }

    def show(FormAPart2a formAPart2aInstance) {
        respond formAPart2aInstance
    }

    def create() {
        respond new FormAPart2a(params);
    }

    @Transactional
    def save(FormAPart2a formAPart2aInstance) {
        if (formAPart2aInstance == null) {
            notFound()
            return
        }

        if (formAPart2aInstance.hasErrors()) {
            respond formAPart2aInstance.errors, view:'create'
            return
        }

        formAPart2aInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2aInstance.label', default: 'FormAPart2a'), formAPart2aInstance.id])
                redirect formAPart2aInstance
            }
            '*' { respond formAPart2aInstance, [status: CREATED] }
        }
    }

    def edit(FormAPart2a formAPart2aInstance) {
        respond formAPart2aInstance
    }

    @Transactional
    def update(FormAPart2a formAPart2aInstance) {
        if (formAPart2aInstance == null) {
            notFound()
            return
        }

        if (formAPart2aInstance.hasErrors()) {
            respond formAPart2aInstance.errors, view:'edit'
            return
        }

        formAPart2aInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart2a.label', default: 'FormAPart2a'), formAPart2aInstance.id])
                redirect formAPart2aInstance
            }
            '*'{ respond formAPart2aInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart2a formAPart2aInstance) {

        if (formAPart2aInstance == null) {
            notFound()
            return
        }

        formAPart2aInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart2a.label', default: 'FormAPart2a'), formAPart2aInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2aInstance.label', default: 'FormAPart2a'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormAPart2a formAPart2aInstance) {
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart2aInstance: formAPart2aInstance]
    }
}
