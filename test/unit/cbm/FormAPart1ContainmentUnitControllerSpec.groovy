package cbm



import grails.test.mixin.*
import spock.lang.*

@TestFor(FormAPart1ContainmentUnitController)
@Mock(FormAPart1ContainmentUnit)
class FormAPart1ContainmentUnitControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.formAPart1ContainmentUnitInstanceList
            model.formAPart1ContainmentUnitInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.formAPart1ContainmentUnitInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def formAPart1ContainmentUnit = new FormAPart1ContainmentUnit()
            formAPart1ContainmentUnit.validate()
            controller.save(formAPart1ContainmentUnit)

        then:"The create view is rendered again with the correct model"
            model.formAPart1ContainmentUnitInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            formAPart1ContainmentUnit = new FormAPart1ContainmentUnit(params)

            controller.save(formAPart1ContainmentUnit)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/formAPart1ContainmentUnit/show/1'
            controller.flash.message != null
            FormAPart1ContainmentUnit.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def formAPart1ContainmentUnit = new FormAPart1ContainmentUnit(params)
            controller.show(formAPart1ContainmentUnit)

        then:"A model is populated containing the domain instance"
            model.formAPart1ContainmentUnitInstance == formAPart1ContainmentUnit
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def formAPart1ContainmentUnit = new FormAPart1ContainmentUnit(params)
            controller.edit(formAPart1ContainmentUnit)

        then:"A model is populated containing the domain instance"
            model.formAPart1ContainmentUnitInstance == formAPart1ContainmentUnit
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/formAPart1ContainmentUnit/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def formAPart1ContainmentUnit = new FormAPart1ContainmentUnit()
            formAPart1ContainmentUnit.validate()
            controller.update(formAPart1ContainmentUnit)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.formAPart1ContainmentUnitInstance == formAPart1ContainmentUnit

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            formAPart1ContainmentUnit = new FormAPart1ContainmentUnit(params).save(flush: true)
            controller.update(formAPart1ContainmentUnit)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/formAPart1ContainmentUnit/show/$formAPart1ContainmentUnit.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/formAPart1ContainmentUnit/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def formAPart1ContainmentUnit = new FormAPart1ContainmentUnit(params).save(flush: true)

        then:"It exists"
            FormAPart1ContainmentUnit.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(formAPart1ContainmentUnit)

        then:"The instance is deleted"
            FormAPart1ContainmentUnit.count() == 0
            response.redirectedUrl == '/formAPart1ContainmentUnit/index'
            flash.message != null
    }
}
