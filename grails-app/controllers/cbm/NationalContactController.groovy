package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NationalContactController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond NationalContact.list(params), model:[nationalContactInstanceCount: NationalContact.count()]
    }

    def show(NationalContact nationalContactInstance) {
        respond nationalContactInstance
    }

    def create() {
        respond new NationalContact(params)
    }

    @Transactional
    def save(NationalContact nationalContactInstance) {
        if (nationalContactInstance == null) {
            notFound()
            return
        }

        if (nationalContactInstance.hasErrors()) {
            respond nationalContactInstance.errors, view:'create'
            return
        }

        nationalContactInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nationalContactInstance.label', default: 'NationalContact'), nationalContactInstance.id])
                redirect nationalContactInstance
            }
            '*' { respond nationalContactInstance, [status: CREATED] }
        }
    }

    def edit(NationalContact nationalContactInstance) {
        respond nationalContactInstance
    }

    @Transactional
    def update(NationalContact nationalContactInstance) {
        if (nationalContactInstance == null) {
            notFound()
            return
        }

        if (nationalContactInstance.hasErrors()) {
            respond nationalContactInstance.errors, view:'edit'
            return
        }

        nationalContactInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'NationalContact.label', default: 'NationalContact'), nationalContactInstance.id])
                redirect nationalContactInstance
            }
            '*'{ respond nationalContactInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(NationalContact nationalContactInstance) {

        if (nationalContactInstance == null) {
            notFound()
            return
        }

        nationalContactInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'NationalContact.label', default: 'NationalContact'), nationalContactInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nationalContactInstance.label', default: 'NationalContact'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
