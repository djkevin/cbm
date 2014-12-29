package cbm

import cbm.constants.FormStatus
import cbm.form.*
import cbm.report.Report
import grails.buildtestdata.mixin.Build
import grails.test.mixin.TestFor
import spock.lang.Specification


@TestFor(ReportService)
@Build([FormAPart1a, FormAPart1b, Report, FormAPart1ContainmentUnit, cbm.admin.Country, FormAPart2b])
class ReportServiceSpec extends Specification {

    def report
    def country

    def setup() {
        def address = new Address(street1: 'a')
        country = cbm.admin.Country.build()
        def formAPart1a = FormAPart1a.build(location: address, country: country)
        report = Report.build()
        report.addToFormAPart1(formAPart1a)
    }

    def cleanup() {
        report == null

    }


    void "Test that a Form A Part 1a with no BSL4 containment units entered without a Form A Part 1b"() {

        when: "A report is created with no Form A Part 1a,  no containment units and No Form A Part 1b"
        Report report = report

        and: "the validation is called"
        def error = service.validateFormAPart1BSL4(report)

        then: "An error is thrown"
        error != null
        error[0] == 'error'

        when: "A report is created with a Form A Part 1a, but no containment units and No Form A Part 1b"
        report = report

        and: "the validation is called"
        error = service.validateFormAPart1BSL4(report)

        then: "An error is thrown"
        error != null
        error[0] == 'error'

        when: "A report is created with a Form A Part 1a, a BSL3 containment unit, and no Form A Part 1 b"
        Report r = report
        def containmentUnit = FormAPart1ContainmentUnit.build(facility: r.formAPart1[0], bioSafetyLevel: 'Enhanced BSL3')
        r.formAPart1[0].addToFormAContainmentUnitList(containmentUnit)

        and: "the validation is called"
        error = service.validateFormAPart1BSL4(r)

        then: "An error is thrown"
        error != null
        error[0] == 'error'

        when: "A report is created with a Form A Part 1a, a BSL4 containment unit, and no Form A Part 1 b"
        Report r2 = report
        containmentUnit = FormAPart1ContainmentUnit.build(facility: r2.formAPart1[0], bioSafetyLevel: 'BSL4')
        r2.formAPart1[0].addToFormAContainmentUnitList(containmentUnit)

        and: "the validation is called"
        error = service.validateFormAPart1BSL4(r)

        then: "No error is thrown"
        error == []

    }


    void "Test that a Form A Part 1a with no BSL4 containment units entered with a Form A Part 1b"() {

        when: "A report is created with no Form A Part 1a,  no containment units and a Form A Part 1b"
        Report report = report
        FormAPart1b formAPart1b = FormAPart1b.build(report: report, bioSafetyLevel2: false, bioSafetyLevel3: true)
        report.formAPart1b = formAPart1b

        and: "the validation is called"
        def error = service.validateFormAPart1BSL4(report)

        then: "No error is thrown"
        error == []
    }

    void "Test that if Form A Part 2a is filled in, the Existing national Programmes (Form  A Part 2b) must be entered"() {
        when: "A Form A Part 2a declares it has existing programmes but no Form A Part 2b"
        FormAPart2a formAPart2a = new FormAPart2a(existingNationalProgrammes: true, report: report)
        report.formAPart2a = formAPart2a
        and: "the validation is called"
        def error = service.validateNationalProgrammes(report)
        then: "An error is thrown"
        error != null
        error[0] == 'error'
        when: "A Form A Part 2a declares it has existing programmes but no Form A Part 2b"
        formAPart2a = new FormAPart2a(existingNationalProgrammes: true, report: report)
        report.formAPart2a = formAPart2a
        FormAPart2b formAPart2b = FormAPart2b.build(report: report, programName: 'a', objectives: 'o')
        report.addToFormAPart2b(formAPart2b)
        and: "the validation is called"
        error = service.validateNationalProgrammes(report)
        then: "No error is thrown"
        error == []
    }


    void "Test that a Report is valid when the forms are in status COMPLETED"() { //TODO test for other forms
        when:
            Report r = report
            r.formAPart1.clear()
            def formAPart1a = FormAPart1a.build(report: report, country: country, location: new Address(street1: 'a'),formStatus: FormStatus.DRAFT)
            r.formAPart1 << formAPart1a

        and:
            def error = service.validateFormsCompletion(r)

        then: "An error is thrown"
            error != null
            error[0].toString().contains('error')

        when:
            formAPart1a.formStatus = FormStatus.COMPLETED

        and:
             error= service.validateFormsCompletion(r)

        then: "No error is thrown"
            error == []
    }

}


