package cbm

import cbm.form.FormAPart1ContainmentUnit
import cbm.form.FormAPart1a

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
@Transactional(readOnly = true)
class FormAPart1ContainmentUnitController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart1ContainmentUnit.list(params), model:[formAPart1ContainmentUnitInstanceCount: FormAPart1ContainmentUnit.count()]
		*/		
		response.sendError(404)
    }

    def show(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
        respond formAPart1ContainmentUnitInstance
    }

	@Secured(['ROLE_EDITOR'])
    def create() {
        def formAPart1a = FormAPart1a.findById(params.long('formAPart1.id'))
        def fAP1CU = new FormAPart1ContainmentUnit()
        fAP1CU.setFacility(formAPart1a)

        respond fAP1CU		
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def save(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
        if (formAPart1ContainmentUnitInstance == null) {
            notFound()
            return
        }

        if (formAPart1ContainmentUnitInstance.hasErrors()) {
            respond formAPart1ContainmentUnitInstance.errors, view:'create'
            return
        }

        formAPart1ContainmentUnitInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart1ContainmentUnitInstance.label', default: 'FormAPart1ContainmentUnit'), formAPart1ContainmentUnitInstance.id])
//                redirect formAPart1ContainmentUnitInstance
				// DJ redirect to class FormAPart1 upon create
				redirect (controller: "formAPart1a", action:"show", id:formAPart1ContainmentUnitInstance.facility.id, formAPart1:formAPart1ContainmentUnitInstance.facility)
            }
            '*' { respond formAPart1ContainmentUnitInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    def edit(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
        respond formAPart1ContainmentUnitInstance
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def update(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
        if (formAPart1ContainmentUnitInstance == null) {
            notFound()
            return
        }

        if (formAPart1ContainmentUnitInstance.hasErrors()) {
            respond formAPart1ContainmentUnitInstance.errors, view:'edit'
            return
        }

        formAPart1ContainmentUnitInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart1ContainmentUnit.label', default: 'FormAPart1ContainmentUnit'), formAPart1ContainmentUnitInstance.id])
//                 redirect formAPart1ContainmentUnitInstance
			    // DJ redirect to class FormAPart1 upon save
				redirect (controller: "formAPart1a", action:"show", id:formAPart1ContainmentUnitInstance.facility.id)
            }
            '*'{ respond formAPart1ContainmentUnitInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_EDITOR'])
    @Transactional
    def delete(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {

        if (formAPart1ContainmentUnitInstance == null) {
            notFound()
            return
        }

        formAPart1ContainmentUnitInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart1ContainmentUnit.label', default: 'FormAPart1ContainmentUnit'), formAPart1ContainmentUnitInstance.id])
//                redirect action:"index", method:"GET"
				// DJ redirect to class FormAPart1 upon delete
				redirect (controller: "formAPart1a", action:"show", id:formAPart1ContainmentUnitInstance.facility.id)
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart1ContainmentUnitInstance.label', default: 'FormAPart1ContainmentUnit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	@Secured(['ROLE_EDITOR'])
	def cancelEdit(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
		flash.message=message code: 'formAPart1.containmentUnit.edit.cancel'
		redirect (controller: "formAPart1a", action:"show", id:formAPart1ContainmentUnitInstance.facility.id)
	}
}
