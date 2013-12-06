package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
@Transactional(readOnly = true)
class FormFController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormF.list(params), model:[formFInstanceCount: FormF.count()]
    }

    def show(FormF formFInstance) {
        respond formFInstance
    }

    def create() {
        respond new FormF(params)
    }

    @Transactional
    def save(FormF formFInstance) {
        if (formFInstance == null) {
            notFound()
            return
        }

        if (formFInstance.hasErrors()) {
            respond formFInstance.errors, view:'create'
            return
        }

        formFInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formFInstance.label', default: 'FormF'), formFInstance.id])
                redirect formFInstance
            }
            '*' { respond formFInstance, [status: CREATED] }
        }
    }

    def edit(FormF formFInstance) {
        respond formFInstance
    }

    @Transactional
    def update(FormF formFInstance) {
        if (formFInstance == null) {
            notFound()
            return
        }

        if (formFInstance.hasErrors()) {
            respond formFInstance.errors, view:'edit'
            return
        }

        formFInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormF.label', default: 'FormF'), formFInstance.id])
                redirect formFInstance
            }
            '*'{ respond formFInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormF formFInstance) {

        if (formFInstance == null) {
            notFound()
            return
        }

        formFInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormF.label', default: 'FormF'), formFInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formFInstance.label', default: 'FormF'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
