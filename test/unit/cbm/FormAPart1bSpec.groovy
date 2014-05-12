package cbm

import cbm.form.FormAPart1b
import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormAPart1b)
class FormAPart1bSpec extends AbstractConstraintsSpec {

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
}
