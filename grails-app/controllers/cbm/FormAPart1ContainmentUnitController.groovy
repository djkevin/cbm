package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart1ContainmentUnitController {

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart1ContainmentUnit.list(params), model:[formAPart1ContainmentUnitInstanceCount: FormAPart1ContainmentUnit.count()]
    }

    def show(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
        respond formAPart1ContainmentUnitInstance
    }

    def create() {
//		def test = params.formAPart1.id
//		println"fAP1 id: "+params[formAPart1.id]
        respond new FormAPart1ContainmentUnit(params)
		
    }

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

    def edit(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
        respond formAPart1ContainmentUnitInstance
    }

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

    @Transactional
    def delete(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {

        if (formAPart1ContainmentUnitInstance == null) {
            notFound()
            return
        }
		println "in delete"
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
	
	def cancelEdit(FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance) {
		flash.message=message code: 'formAPart1.containmentUnit.edit.cancel'
		redirect (controller: "formAPart1a", action:"show", id:formAPart1ContainmentUnitInstance.facility.id)
	}
}
