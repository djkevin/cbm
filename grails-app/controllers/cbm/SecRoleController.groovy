package cbm

import cbm.usermgt.SecRole

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * There's no security annotation for this controller because roles should NOT be managed (created/edited/deleted) through the app.
 * When a role needs to be created/edited/deleted, the code needs to be adapted as well, thus makes no sense to do role management through the app itself. 
 * Roles are to be created/edited/deleted manually at the DB level, with SQL. 
 */
@Transactional(readOnly = true)
class SecRoleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SecRole.list(params), model: [secRoleInstanceCount: SecRole.count()]
    }

    def show(SecRole secRoleInstance) {
        respond secRoleInstance
    }

    def create() {
        respond new SecRole(params)
    }

    @Transactional
    def save(SecRole secRoleInstance) {
        if (secRoleInstance == null) {
            notFound()
            return
        }

        if (secRoleInstance.hasErrors()) {
            respond secRoleInstance.errors, view: 'create'
            return
        }

        secRoleInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'secRoleInstance.label', default: 'SecRole'), secRoleInstance.id])
                redirect secRoleInstance
            }
            '*' { respond secRoleInstance, [status: CREATED] }
        }
    }

    def edit(SecRole secRoleInstance) {
        respond secRoleInstance
    }

    @Transactional
    def update(SecRole secRoleInstance) {
        if (secRoleInstance == null) {
            notFound()
            return
        }

        if (secRoleInstance.hasErrors()) {
            respond secRoleInstance.errors, view: 'edit'
            return
        }

        secRoleInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SecRole.label', default: 'SecRole'), secRoleInstance.id])
                redirect secRoleInstance
            }
            '*' { respond secRoleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SecRole secRoleInstance) {

        if (secRoleInstance == null) {
            notFound()
            return
        }

        secRoleInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SecRole.label', default: 'SecRole'), secRoleInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'secRoleInstance.label', default: 'SecRole'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
