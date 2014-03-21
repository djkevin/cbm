package cbm

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart2bOrganigramController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormAPart2bOrganigram.list(params), model: [formAPart2bOrganigramInstanceCount: FormAPart2bOrganigram.count()]
    }

    def show(FormAPart2bOrganigram formAPart2bOrganigramInstance) {
        respond formAPart2bOrganigramInstance
    }

    def create() {

        def formAPart2bId = params.long('formAPart2b.id')
        println "in create: "+formAPart2bId
        FormAPart2b formAPart2b = FormAPart2b.findById(formAPart2bId)

        FormAPart2bOrganigram f = new FormAPart2bOrganigram(params)
        f.setFormAPart2b(formAPart2b)
        respond f
       // respond new FormAPart2bOrganigram(params)
    }

    @Transactional
    def save(FormAPart2bOrganigram formAPart2bOrganigramInstance) {
        if (formAPart2bOrganigramInstance == null) {
            notFound()
            return
        }

        if (formAPart2bOrganigramInstance.hasErrors()) {
            respond formAPart2bOrganigramInstance.errors, view: 'create'
            return
        }

        formAPart2bOrganigramInstance.save flush: true

        request.withFormat {
            form multipartForm{
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2bOrganigramInstance.label', default: 'FormAPart2bOrganigram'), formAPart2bOrganigramInstance.id])
               /* redirect formAPart2bOrganigramInstance*/
                redirect (controller: "formAPart2b", action:"show", id:formAPart2bOrganigramInstance.formAPart2b.id)
            }
            '*' { respond formAPart2bOrganigramInstance, [status: CREATED] }
        }
    }

    def edit(FormAPart2bOrganigram formAPart2bOrganigramInstance) {
        respond formAPart2bOrganigramInstance
    }

    @Transactional
    def update(FormAPart2bOrganigram formAPart2bOrganigramInstance) {

        if (formAPart2bOrganigramInstance == null) {
            notFound()
            return
        }


        if (formAPart2bOrganigramInstance.hasErrors()) {
            respond formAPart2bOrganigramInstance.errors, view: 'edit'
            return
        }

        formAPart2bOrganigramInstance.save flush: true

        request.withFormat {
            form multipartForm{
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart2bOrganigram.label', default: 'FormAPart2bOrganigram'), formAPart2bOrganigramInstance.id])
                /*redirect formAPart2bOrganigramInstance*/
                redirect (controller: "formAPart2b", action:"show", id:formAPart2bOrganigramInstance.formAPart2b.id)
            }
            '*' { respond formAPart2bOrganigramInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart2bOrganigram formAPart2bOrganigramInstance) {

        if (formAPart2bOrganigramInstance == null) {
            notFound()
            return
        }

        formAPart2bOrganigramInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart2bOrganigram.label', default: 'FormAPart2bOrganigram'), formAPart2bOrganigramInstance.id])
                /*redirect action: "index", method: "GET"*/
                redirect (controller: "formAPart2b", action:"show", id:formAPart2bOrganigramInstance.formAPart2b.id)
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2bOrganigramInstance.label', default: 'FormAPart2bOrganigram'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
