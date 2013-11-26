package cbm



import grails.test.mixin.*
import spock.lang.*

@TestFor(FormAPart2bController)
@Mock(FormAPart2b)
class FormAPart2bControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formAPart2bInstanceList
            model.formAPart2bInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.formAPart2bInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def formAPart2b = new FormAPart2b()
            formAPart2b.validate()
            controller.save(formAPart2b)

        then:"The create view is rendered again with the correct model"
            model.formAPart2bInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formAPart2b = new FormAPart2b(params)

            controller.save(formAPart2b)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formAPart2b/show/1'
            controller.flash.message != null
            FormAPart2b.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formAPart2b = new FormAPart2b(params)
            controller.show(formAPart2b)

        then:"A model is populated containing the domain instance"
            model.formAPart2bInstance == formAPart2b
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formAPart2b = new FormAPart2b(params)
            controller.edit(formAPart2b)

        then:"A model is populated containing the domain instance"
            model.formAPart2bInstance == formAPart2b
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formAPart2b/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formAPart2b = new FormAPart2b()
            formAPart2b.validate()
            controller.update(formAPart2b)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formAPart2bInstance == formAPart2b

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formAPart2b = new FormAPart2b(params).save(flush: true)
            controller.update(formAPart2b)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formAPart2b/show/$formAPart2b.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formAPart2b/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formAPart2b = new FormAPart2b(params).save(flush: true)

        then:"It exists"
            FormAPart2b.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formAPart2b)

        then:"The instance is deleted"
            FormAPart2b.count() == 0
            response.redirectedUrl == '/formAPart2b/index'
            flash.message != null
    }
}
