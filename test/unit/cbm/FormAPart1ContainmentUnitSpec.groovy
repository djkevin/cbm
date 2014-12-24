package cbm

import cbm.form.FormAPart1ContainmentUnit
import grails.test.mixin.TestFor
import spock.lang.IgnoreRest
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormAPart1ContainmentUnit)
class FormAPart1ContainmentUnitSpec extends ConstraintUnitSpec {

    def setup() {
        mockForConstraintsTests(FormAPart1ContainmentUnit, [new FormAPart1ContainmentUnit()])
    }

    def cleanup() {
    }

    @Unroll("bioSafetyLevel '#bioSafetyLevel' should result in '#error'")
    def "test formAPart1ContainmentUnit bioSafetyLevel constraint"() {
        when:
        domain.bioSafetyLevel = bioSafetyLevel

        then:
        validateConstraints(domain, 'bioSafetyLevel', error)

        where:
        bioSafetyLevel  || error
        'Unknown'       || 'inList'
        null            || 'nullable'
        ''              || 'blank'
        'BSL4'          || 'valid'
        'Enhanced BSL3' || 'valid'
    }

    @Unroll("unitType '#unitType' should result in '#error'")
    def "test formAPart1ContainmentUnit unitType constraint"() {
        when:
        domain.unitType = unitType

        then:
        validateConstraints(domain, 'unitType', error)

        where:
        unitType           || error
        'Unknown'          || 'inList'
        null               || 'nullable'
        ''                 || 'blank'
        'treatment module' || 'valid'
        'laboratory'       || 'valid'
    }

    @Unroll("comment '#comment' should result in '#error'")
    def "test formAPart1ContainmentUnit comment constraint"() {
        when:
        domain.comment = comment

        then:
        validateConstraints(domain, 'comment', error)

        where:
        comment            || error
        getLongString(200) || 'valid'
        getLongString(201) || 'maxSize'
        ''                 || 'valid'
    }

}
