package cbm

import cbm.admin.StateParty

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class StatePartyController {

    def statePartyService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 20, 100)
        respond StateParty.listOrderByCountry(params), model:[statePartyInstanceCount: StateParty.count()]
    }

    def show(StateParty statePartyInstance) {
        respond statePartyInstance
    }

    def create() {
        respond new StateParty(params)
    }

    def save(StateParty statePartyInstance) {
        if (statePartyInstance == null) {
            notFound()
            return
        }

        if (statePartyInstance.hasErrors()) {
            respond statePartyInstance.errors, view:'create'
            return
        }

        statePartyService.save(statePartyInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'statePartyInstance.label', default: 'StateParty'), statePartyInstance.id])
                redirect statePartyInstance
            }
            '*' { respond statePartyInstance, [status: CREATED] }
        }
    }

    def edit(StateParty statePartyInstance) {
        respond statePartyInstance
    }

    def update(StateParty statePartyInstance) {
        if (statePartyInstance == null) {
            notFound()
            return
        }

        if (statePartyInstance.hasErrors()) {
            respond statePartyInstance.errors, view:'edit'
            return
        }

        statePartyService.save(statePartyInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StateParty.label', default: 'StateParty'), statePartyInstance.id])
                redirect statePartyInstance
            }
            '*'{ respond statePartyInstance, [status: OK] }
        }
    }

    def delete(StateParty statePartyInstance) {

        if (statePartyInstance == null) {
            notFound()
            return
        }

        statePartyService.delete(statePartyInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StateParty.label', default: 'StateParty'), statePartyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'statePartyInstance.label', default: 'StateParty'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
