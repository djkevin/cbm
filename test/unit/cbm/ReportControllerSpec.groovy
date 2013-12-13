package cbm

import grails.plugin.springsecurity.SpringSecurityService
import grails.test.mixin.*
import grails.test.mixin.domain.DomainClassUnitTestMixin
import grails.test.mixin.web.ControllerUnitTestMixin
import spock.lang.*

@TestFor(ReportController)
@Mock(Report)
@TestMixin([ControllerUnitTestMixin,DomainClassUnitTestMixin])
class ReportControllerSpec extends Specification {



    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }


    void "Test mock secure user"(){
        defineBeans {
            springSecurityService(SpringSecurityService)
        }

        given:
        def user = new SecUser(id: 123)
        mockDomain SecUser, [user]
        mockDomain SecUserSecRole, [new SecUserSecRole(secUser: user)]
//        def security = Mock(SpringSecurityService)
//        controller.springSecurityService = springSecurityService
//        security.currentUser >> new SecUser(id:9999)
//        springSecurityService.

        when:
        controller.params.id = 123

        then:
        println 'success '+controller.params

    }

    void "Test the index action returns the correct model"() {

        setup:
        def user = new SecUser(id: 123)
        mockDomain SecUser, [user]
        mockDomain SecUserSecRole, [new SecUserSecRole(secUser: user)]
        def security = Mock(SpringSecurityService)
        controller.springSecurityService = security
        security.currentUser >> new SecUser(id:9999)

        mockDomain SpringSecurityService
        println(controller.springSecurityService)


        def stateParty =  new StateParty(country: Country.MAURITIUS)
//        def user = new SecUser(username: "canada", password: "ss", stateParty: stateParty)
//        mockDomain(SecUser, [user])
//        mockDomain(StateParty, [stateParty])
//        mockDomain(SecUserSecRole,[new SecUserSecRole(secUser: user)])
//
//        def security = Mock(SpringSecurityService)
//        controller.springSecurityService = security


        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.reportInstanceList
            model.reportInstanceCount == 0
    }

/*    void "Test the index action returns the correct model"() {


        given:

        def user = new SecUser(id: 123)
        mockDomain SecUser, [user]
        mockDomain SecUserSecRole, [new SecUserSecRole(secUser: user)]
        def security = Mock(SpringSecurityService)
        controller.springSecurityService = security
        security.currentUser >> new SecUser(id:9999)

        def stateParty =  new StateParty(country: Country.MAURITIUS)

        user.stateParty=stateParty
                                         *//*
        def security = Mock(SpringSecurityService)
        controller.springSecurityService = security

//        controller.springSecurityService.metaClass.getCurrentUser = {user}

       // controller.springSecurityService.currentUser=user
        controller.springSecurityService = [encodePassword: { String p -> "encrypted" },
                reauthenticate: { String u -> },
                isLoggedIn: { -> true },
                getPrincipal: { -> [username: "Bob"]},
                stateParty: stateParty]*//*

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.reportInstanceList
            model.reportInstanceCount == 0
    }*/

   /* void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.reportInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def report = new Report()
            report.validate()
            controller.save(report)

        then:"The create view is rendered again with the correct model"
            model.reportInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            report = new Report(params)

            controller.save(report)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/report/show/1'
            controller.flash.message != null
            Report.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def report = new Report(params)
            controller.show(report)

        then:"A model is populated containing the domain instance"
            model.reportInstance == report
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def report = new Report(params)
            controller.edit(report)

        then:"A model is populated containing the domain instance"
            model.reportInstance == report
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/report/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def report = new Report()
            report.validate()
            controller.update(report)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.reportInstance == report

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            report = new Report(params).save(flush: true)
            controller.update(report)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/report/show/$report.id"
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
            def report = new Report(params).save(flush: true)

        then:"It exists"
            Report.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(report)

        then:"The instance is deleted"
            Report.count() == 0
            response.redirectedUrl == '/report/index'
            flash.message != null
    }*/
}
