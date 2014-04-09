package cbm

import grails.plugin.springsecurity.SpringSecurityUtils

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class ReportController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService
 //   def user =SecUser.get(springSecurityService.principal.id)

    SecUser getUser(){
        return SecUser.get(springSecurityService.principal.id)
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            respond Report.findAll()
        }else{
            def user = getUser()
            respond Report.findAllByStateParty(user.stateParty), model:[reportInstanceCount: Report.count(), statePartyId: user.stateParty.id]
        }

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

    def print(Report reportInstance) {

        Set<FormAPart1a> formAPart1as= reportInstance.formAPart1
        renderPdf template: 'print', contentType: 'application/pdf', model: [reportInstance: reportInstance, formAPart1aInstances:formAPart1as]
    }
}
