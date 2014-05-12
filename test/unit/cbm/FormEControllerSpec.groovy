package cbm

import cbm.form.FormE
import grails.test.mixin.*
import spock.lang.*

@TestFor(FormEController)
@Mock(FormE)
class FormEControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formEInstanceList
            model.formEInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.formEInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def formE = new FormE()
            formE.validate()
            controller.save(formE)

        then:"The create view is rendered again with the correct model"
            model.formEInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formE = new FormE(params)

            controller.save(formE)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formE/show/1'
            controller.flash.message != null
            FormE.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formE = new FormE(params)
            controller.show(formE)

        then:"A model is populated containing the domain instance"
            model.formEInstance == formE
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formE = new FormE(params)
            controller.edit(formE)

        then:"A model is populated containing the domain instance"
            model.formEInstance == formE
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formE/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formE = new FormE()
            formE.validate()
            controller.update(formE)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formEInstance == formE

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formE = new FormE(params).save(flush: true)
            controller.update(formE)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formE/show/$formE.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formE/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formE = new FormE(params).save(flush: true)

        then:"It exists"
            FormE.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formE)

        then:"The instance is deleted"
            FormE.count() == 0
            response.redirectedUrl == '/formE/index'
            flash.message != null
    }
}
