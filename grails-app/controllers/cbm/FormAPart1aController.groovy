package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FormAPart1aController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart1a.list(params), model:[formAPart1InstanceCount: FormAPart1a.count()]
    }

    def show(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }

    def create() {
        respond new FormAPart1a(params)
    }

    @Transactional
    def save(FormAPart1a formAPart1Instance) {
        if (formAPart1Instance == null) {
            notFound()
            return
        }

        if (formAPart1Instance.hasErrors()) {
            respond formAPart1Instance.errors, view:'create'
            return
        }

        formAPart1Instance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart1Instance.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*' { respond formAPart1Instance, [status: CREATED] }
        }
    }

    def edit(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }

    @Transactional
    def update(FormAPart1a formAPart1Instance) {
        if (formAPart1Instance == null) {
            notFound()
            return
        }

        if (formAPart1Instance.hasErrors()) {
            respond formAPart1Instance.errors, view:'edit'
            return
        }

        formAPart1Instance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*'{ respond formAPart1Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart1a formAPart1Instance) {

        if (formAPart1Instance == null) {
            notFound()
            return
        }

        formAPart1Instance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart1Instance.label', default: 'FormAPart1'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
