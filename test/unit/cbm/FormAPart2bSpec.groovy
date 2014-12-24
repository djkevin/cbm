package cbm

import cbm.form.FormAPart2b
import grails.test.mixin.TestFor
import spock.lang.IgnoreRest
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormAPart2b)
class FormAPart2bSpec extends ConstraintUnitSpec {

    def setup() {
        mockForConstraintsTests(FormAPart2b, [new FormAPart2b()])
    }

    def cleanup() {
    }


    @Unroll("programName '#programName' should result in '#error'")
    def "test formAPart2b programName constraints"() {
        when:
        domain.programName = programName

        then:
        validateConstraints(domain, 'programName', error)

        where:
        programName        || error
        null               || 'nullable'
        ''                 || 'blank'
        ' '                || 'blank'
        getLongString(200) || 'valid'
        getLongString(201) || 'maxSize'
    }

    @Unroll("objectives '#objectives' should result in '#error'")
    def "test formAPart2b objectives constraints"() {
        when:
        domain.objectives = objectives

        then:
        validateConstraints(domain, 'objectives', error)

        where:
        objectives          || error
        null                || 'nullable'
        ''                  || 'blank'
        ' '                 || 'blank'
        getLongString(65000) || 'valid'
        getLongString(65001) || 'maxSize'
    }

    @Unroll("proportionContracted '#proportionContracted' should result in '#error'")
    def "test formAPart2b proportionContracted constraints"() {
        when:
        domain.proportionContracted = proportionContracted

        then:
        validateConstraints(domain, 'proportionContracted', error)

        where:
        proportionContracted || error
        null                 || 'valid'
        ''                   || 'valid'
        ' '                  || 'valid'
        getLongString(65000)  || 'valid'
        getLongString(65001)  || 'maxSize'
    }

    @Unroll("summaryObjectivesContractor '#summaryObjectivesContractor' should result in '#error'")
    def "test formAPart2b summaryObjectivesContractor constraints"() {
        when:
        domain.summaryObjectivesContractor = summaryObjectivesContractor

        then:
        validateConstraints(domain, 'summaryObjectivesContractor', error)

        where:
        summaryObjectivesContractor || error
        null                        || 'valid'
        ''                          || 'valid'
        ' '                         || 'valid'
        getLongString(65000)         || 'valid'
        getLongString(65001)         || 'maxSize'
    }


    @Unroll("value '#amount' should result in '#error'")
    def "test formAPart2b amount constraints"() {
        when:
        domain.amount = amount

        then:
        validateConstraints(domain, 'amount', error)

        where:
        amount        || error
        null          || 'nullable'
        0             || 'min' // less than min amount
        23.85         || 'valid'
        1234.56       || 'valid'
        1000000000.00 || 'valid' // max amount
        999999999.99  || 'valid' // a little less than max amount
        1000000000.01 || 'max' // more than max amount
    }


    @Unroll("source '#source' should result in '#error'")
    def "test formAPart2b source constraints"() {
        when:
        domain.source = source

        then:
        validateConstraints(domain, 'source', error)

        where:
        source             || error
        getLongString(5000) || 'valid'
        getLongString(5001) || 'maxSize'
    }
}


