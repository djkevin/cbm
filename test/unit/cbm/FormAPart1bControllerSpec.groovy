package cbm

import cbm.form.FormAPart1b
import grails.test.mixin.*
import spock.lang.*

@TestFor(FormAPart1bController)
@Mock(FormAPart1b)
class FormAPart1bControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formAPart1bInstanceList
            model.formAPart1bInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.formAPart1bInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def formAPart1b = new FormAPart1b()
            formAPart1b.validate()
            controller.save(formAPart1b)

        then:"The create view is rendered again with the correct model"
            model.formAPart1bInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formAPart1b = new FormAPart1b(params)

            controller.save(formAPart1b)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formAPart1b/show/1'
            controller.flash.message != null
            FormAPart1b.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formAPart1b = new FormAPart1b(params)
            controller.show(formAPart1b)

        then:"A model is populated containing the domain instance"
            model.formAPart1bInstance == formAPart1b
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formAPart1b = new FormAPart1b(params)
            controller.edit(formAPart1b)

        then:"A model is populated containing the domain instance"
            model.formAPart1bInstance == formAPart1b
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formAPart1b/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formAPart1b = new FormAPart1b()
            formAPart1b.validate()
            controller.update(formAPart1b)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formAPart1bInstance == formAPart1b

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formAPart1b = new FormAPart1b(params).save(flush: true)
            controller.update(formAPart1b)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formAPart1b/show/$formAPart1b.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formAPart1b/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formAPart1b = new FormAPart1b(params).save(flush: true)

        then:"It exists"
            FormAPart1b.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formAPart1b)

        then:"The instance is deleted"
            FormAPart1b.count() == 0
            response.redirectedUrl == '/formAPart1b/index'
            flash.message != null
    }
}
