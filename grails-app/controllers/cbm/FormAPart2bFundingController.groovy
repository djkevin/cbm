package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
@Transactional(readOnly = true)
class FormAPart2bFundingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart2bFunding.list(params), model:[formAPart2bFundingInstanceCount: FormAPart2bFunding.count()]
    }

    def show(FormAPart2bFunding formAPart2bFundingInstance) {
        respond formAPart2bFundingInstance
    }

    def create() {
        respond new FormAPart2bFunding(params)
    }

    @Transactional
    def save(FormAPart2bFunding formAPart2bFundingInstance) {
        if (formAPart2bFundingInstance == null) {
            notFound()
            return
        }

        if (formAPart2bFundingInstance.hasErrors()) {
            respond formAPart2bFundingInstance.errors, view:'create'
            return
        }

        formAPart2bFundingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2bFundingInstance.label', default: 'FormAPart2bFunding'), formAPart2bFundingInstance.id])
                redirect formAPart2bFundingInstance
            }
            '*' { respond formAPart2bFundingInstance, [status: CREATED] }
        }
    }

    def edit(FormAPart2bFunding formAPart2bFundingInstance) {
        respond formAPart2bFundingInstance
    }

    @Transactional
    def update(FormAPart2bFunding formAPart2bFundingInstance) {
        if (formAPart2bFundingInstance == null) {
            notFound()
            return
        }

        if (formAPart2bFundingInstance.hasErrors()) {
            respond formAPart2bFundingInstance.errors, view:'edit'
            return
        }

        formAPart2bFundingInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart2bFunding.label', default: 'FormAPart2bFunding'), formAPart2bFundingInstance.id])
                redirect formAPart2bFundingInstance
            }
            '*'{ respond formAPart2bFundingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart2bFunding formAPart2bFundingInstance) {

        if (formAPart2bFundingInstance == null) {
            notFound()
            return
        }

        formAPart2bFundingInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart2bFunding.label', default: 'FormAPart2bFunding'), formAPart2bFundingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2bFundingInstance.label', default: 'FormAPart2bFunding'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
