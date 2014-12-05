package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormZero
import cbm.report.Report
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import org.aspectj.util.FileUtil

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
@Transactional(readOnly = true)
class FormZeroController {

    def formService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormZero.list(params), model: [formZeroInstanceCount: FormZero.count()]
		*/		
		response.sendError(404)
    }

    def show(FormZero formZeroInstance) {
        respond formZeroInstance
    }
	
    /**
     * When we create the Declaration form,
     * We use a service to pre-fill the values
     * based on whether the form has been created or not
     * @return a formZero instance
     * TODO: Move to FormService
     */
	@Secured(['ROLE_SUBMITTER'])
    def create() {
        FormZero formZero = new FormZero(params)
        def reportId = params.long('report.id')
        Report r = Report.findById(reportId)

        //new instances required to be able to access domain constraints from gsp
        // Ticket 105 -  unchecked by default
        formZero.setFormAPart1(new DeclarationForm(nothingToDeclare: r.formAPart1, nothingNewToDeclare: r.formAPart1))
        formZero.setFormAPart2a(new DeclarationForm(nothingToDeclare: r.formAPart2a, nothingNewToDeclare: r.formAPart2a))
        formZero.setFormAPart2b(new DeclarationForm(nothingToDeclare: r.formAPart2b, nothingNewToDeclare: r.formAPart2b))
        formZero.setFormAPart2c(new DeclarationForm(nothingToDeclare: r.formAPart2b?.formAPart2c, nothingNewToDeclare: r.formAPart2b?.formAPart2c))
        formZero.setFormB(new DeclarationForm(nothingToDeclare: r.formB, nothingNewToDeclare: r.formB))
        formZero.setFormC(new DeclarationForm(nothingToDeclare: r.formC, nothingNewToDeclare: r.formC))
        formZero.setFormE(new DeclarationForm(nothingToDeclare: r.formE, nothingNewToDeclare: r.formE))
        formZero.setFormF(new DeclarationForm(nothingToDeclare: r.formF, nothingNewToDeclare: r.formF))
        formZero.setFormG(new DeclarationForm(nothingToDeclare: r.formG, nothingNewToDeclare: r.formG))

        formZero.formStatus = FormStatus.DRAFT
        formZero.visibility = Visibility.PUBLIC


        respond formZero
    }

	@Secured(['ROLE_SUBMITTER'])
    @Transactional
    def save(FormZero formZeroInstance) {
        if (formZeroInstance == null) {
            notFound()
            return
        }

        if (formZeroInstance.hasErrors()) {
            respond formZeroInstance.errors, view: 'create'
            return
        }

        formZeroInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formZero.label', default: 'FormZero'), formZeroInstance.id])
                //redirect formZeroInstance
                redirect(controller: "report", action: "show", id: formZeroInstance.report.id, report: formZeroInstance.report)
            }
            '*' { respond formZeroInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_SUBMITTER'])
    def edit(FormZero formZeroInstance) {
        respond formZeroInstance
    }

	@Secured(['ROLE_SUBMITTER'])
    @Transactional
    def update(FormZero formZeroInstance) {
        if (formZeroInstance == null) {
            notFound()
            return
        }

        if (formZeroInstance.hasErrors()) {
            respond formZeroInstance.errors, view: 'edit'
            return
        }

        formZeroInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formZero.label', default: 'FormZero'), formZeroInstance.id])
                redirect formZeroInstance
            }
            '*' { respond formZeroInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_SUBMITTER'])
    @Transactional
    def delete(FormZero formZeroInstance) {

        if (formZeroInstance == null) {
            notFound()
            return
        }

        formZeroInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formZero.label', default: 'FormZero'), formZeroInstance.id])
                redirect action: "show", controller: "report", id: formZeroInstance.report.id, method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formZero.label', default: 'FormZero'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def print(FormZero formZeroInstance) {

        def fileName = formZeroInstance.report.getReportName() + "_"+ formZeroInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formZeroInstance: formZeroInstance]
    }
	
}
