package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FormAPart2bController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart2b.list(params), model:[formAPart2bInstanceCount: FormAPart2b.count()]
    }

    def show(FormAPart2b formAPart2bInstance) {
        respond formAPart2bInstance
    }

    def create() {
        respond new FormAPart2b(params)
    }

    @Transactional
    def save(FormAPart2b formAPart2bInstance) {
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
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2bInstance.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect formAPart2bInstance
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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
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
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2bInstance.label', default: 'FormAPart2b'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
