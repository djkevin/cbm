package cbm

import cbm.admin.NationalContact
import cbm.form.FormAPart1a
import cbm.report.Report
import cbm.usermgt.SecUser
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class ReportController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def springSecurityService
    def securityService

    SecUser getUser() {
        return SecUser.get(springSecurityService.principal.id)
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            respond Report.findAll()
        } else {
            def user = getUser()
            respond Report.findAllByStateParty(user.stateParty), model: [reportInstanceCount: Report.count(), statePartyId: user.stateParty.id]
        }

    }

    // @Secured(["@securityService.canView(#reportInstance)"])
    def show(Report reportInstance) {
        if (securityService.canView(reportInstance)) {
            respond reportInstance
        } else {
            flash.message = message(code: 'report.url.access.error', default: 'You can only access records created by your country')
            redirect action: "index", method: "GET"
        }

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
            respond reportInstance.errors, view: 'create'
            return
        }

        reportInstance.save flush: true

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
            respond reportInstance.errors, view: 'edit'
            return
        }

        reportInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Report.label', default: 'Report'), reportInstance.id])
                redirect reportInstance
            }
            '*' { respond reportInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Report reportInstance) {

        if (reportInstance == null) {
            notFound()
            return
        }

        reportInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Report.label', default: 'Report'), reportInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reportInstance.label', default: 'Report'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def print(Report reportInstance) {

        Set<FormAPart1a> formAPart1as = reportInstance.formAPart1
        response.setHeader("Content-Disposition", "attachment; filename="+reportInstance+".pdf")

        Set<NationalContact> nationalContacts = reportInstance.stateParty.nationalContact

        renderPdf template: 'print', contentType: 'application/pdf', model: [reportInstance: reportInstance, formAPart1aInstances: formAPart1as, nationalContacts:nationalContacts]
    }
}
