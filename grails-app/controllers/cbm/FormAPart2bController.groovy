package cbm

import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
@Transactional(readOnly = true)
class FormAPart2bController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
       // respond FormAPart2b.list(params), model:[formAPart2bInstanceCount: FormAPart2b.count()]

        def reportId =params.long('reportId')
        println("report id is: "+reportId)
        Report r = Report.findById(reportId)
        respond FormAPart2b.findAllByReport(r) , model:[formAPart2bInstanceCount: FormAPart2b.count(), reportId:reportId]
    }

    def show(FormAPart2b formAPart2bInstance) {
        respond formAPart2bInstance
    }

    def create() {
        println "in create"
        def reportId = params.long('reportId')
        Report r =  Report.findById(reportId)
        FormAPart2b f = new FormAPart2b()
        f.setReport(r)
        respond f
//        respond new FormAPart2b(params)
    }

    @Transactional
    def save(FormAPart2b formAPart2bInstance) {

        println "in save..."
        if (!(request instanceof MultipartHttpServletRequest)) {
            println("no multipart")
        }

        if (formAPart2bInstance == null) {
            notFound()
            return
        }
        if (formAPart2bInstance.hasErrors()) {
            respond formAPart2bInstance.errors, view:'create'
            return
        }
        formAPart2bInstance.save flush:true
        println "after save,id: "+formAPart2bInstance.id
        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2bInstance.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                //redirect formAPart2bInstance
                redirect (controller: "report", action:"show", id:formAPart2bInstance.report.id, report:formAPart2bInstance.report)
            }
            '*' { respond formAPart2bInstance, [status: CREATED] }
        }
    }

    def edit(FormAPart2b formAPart2bInstance) {
        respond formAPart2bInstance
    }

    @Transactional
    def update(FormAPart2b formAPart2bInstance) {
        println "in update... "
        if (formAPart2bInstance == null) {
            notFound()
            return
        }

        if (formAPart2bInstance.hasErrors()) {
            respond formAPart2bInstance.errors, view:'edit'
            return
        }

        formAPart2bInstance.save flush:true
        println("after save")
        request.withFormat {

            form multipartForm{
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
               println "Save ok"
                redirect formAPart2bInstance
            }
            '*'{ respond formAPart2bInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart2b formAPart2bInstance) {

        if (formAPart2bInstance == null) {
            notFound()
            return
        }

        formAPart2bInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2bInstance.label', default: 'FormAPart2b'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
