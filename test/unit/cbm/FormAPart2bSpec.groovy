package cbm

import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormAPart2b)
class FormAPart2bSpec extends AbstractConstraintsSpec {

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
        getLongString(5000) || 'valid'
        getLongString(5001) || 'maxSize'
    }

    @Unroll("proportionContracted '#proportionContracted' should result in '#error'")
    def "test formAPart2b proportionContracted constraints"() {
        when:
        domain.proportionContracted = proportionContracted

        then:
        validateConstraints(domain, 'proportionContracted', error)

        where:
        proportionContracted || error
        null                 || 'nullable'
        ''                   || 'blank'
        ' '                  || 'blank'
        getLongString(5000)  || 'valid'
        getLongString(5001)  || 'maxSize'
    }

    @Unroll("summaryObjectivesContractor '#summaryObjectivesContractor' should result in '#error'")
    def "test formAPart2b summaryObjectivesContractor constraints"() {
        when:
        domain.summaryObjectivesContractor = summaryObjectivesContractor

        then:
        validateConstraints(domain, 'summaryObjectivesContractor', error)

        where:
        summaryObjectivesContractor || error
        null                        || 'nullable'
        ''                          || 'blank'
        ' '                         || 'blank'
        getLongString(5000)         || 'valid'
        getLongString(5001)         || 'maxSize'
    }

    @Unroll("declaration '#declaration' should result in '#error'")
    def "test formAPart2b declaration constraints"() {
        when:
        domain.declaration = declaration

        then:
        validateConstraints(domain, 'declaration', error)

        where:
        declaration         || error
        null                || 'nullable'
        ''                  || 'blank'
        ' '                 || 'blank'
        getLongString(5000) || 'valid'
        getLongString(5001) || 'maxSize'
    }

    @Unroll("value '#amount' should result in '#error'")
    def "test formAPart2b amount constraints"() {
        when:
        domain.amount = amount

        then:
        validateConstraints(domain, 'amount', error)

        where:
        amount        | error
        null          | 'nullable'
        0             | 'min' // less than min amount
        23.85         | 'valid'
        1234.56       | 'valid'
        1000000000.00 | 'valid' // max amount
        999999999.99  | 'valid' // a little less than max amount
        1000000000.01 | 'max' // more than max amount
    }

    @Unroll("value '#organisationalStructureDiagram' should result in '#error'")
    def "test formAPart2b organisationalStructureDiagram constraints"() {
        when:
        domain.organisationalStructureDiagram = organisationalStructureDiagram

        then:
        validateConstraints(domain, 'organisationalStructureDiagram', error)

        where:
        organisationalStructureDiagram | error
        null                           | 'valid'
        new byte[1024]                 | 'valid'
//        new byte[5242880]                     | 'valid' //1024 * 1024 * 5 Commented because takes infinitely long
//        new byte[5242881]              | 'max'//1024 * 1024 * 5+1

    }

    @Unroll("source '#source' should result in '#error'")
    def "test formAPart2b source constraints"() {
        when:
        domain.source = source

        then:
        validateConstraints(domain, 'source', error)

        where:
        source             || error
        getLongString(500) || 'valid'
        getLongString(501) || 'maxSize'
    }
}


