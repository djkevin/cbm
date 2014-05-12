package cbm

import cbm.form.FormAPart2c

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart2cController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart2c.list(params), model:[formAPart2cInstanceCount: FormAPart2c.count()]
    }

    def show(FormAPart2c formAPart2cInstance) {
        respond formAPart2cInstance
    }

    def create() {
        respond new FormAPart2c(params)
    }

    @Transactional
    def save(FormAPart2c formAPart2cInstance) {
        if (formAPart2cInstance == null) {
            notFound()
            return
        }

        if (formAPart2cInstance.hasErrors()) {
            respond formAPart2cInstance.errors, view:'create'
            return
        }

        formAPart2cInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2cInstance.label', default: 'FormAPart2c'), formAPart2cInstance.id])
                redirect (controller: "formAPart2b", action:"show", id:formAPart2cInstance.formAPart2b.id)
              //  redirect formAPart2cInstance
            }
            '*' { respond formAPart2cInstance, [status: CREATED] }
        }
    }

    def edit(FormAPart2c formAPart2cInstance) {
        respond formAPart2cInstance
    }

    @Transactional
    def update(FormAPart2c formAPart2cInstance) {
        if (formAPart2cInstance == null) {
            notFound()
            return
        }

        if (formAPart2cInstance.hasErrors()) {
            respond formAPart2cInstance.errors, view:'edit'
            return
        }

        formAPart2cInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart2c.label', default: 'FormAPart2c'), formAPart2cInstance.id])
                redirect formAPart2cInstance
            }
            '*'{ respond formAPart2cInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart2c formAPart2cInstance) {

        if (formAPart2cInstance == null) {
            notFound()
            return
        }

        formAPart2cInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart2c.label', default: 'FormAPart2c'), formAPart2cInstance.id])
              /*  redirect action:"index", method:"GET"*/
                redirect (controller: "formAPart2b", action:"show", id:formAPart2cInstance.formAPart2b.id)
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2cInstance.label', default: 'FormAPart2c'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
