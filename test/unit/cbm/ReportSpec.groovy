package cbm

import cbm.admin.StateParty
import cbm.constants.Language
import cbm.constants.PublicationStatus
import cbm.constants.ReportStatus
import cbm.report.Report
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Report)
class ReportSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }


    def "test create 2 reports for the same year language and country"(){
        setup:
        mockDomain Report
        mockDomain StateParty


        def stateParty =  new StateParty(country: Country.MAURITIUS)
        def reportA = new Report(language:language, year:2000,stateParty: stateParty,
                reportStatus: ReportStatus.DRAFT, publicationStatus: PublicationStatus.NOTPUBLISHED, officialVersion:true
        )
        mockForConstraintsTests(Report, [reportA])

        when:
            def reportB = new Report(language:language, year:2000,stateParty: stateParty,
                    reportStatus: ReportStatus.DRAFT, publicationStatus: PublicationStatus.NOTPUBLISHED, officialVersion:true
            )

        then:
            reportB.validate() == false
            reportB.errors["language"] == "unique"

        where:
            language = Language.ENGLISH
            country = Country.MAURITIUS

    }
}
