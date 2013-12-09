package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
@Transactional(readOnly = true)
class FormBController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormB.list(params), model:[formBInstanceCount: FormB.count()]
    }

    def show(FormB formBInstance) {
        respond formBInstance
    }

    def create() {
        respond new FormB(params)
    }

    @Transactional
    def save(FormB formBInstance) {
        if (formBInstance == null) {
            notFound()
            return
        }

        if (formBInstance.hasErrors()) {
            respond formBInstance.errors, view:'create'
            return
        }
        println("no errors, about to save...")
        formBInstance.save flush:true
        println("after save")
        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formBInstance.label', default: 'FormB'), formBInstance.id])
                /*redirect formBInstance*/
                redirect (controller: "report", action:"show", id:formBInstance.report.id, report:formBInstance.report)
            }
            '*' { respond formBInstance, [status: CREATED] }
        }
    }

    def edit(FormB formBInstance) {
        respond formBInstance
    }

    @Transactional
    def update(FormB formBInstance) {
        if (formBInstance == null) {
            notFound()
            return
        }

        if (formBInstance.hasErrors()) {
            respond formBInstance.errors, view:'edit'
            return
        }

        formBInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormB.label', default: 'FormB'), formBInstance.id])
                redirect formBInstance
            }
            '*'{ respond formBInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormB formBInstance) {

        if (formBInstance == null) {
            notFound()
            return
        }

        formBInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormB.label', default: 'FormB'), formBInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formBInstance.label', default: 'FormB'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
