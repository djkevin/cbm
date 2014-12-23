package cbm

import cbm.admin.NationalContact
import cbm.report.Report

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class NationalContactController {

    def nationalContactService
    def reportService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		response.sendError(404)
    }

    def show(NationalContact nationalContactInstance) {
        respond nationalContactInstance
    }

	@Secured(['ROLE_SUBMITTER'])
    def create() {
        Report r = reportService.getById(params.long('report.id'))
        NationalContact n = new NationalContact()
        n.location = new Address()
        n.country = r.getStateParty()?.country
        respond n
    }

	@Secured(['ROLE_SUBMITTER'])
    def save(NationalContact nationalContactInstance) {
        if (nationalContactInstance == null) {
            notFound()
            return
        }
        nationalContactInstance.stateParty?.id = params.long('stateParty.id')
        def reportId = params.long('report.id')

        if (nationalContactInstance.hasErrors()) {
            respond nationalContactInstance.errors, view:'create'
            return
        }

        nationalContactService.save(nationalContactInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nationalContact.label', default: 'NationalContact'), nationalContactInstance.id])
                redirect action: "show",  id: nationalContactInstance.id, method: "GET", params: ['report.id':reportId]
            }
            '*' { respond nationalContactInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_SUBMITTER'])
    def edit(NationalContact nationalContactInstance) {
        respond nationalContactInstance
    }

	@Secured(['ROLE_SUBMITTER'])
    def update(NationalContact nationalContactInstance) {
        if (nationalContactInstance == null) {
            notFound()
            return
        }
        if (nationalContactInstance.hasErrors()) {
            respond nationalContactInstance.errors, view:'edit'
            return
        }

        def reportId = params.long('report.id')

        nationalContactService.save(nationalContactInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'nationalContact.label', default: 'NationalContact'), nationalContactInstance.id])
                redirect action: "show",  id: nationalContactInstance.id, method: "GET", params: ['report.id':reportId]
            }
            '*'{ respond nationalContactInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_SUBMITTER'])
    def delete(NationalContact nationalContactInstance) {

        if (nationalContactInstance == null) {
            notFound()
            return
        }

        nationalContactService.delete(nationalContactInstance)

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
                redirect controller: "report", action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(NationalContact nationalContactInstance) {

        def fileName = nationalContactInstance.country.iso2+"_"+nationalContactInstance.lastName
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [nationalContactInstance: nationalContactInstance]
    }
	
}
