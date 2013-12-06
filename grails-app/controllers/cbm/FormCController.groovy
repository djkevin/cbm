package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
@Transactional(readOnly = true)
class FormCController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormC.list(params), model:[formCInstanceCount: FormC.count()]
    }

    def show(FormC formCInstance) {
        respond formCInstance
    }

    def create() {
        respond new FormC(params)
    }

    @Transactional
    def save(FormC formCInstance) {
        if (formCInstance == null) {
            notFound()
            return
        }

        if (formCInstance.hasErrors()) {
            respond formCInstance.errors, view:'create'
            return
        }

        formCInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formCInstance.label', default: 'FormC'), formCInstance.id])
                redirect formCInstance
            }
            '*' { respond formCInstance, [status: CREATED] }
        }
    }

    def edit(FormC formCInstance) {
        respond formCInstance
    }

    @Transactional
    def update(FormC formCInstance) {
        if (formCInstance == null) {
            notFound()
            return
        }

        if (formCInstance.hasErrors()) {
            respond formCInstance.errors, view:'edit'
            return
        }

        formCInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormC.label', default: 'FormC'), formCInstance.id])
                redirect formCInstance
            }
            '*'{ respond formCInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormC formCInstance) {

        if (formCInstance == null) {
            notFound()
            return
        }

        formCInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormC.label', default: 'FormC'), formCInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formCInstance.label', default: 'FormC'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
