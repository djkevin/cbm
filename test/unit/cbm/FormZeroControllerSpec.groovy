package cbm



import grails.test.mixin.*
import spock.lang.*

@TestFor(FormZeroController)
@Mock(FormZero)
class FormZeroControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formZeroInstanceList
            model.formZeroInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.formZeroInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def formZero = new FormZero()
            formZero.validate()
            controller.save(formZero)

        then:"The create view is rendered again with the correct model"
            model.formZeroInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formZero = new FormZero(params)

            controller.save(formZero)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formZero/show/1'
            controller.flash.message != null
            FormZero.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formZero = new FormZero(params)
            controller.show(formZero)

        then:"A model is populated containing the domain instance"
            model.formZeroInstance == formZero
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formZero = new FormZero(params)
            controller.edit(formZero)

        then:"A model is populated containing the domain instance"
            model.formZeroInstance == formZero
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formZero/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formZero = new FormZero()
            formZero.validate()
            controller.update(formZero)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formZeroInstance == formZero

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formZero = new FormZero(params).save(flush: true)
            controller.update(formZero)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formZero/show/$formZero.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formZero/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formZero = new FormZero(params).save(flush: true)

        then:"It exists"
            FormZero.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formZero)

        then:"The instance is deleted"
            FormZero.count() == 0
            response.redirectedUrl == '/formZero/index'
            flash.message != null
    }
}
