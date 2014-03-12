package cbm

import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(NationalContact)
class NationalContactSpec extends AbstractConstraintsSpec {

    def setup() {
        mockForConstraintsTests(NationalContact, [new NationalContact()])
    }

    def cleanup() {
    }


    @Unroll("firstName '#firstName' should result in '#error'")
    def "test nationalContact firstName constraints"() {
        when:
        domain.firstName = firstName

        then:
        validateConstraints(domain, 'firstName', error)

        where:
        firstName          || error
        null               || 'nullable'
        ''                 || 'blank'
        ' '                || 'blank'
        getLongString(100) || 'valid'
        getLongString(101) || 'maxSize'
    }


    @Unroll("lastName '#lastName' should result in '#error'")
    def "test nationalContact lastName constraints"() {
        when:
        domain.lastName = lastName

        then:
        validateConstraints(domain, 'lastName', error)

        where:
        lastName           || error
        null               || 'nullable'
        ''                 || 'blank'
        ' '                || 'blank'
        getLongString(100) || 'valid'
        getLongString(101) || 'maxSize'
    }


    @Unroll("position '#position' should result in '#error'")
    def "test nationalContact position constraints"() {
        when:
        domain.position = position

        then:
        validateConstraints(domain, 'position', error)

        where:
        position || error
        //   null               || 'nullable'
//        ''                 || 'blank'
//        ' '                || 'blank'
        getLongString(100) || 'valid'
        getLongString(101) || 'maxSize'
    }

    @Unroll("telephone '#telephone' should result in '#error'")
    def "test nationalContact telephone constraints"() {
        when:
        domain.telephone = telephone

        then:
        validateConstraints(domain, 'telephone', error)

        where:
        telephone                         || error
        null                              || 'nullable'
        ''                                || 'blank'
        ' '                               || 'blank'
        '+1 123 456 789'                  || 'valid' // US number (E.164)
        '+41 79 123456'                   || 'valid' // Swiss cell phone (E.164)
        '+41 22 917 1234'                 || 'valid' // UNOG extension (E.164)
        '+33 5 12 34 56 78'               || 'valid' // French phone number (E.164)
        '+49-7161-12345'                  || 'valid' // German landline number (E.164)
        '+49 175 1234567'                 || 'valid' // German cell phone number (E.164)
        '(022) 917-2525'                  || 'matches' // non E.164
        '0049 7161 12345'                 || 'matches' // non E.164
        '+49 2 3 4 5 6 7 8 9 0 1 2 3 4 5' || 'matches' // 1 digit longer than allowed
        '+41.123.26'                      || 'valid' // less than 7 digits
        '+41 12345'                       || 'valid' // 7 digits
        '+0 12 34567'                     || 'valid' // country code may not start with 0
    }

}
