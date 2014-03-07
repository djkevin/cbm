package cbm

import grails.test.MockUtils
import grails.test.mixin.*
import spock.lang.*

@TestFor(FormGController)
@Mock(FormG)
class FormGControllerSpec extends Specification {



    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
        params["reportId"]=1
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formGInstanceList
            model.formGInstanceCount == 0
    }

    @IgnoreRest
    void "Test the create action returns the correct model"() {

        when:"The create action is executed"
        controller.create()

        then:"The model is correctly created"
        model.formGInstance!= null

/*        def r1  = new Report(id: 1, stateParty: new StateParty(country: "CANADA"), year: "2010",language: "ENGLISH")
        MockUtils.mockDomain(Report, [r1])

        given:
            controller.params.reportId = '1'
        when:
            def model  = controller.create()
        then:
            response== null*/

        



 /*       when:"The create action is executed"
        
            controller.create()

        then:"The model is correctly created"
            model.formGInstance!= null
         //   assert model.formGInstance.report == r1
            Report.findById(1) != null*/
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def formG = new FormG()
            formG.validate()
            controller.save(formG)

        then:"The create view is rendered again with the correct model"
            model.formGInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formG = new FormG(params)

            controller.save(formG)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formG/show/1'
            controller.flash.message != null
            FormG.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formG = new FormG(params)
            controller.show(formG)

        then:"A model is populated containing the domain instance"
            model.formGInstance == formG
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formG = new FormG(params)
            controller.edit(formG)

        then:"A model is populated containing the domain instance"
            model.formGInstance == formG
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formG/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formG = new FormG()
            formG.validate()
            controller.update(formG)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formGInstance == formG

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formG = new FormG(params).save(flush: true)
            controller.update(formG)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formG/show/$formG.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formG/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formG = new FormG(params).save(flush: true)

        then:"It exists"
            FormG.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formG)

        then:"The instance is deleted"
            FormG.count() == 0
            response.redirectedUrl == '/formG/index'
            flash.message != null
    }
}
