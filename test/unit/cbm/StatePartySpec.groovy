package cbm

import grails.test.mixin.TestFor
import org.joda.time.LocalDate
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(StateParty)
class StatePartySpec extends AbstractConstraintsSpec {

    def setup() {
        mockForConstraintsTests(StateParty, [new StateParty(country: Country.AUSTRALIA)])
    }

    def cleanup() {
    }

/*    void "test create a State Party"() {
        setup:
        mockDomain(StateParty)

        when:
        new StateParty(country: country).save()

        then:
        StateParty.findAllByCountry(country).size() > 0

        where:
        country = Country.MAURITIUS
    }*/



    @Unroll("country '#country' should result in '#error'")
    def "test StateParty country constraint"() {
        when:
        domain.country = country

        then:
        validateConstraints(domain, 'country', error)

        where:
        country           || error
        null              || 'nullable'
        Country.AUSTRALIA || 'unique'   // already created in setup

    }

    @Unroll("value '#accessionRatification' should result in '#error'")
    def "test constraints for property accessionRatification"() {
        when:
        domain.accessionRatification = accessionRatification

        then:
        validateConstraints(domain, 'accessionRatification', error)

        where:
        accessionRatification                | error
        null                                 | 'nullable'
        new LocalDate('2012-01-01').toDate() | 'valid' // past date
        new LocalDate('2100-01-01').toDate() | 'date.is.in.future' // future date
        new LocalDate('1971-12-31').toDate() | 'date.is.before.min' // future date
        today().toDate()                     | 'valid' // today
        today().minusDays(1).toDate()        | 'valid' // yesterday
        today().plusDays(1).toDate()         | 'date.is.in.future' // tomorrow
    }
}
