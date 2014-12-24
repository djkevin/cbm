package cbm

import cbm.form.FormAPart1ContainmentUnit
import cbm.form.FormAPart1a
import cbm.report.Report
import grails.test.mixin.*
import spock.lang.*

@TestFor(FormAPart1aController)
@Mock([FormAPart1a, FormAPart1ContainmentUnit])
class FormAPart1aControllerSpec extends Specification {
    
    def formAPart1aService = [
            save: { FormAPart1a formAPart1a -> formAPart1a.setId(1)},
            delete: { FormAPart1a formAPart1a -> formAPart1a = null},
            deleteContainmentUnit: { long id-> }
    ]

    def reportService = [
            getById: { Long id -> new Report(id: id) },
            load   : { Long id -> new Report(id: id) }
    ] as ReportService


    def setup(){
        controller.formAPart1aService = formAPart1aService
        controller.reportService = reportService

        request.format = 'form'
    }

    def populateValidParams(params) {
        assert params != null
        params['facilityName'] = 'facilityName'
        params['responsibleOrganisation'] = 'responsibleOrganisation'
        params['financingSources'] = 'financingSources'
        params['scope'] = 'scope'
        params['declaredInAccordanceWithFormAPart2c'] = 'true'
        params['location.street1'] = "street1"
        params['report.id']="1"
        params['country.id']="1"

    }

    def populateInvalidContainmentUnits(params){
       params['formAPart1ContainmentUnit.bioSafetyLevel'] = "BSL3"
       params['formAPart1ContainmentUnit.unitType'] = "BSL3"
       params['formAPart1ContainmentUnit.unitSize'] = "notANumber"
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
            model.formAPart1aInstance!= null
    }

    void "Test the save action correctly persists an instance"() {
        //TODO check whether containment units are reattached correctly

        when:"The save action is executed with an invalid instance"
            def formAPart1 = new FormAPart1a()
            formAPart1.validate()
            controller.save(formAPart1)

        then:"The create view is rendered again with the correct model"
            model.formAPart1aInstance!= null
            view == 'create'

        when:"The save action is issued with incorrect containment units"
            response.reset()
            populateValidParams(params)
            populateInvalidContainmentUnits(params)
            formAPart1 = new FormAPart1a(params)

            controller.save(formAPart1)
        then:"The create view is rendered again with the correct model"
            model.formAPart1aInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formAPart1 = new FormAPart1a(params)

            controller.save(formAPart1)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formAPart1a/show/1'
            controller.flash.message != null
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formAPart1 = new FormAPart1a(params)
            controller.show(formAPart1)

        then:"A model is populated containing the domain instance"
            model.formAPart1aInstance == formAPart1
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formAPart1 = new FormAPart1a(params)
            controller.edit(formAPart1)

        then:"A model is populated containing the domain instance"
            model.formAPart1aInstance == formAPart1
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/report/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formAPart1 = new FormAPart1a()
            formAPart1.validate()
            controller.update(formAPart1)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formAPart1aInstance == formAPart1

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formAPart1 = new FormAPart1a(params)//.save//(flush: true)
            controller.update(formAPart1)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formAPart1a/show/$formAPart1.id"
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

            def formAPart1a = new FormAPart1a(params)
            formAPart1aService.save(formAPart1a)

        then:"It exists"
            formAPart1a.id == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formAPart1a)

        then:"The instance is deleted"
            response.redirectedUrl == '/report/show'
            flash.message != null
    }

    void "Test that the addMoreRows actions renders the correct template"(){

        given:"The addMoreRows action is called for a given report"
            views['/formAPart1a/_rowContainmentUnit.gsp'] = 'mock template'
            params['report.id'] = 1

        when:"The action is called"
            controller.addMoreRows()

        then:"The response displays the correct template"
            response.text.trim() == 'mock template'
    }

    void "Test that the deleteContainmentUnit action"(){
        given:"The deleteContainmentUnit action is called for a valid containment unit id"
            params['id']=1

        when:"The delete containment unit action is called"
             controller.deleteContainmentUnit()

        then:
            response.text == '{"message":"default.deleted.message"}'
    }
}