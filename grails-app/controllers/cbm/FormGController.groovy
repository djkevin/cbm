package cbm

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormGController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormG.list(params), model:[formGInstanceCount: FormG.count()]
    }

    def show(FormG formGInstance) {
        respond formGInstance
    }
/*    private def withReport(id="reportId", Closure c) {
        println("params: "+params)
        def report = Report.get(params[id])
        if(report) {
            println "report:"+ report
            c.call report
        } else {
            println "report not found"
            flash.message = "The report was not found."
            redirect action:"list"
        }
    }*/

    def create() {  //TODO use mixin/abstract class to extract common controller methods
 /*       withReport{r ->

            println "report2: "+report

            FormG formG = new FormG()
            formG.setReport(r)
            respond formG
        }*/

        def reportId = params.long('reportId')
        Report r =  Report.findById(reportId)
        FormG formG = new FormG();
        formG.setReport(r)

        Address a = new Address() //Embedded object
        formG.setLocation(a)
        respond formG


    }

    @Transactional
    def save(FormG formGInstance) {
        println "in create"+formGInstance

        println "facility: "+ formGInstance.facilityName
        println "street: "+ formGInstance.location.street1

        if (formGInstance == null) {
            notFound()
            return
        }

        if (formGInstance.hasErrors()) {
            respond formGInstance.errors, view:'create'
            return
        }

        formGInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formGInstance.label', default: 'FormG'), formGInstance.id])
                redirect formGInstance
            }
            '*' { respond formGInstance, [status: CREATED] }
        }
    }

    def edit(FormG formGInstance) {
        respond formGInstance
    }

    @Transactional
    def update(FormG formGInstance) {
        if (formGInstance == null) {
            notFound()
            return
        }

        if (formGInstance.hasErrors()) {
            respond formGInstance.errors, view:'edit'
            return
        }

        formGInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormG.label', default: 'FormG'), formGInstance.id])
                redirect formGInstance
            }
            '*'{ respond formGInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormG formGInstance) {

        if (formGInstance == null) {
            notFound()
            return
        }

        formGInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormG.label', default: 'FormG'), formGInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formGInstance.label', default: 'FormG'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormG formGInstance) {
        renderPdf template: 'print', contentType: 'application/pdf', model: [formGInstance: formGInstance]
    }
}
