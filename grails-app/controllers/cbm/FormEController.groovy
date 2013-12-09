package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
@Transactional(readOnly = true)
class FormEController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormE.list(params), model:[formEInstanceCount: FormE.count()]
    }

    def show(FormE formEInstance) {
        respond formEInstance
    }

    def create() {
        respond new FormE(params)
    }

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
                flash.message = message(code: 'default.created.message', args: [message(code: 'formEInstance.label', default: 'FormE'), formEInstance.id])
                redirect formEInstance
            }
            '*' { respond formEInstance, [status: CREATED] }
        }
    }

    def edit(FormE formEInstance) {
        respond formEInstance
    }

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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormE.label', default: 'FormE'), formEInstance.id])
                redirect formEInstance
            }
            '*'{ respond formEInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormE formEInstance) {

        if (formEInstance == null) {
            notFound()
            return
        }

        formEInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormE.label', default: 'FormE'), formEInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formEInstance.label', default: 'FormE'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}