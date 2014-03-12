package cbm

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


  /*  void  "test find report by stateParty"(){
        setup:
        mockDomain(Report)
        mockDomain(StateParty)
        def stateParty =  new StateParty(country: country).save()

        when:
        new Report(language:language, year:2000, stateParty: stateParty,
                                reportStatus: "Draft", publicationStatus: "Not published", officialVersion:true
                                ).save(true)

        then:
        Report.findAll().size()>0
        //Report.findAllByLanguage(language).size() == 1

        where:
        language = Language.ENGLISH
        country = Country.MAURITIUS
    }*/

    def "test create 2 reports for the same year language and country"(){
        setup:
        mockDomain Report
        mockDomain StateParty


        def stateParty =  new StateParty(country: Country.MAURITIUS)
        def reportA = new Report(language:language, year:2000,stateParty: stateParty,
                reportStatus: "Draft", publicationStatus: "Not published", officialVersion:true
        )
        mockForConstraintsTests(Report, [reportA])

        when:
        def reportB = new Report(language:language, year:2000,stateParty: stateParty,
                reportStatus: "Draft", publicationStatus: "Not published", officialVersion:true
        )

        then:
        assertFalse reportB.validate()
        assertEquals "unique", reportB.errors["language"]

        where:
        language = Language.ENGLISH
        country = Country.MAURITIUS

    }
}
