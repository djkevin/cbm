package cbm

import cbm.form.FormAPart2c
import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormAPart2c)
class FormAPart2cSpec extends AbstractConstraintsSpec {

    def setup() {
        mockForConstraintsTests(FormAPart2c)
    }

    def cleanup() {
    }

    @Unroll("publicPapers '#publicPapers' should result in '#error'")
    def "test formAPart2c publicPapers constraints"() {
        when:
        domain.publicPapers = publicPapers

        then:
        validateConstraints(domain, 'publicPapers', error)

        where:
        publicPapers         || error
        getLongString(50000) || 'valid'
        getLongString(50001) || 'maxSize'
    }
}
