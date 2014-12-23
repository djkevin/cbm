package cbm

import cbm.admin.NationalContact
import cbm.admin.NationalContactService
import cbm.report.Report
import grails.test.mixin.*
import spock.lang.*

@TestFor(NationalContactController)
@Mock(NationalContact)
class NationalContactControllerSpec extends Specification {

    def nationalContactService = [
            save: { NationalContact nationalContact -> nationalContact.setId(1)},
            delete: { NationalContact nationalContact -> nationalContact = null}

    ] as NationalContactService

    def reportService = [
            getById: {Long id -> new Report(id: id)}
    ] as ReportService

    def setup(){
        controller.nationalContactService = nationalContactService
        controller.reportService = reportService

        request.format = 'form'
    }

    def populateValidParams(params) {
        assert params != null
        params['firstName'] = "Mr"
        params['firstName'] = "a"
        params['lastName'] = "a"
        params['position'] = "a"
        params['location.street1'] = "a"
        params['stateParty.id'] = "1"
        params['report.id']="1"
        params['country.id']="1"

    }


    void "Test the index action returns a 404 error"() {

        when:"The index action is executed"
            controller.index()

        then:"A 404 error is returned"
            response.status == 404
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.nationalContactInstance!= null
    }


    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def nationalContact = new NationalContact()
            nationalContact.validate()
            controller.save(nationalContact)

        then:"The create view is rendered again with the correct model"
            model.nationalContactInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            nationalContact = new NationalContact(params)
            nationalContact.country = new cbm.admin.Country()
            request.format = 'form'
            controller.save(nationalContact)

        then:"A redirect is issued to the show action"
            nationalContact.id == 1
            controller.flash.message != null
            response.redirectedUrl == '/nationalContact/show/1?report.id=1'

    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def nationalContact = new NationalContact(params)
            controller.show(nationalContact)

        then:"A model is populated containing the domain instance"
            model.nationalContactInstance == nationalContact
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def nationalContact = new NationalContact(params)
            controller.edit(nationalContact)

        then:"A model is populated containing the domain instance"
            model.nationalContactInstance == nationalContact
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/report/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def nationalContact = new NationalContact()
            nationalContact.validate()
            controller.update(nationalContact)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.nationalContactInstance == nationalContact

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            nationalContact = new NationalContact(params)//.save(flush: true)
            request.format = 'form'
            controller.update(nationalContact)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/nationalContact/show/$nationalContact.id?report.id=${params.report.id}"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/report/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def nationalContact = new NationalContact(params)//.save(flush: true)
            nationalContactService.save(nationalContact)

        then:"It exists"
            nationalContact.id == 1

        when:"The domain instance is passed to the delete action"
            request.format = 'form'
            controller.delete(nationalContact)

        then:"The instance is deleted"
            println "nationalcontact: "+response.redirectedUrl
           // nationalContact == null   //TODO check for null? nationalContact== incomplete
            response.redirectedUrl == "/report/show/${params.report.id}"
            flash.message != null
    }
}
