package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
@Transactional(readOnly = true)
class ReportController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def user = SecUser.get(springSecurityService.principal.id)
        // respond Report.list(params), model:[reportInstanceCount: Report.count()]
        respond Report.findAllByStateParty(user.stateParty), model:[reportInstanceCount: Report.count(), statePartyId: user.stateParty.id]
    }

    def show(Report reportInstance) {
        respond reportInstance
    }

    def create() {
        respond new Report(params)
    }

    @Transactional
    def save(Report reportInstance) {
        if (reportInstance == null) {
            notFound()
            return
        }

        if (reportInstance.hasErrors()) {
            respond reportInstance.errors, view:'create'
            return
        }

        reportInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reportInstance.label', default: 'Report'), reportInstance.id])
                redirect reportInstance
            }
            '*' { respond reportInstance, [status: CREATED] }
        }
    }

    def edit(Report reportInstance) {
        respond reportInstance
    }

    @Transactional
    def update(Report reportInstance) {
        if (reportInstance == null) {
            notFound()
            return
        }

        if (reportInstance.hasErrors()) {
            respond reportInstance.errors, view:'edit'
            return
        }

        reportInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Report.label', default: 'Report'), reportInstance.id])
                redirect reportInstance
            }
            '*'{ respond reportInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Report reportInstance) {

        if (reportInstance == null) {
            notFound()
            return
        }

        reportInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Report.label', default: 'Report'), reportInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reportInstance.label', default: 'Report'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}