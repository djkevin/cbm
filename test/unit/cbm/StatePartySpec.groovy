package cbm

import cbm.admin.StateParty
import grails.test.mixin.TestFor
import org.joda.time.LocalDate
import spock.lang.Unroll


@TestFor(StateParty)
class StatePartySpec extends ConstraintUnitSpec {

    def setup() {
        mockForConstraintsTests(StateParty, [new StateParty(country: Country.AUSTRALIA)])
    }

    def cleanup() {
    }


    @Unroll("value '#accessionRatification' should result in '#error'")
    def "test constraints for property accessionRatification"() {
        when:
        domain.accessionRatification = accessionRatification

        then:
        validateConstraints(domain, 'accessionRatification', error)

        where:
        accessionRatification                           | error
        null                                            | 'nullable'
        new LocalDate('2012-01-01').toDate()            | 'valid' // past date
        new LocalDate('2100-01-01').toDate()            | 'date.is.in.future' // future date
        new LocalDate('1971-12-31').toDate()            | 'date.is.before.min' // future date
        new Date()                                      | 'valid' // today
        new LocalDate(new Date()).minusDays(1).toDate() | 'valid' // yesterday
        new LocalDate(new Date()).plusDays(1).toDate()  | 'date.is.in.future' // tomorrow
    }
}
