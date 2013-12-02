package cbm



import grails.test.mixin.*
import spock.lang.*

@TestFor(FormFController)
@Mock(FormF)
class FormFControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formFInstanceList
            model.formFInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.formFInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def formF = new FormF()
            formF.validate()
            controller.save(formF)

        then:"The create view is rendered again with the correct model"
            model.formFInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formF = new FormF(params)

            controller.save(formF)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formF/show/1'
            controller.flash.message != null
            FormF.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formF = new FormF(params)
            controller.show(formF)

        then:"A model is populated containing the domain instance"
            model.formFInstance == formF
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formF = new FormF(params)
            controller.edit(formF)

        then:"A model is populated containing the domain instance"
            model.formFInstance == formF
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formF/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formF = new FormF()
            formF.validate()
            controller.update(formF)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formFInstance == formF

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formF = new FormF(params).save(flush: true)
            controller.update(formF)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formF/show/$formF.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formF/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formF = new FormF(params).save(flush: true)

        then:"It exists"
            FormF.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formF)

        then:"The instance is deleted"
            FormF.count() == 0
            response.redirectedUrl == '/formF/index'
            flash.message != null
    }
}
