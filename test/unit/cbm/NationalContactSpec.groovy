package cbm

import cbm.admin.NationalContact
import grails.test.mixin.TestFor
import spock.lang.Unroll

@TestFor(NationalContact)
class NationalContactSpec extends ConstraintUnitSpec {

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
        null               || 'valid'
        ''                 || 'valid'
        ' '                || 'valid'
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
        null               || 'valid'
        ''                 || 'valid'
        ' '                || 'valid'
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
        position           || error
        null               || 'valid'
        ''                 || 'valid'
        ' '                || 'valid'
        getLongString(100) || 'valid'
        getLongString(101) || 'maxSize'
    }

    @Unroll("email '#email' should result in '#error'")
    def "test nationalContact email constraints"() {
        when:
        domain.email = email

        then:
        validateConstraints(domain, 'email', error)

        where:
        email           || error
        null            || 'valid'
        ''              || 'valid'
        ' '             || 'valid'
        getEmail(true)  || 'valid'
        getEmail(false) || 'email'
    }

    @Unroll("organization '#organization' should result in '#error'")
    def "test nationalContact organization constraints"() {
        when:
        domain.organization = organization
        domain.firstName = firstName
        domain.lastName = lastName

        then:
        validateConstraints(domain, 'organization', error)

        where:
        organization       || firstName || lastName || error
        null               || ''        || ''       || 'cbm.admin.nationalContact.organization.blank.message'
        ''                 || ''        || ''       || 'cbm.admin.nationalContact.organization.blank.message'
        ' '                || ''        || ''       || 'valid'
        getLongString(100) || ''        || ''       || 'valid'
        getLongString(101) || ''        || ''       || 'maxSize'
    }

    @Unroll("url '#url' should result in '#error'")
    def "test nationalContact url constraints"() {
        when:
        domain.url = url

        then:
        validateConstraints(domain, 'url', error)

        where:
        url           || error
        null          || 'valid'
        ''            || 'valid'
        ' '           || 'valid'
        getUrl(true)  || 'valid'
        getUrl(false) || 'url'
    }
    

    @Unroll("telephone '#telephone' should result in '#error'")
    def "test nationalContact telephone constraints"() {
        when:
        domain.telephone = telephone

        then:
        validateConstraints(domain, 'telephone', error)

        where:
        telephone                         || error
        null                              || 'valid'
        ''                                || 'blank'
        ' '                               || 'blank'
        '+1 123 456 789'                  || 'valid' // US number (E.164)
        '+41 79 123456'                   || 'valid' // Swiss cell phone (E.164)
        '+41 22 917 1234'                 || 'valid' // UNOG extension (E.164)
        '+33 5 12 34 56 78'               || 'valid' // French phone number (E.164)
        '+49-7161-12345'                  || 'valid' // German landline number (E.164)
        '+49 175 1234567'                 || 'valid' // German cell phone number (E.164)
        '+41.123.26'                      || 'valid' // less than 7 digits
        '+41 12345'                       || 'valid' // 7 digits
        '+0 12 34567'                     || 'valid' // country code may not start with 0
    }


    @Unroll("fax '#fax' should result in '#error'")
    def "test nationalContact fax constraints"() {
        when:
        domain.fax = fax

        then:
        validateConstraints(domain, 'fax', error)

        where:
        fax                 || error
        null                || 'valid'
        ''                  || 'valid'
        ' '                 || 'valid'
        '+1 123 456 789'    || 'valid' // US number (E.164)
        '+41 79 123456'     || 'valid' // Swiss cell phone (E.164)
        '+41 22 917 1234'   || 'valid' // UNOG extension (E.164)
        '+33 5 12 34 56 78' || 'valid' // French phone number (E.164)
        '+49-7161-12345'    || 'valid' // German landline number (E.164)
        '+49 175 1234567'   || 'valid' // German cell phone number (E.164)
        '+41.123.26'        || 'valid' // less than 7 digits
        '+41 12345'         || 'valid' // 7 digits
        '+0 12 34567'       || 'valid' // country code may not start with 0
    }

}
