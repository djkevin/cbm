package cbm

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(StateParty)
class StatePartySpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test create a State Party"() {
        setup:
        mockDomain(StateParty)

        when:
        new StateParty(country: country).save()

        then:
        StateParty.findAllByCountry(country).size() > 0

        where:
        country = Country.MAURITIUS
    }
}
