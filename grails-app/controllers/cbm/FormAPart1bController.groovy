package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FormAPart1bController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart1b.list(params), model:[formAPart1bInstanceCount: FormAPart1b.count()]
    }

    def show(FormAPart1b formAPart1bInstance) {
        respond formAPart1bInstance
    }

    def create() {
        respond new FormAPart1b(params)
    }

    @Transactional
    def save(FormAPart1b formAPart1bInstance) {
        if (formAPart1bInstance == null) {
            notFound()
            return
        }

        if (formAPart1bInstance.hasErrors()) {
            respond formAPart1bInstance.errors, view:'create'
            return
        }

        formAPart1bInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart1bInstance.label', default: 'FormAPart1b'), formAPart1bInstance.id])
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
            respond formAPart1bInstance.errors, view:'edit'
            return
        }

        formAPart1bInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart1b.label', default: 'FormAPart1b'), formAPart1bInstance.id])
                redirect formAPart1bInstance
            }
            '*'{ respond formAPart1bInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart1b formAPart1bInstance) {

        if (formAPart1bInstance == null) {
            notFound()
            return
        }

        formAPart1bInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart1b.label', default: 'FormAPart1b'), formAPart1bInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart1bInstance.label', default: 'FormAPart1b'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
