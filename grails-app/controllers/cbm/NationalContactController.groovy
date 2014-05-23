package cbm

import cbm.admin.NationalContact

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
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
        NationalContact n = new NationalContact()
        n.location = new Address()
        respond n
    }

    @Transactional
    def save(NationalContact nationalContactInstance) {
        if (nationalContactInstance == null) {
            notFound()
            return
        }
        nationalContactInstance.stateParty.id = params.long('stateParty.id')
        def reportId = params.long('report.id')

        if (nationalContactInstance.hasErrors()) {
            respond nationalContactInstance.errors, view:'create'
            return
        }

        nationalContactInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nationalContact.label', default: 'NationalContact'), nationalContactInstance.id])
                redirect action: "show",  id: nationalContactInstance.id, method: "GET", params: ['report.id':reportId]
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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'nationalContact.label', default: 'NationalContact'), nationalContactInstance.id])
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

                flash.message = message(code: 'default.deleted.message', args: [message(code: 'nationalContact.label', default: 'NationalContact'), nationalContactInstance.id])

                //National contact can be accessed via admin page or Report Show page
                if (params?.report.id){
                    redirect action: "show", controller: "report", id: params.report.id, method: "GET"
                }else{
                    redirect action: "index", method: "GET"
                }
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nationalContact.label', default: 'NationalContact'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
