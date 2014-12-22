package cbm

import grails.test.mixin.TestFor
import spock.lang.Unroll
import cbm.Address

/**
 * Test for Address embeddable object
 */
@TestFor(Address)
class AddressSpec extends ConstraintUnitSpec {
    def setup() {
//        mockForConstraintsTests(Address, [new Address()])
    }

    def cleanup() {
    }

/*    @Unroll("additionalInformation '#additionalInformation' should result in '#error'")
    def "test formAPart1b additionalInformation constraints"() {
        when:
        domain.additionalInformation = additionalInformation

        then:
        validateConstraints(domain, 'additionalInformation', error)

        where:
        additionalInformation   || error
        getLongString(5000)     || 'valid'
        getLongString(5001)     || 'maxSize'
    }*/
}
