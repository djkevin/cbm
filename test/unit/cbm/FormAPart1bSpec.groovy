package cbm

import cbm.form.FormAPart1b
import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormAPart1b)
class FormAPart1bSpec extends ConstraintUnitSpec {

    def setup() {
        mockForConstraintsTests(FormAPart1b, [new FormAPart1b()])
    }

    def cleanup() {
    }

    @Unroll("additionalInformation '#additionalInformation' should result in '#error'")
    def "test formAPart1b additionalInformation constraints"() {
        when:
        domain.additionalInformation = additionalInformation

        then:
        validateConstraints(domain, 'additionalInformation', error)

        where:
        additionalInformation   || error
        getLongString(5000)     || 'valid'
        getLongString(5001)     || 'maxSize'
    }

    @Unroll("bsl3 '#bioSafetyLevel3' and bsl2 '#bioSafetyLevel2' should result in '#error'")
    def "test either bsl2 or bsl3 can be selected"() {
        when:
        domain.bioSafetyLevel3 = bioSafetyLevel3
        domain.bioSafetyLevel2 = bioSafetyLevel2

        then:
        validateConstraints(domain, 'bioSafetyLevel3', error)

        where:
        bioSafetyLevel3 || bioSafetyLevel2 || error
        Boolean.TRUE    || Boolean.FALSE   || 'valid'
        Boolean.FALSE   || Boolean.TRUE    || 'valid'
        Boolean.TRUE    || Boolean.TRUE    || 'formAPart1b.BSL.both.error'
        Boolean.FALSE   || Boolean.FALSE   || 'formAPart1b.BSL.min.error'
    }
}
