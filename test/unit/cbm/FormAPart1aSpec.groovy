package cbm

import cbm.form.FormAPart1a
import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormAPart1a)
class FormAPart1aSpec extends ConstraintUnitSpec {

    def setup() {
        mockForConstraintsTests(FormAPart1a, [new FormAPart1a()])
    }

    def cleanup() {
    }

    @Unroll("facilityName '#facilityName' should result in '#error'")
    def "test formAPart1a facilityName constraints"() {
        when:
        domain.facilityName = facilityName

        then:
        validateConstraints(domain, 'facilityName', error)

        where:
        facilityName       || error
        null               || 'nullable'
        ''                 || 'blank'
        ' '                || 'blank'
        getLongString(250) || 'valid'
        getLongString(251) || 'maxSize'
    }

    @Unroll("responsibleOrganisation '#responsibleOrganisation' should result in '#error'")
    def "test formAPart1a responsibleOrganisation constraints"() {
        when:
        domain.responsibleOrganisation = responsibleOrganisation

        then:
        validateConstraints(domain, 'responsibleOrganisation', error)

        where:
        responsibleOrganisation || error
        null                    || 'nullable'
        ''                      || 'blank'
        ' '                     || 'blank'
        getLongString(500)      || 'valid'
        getLongString(501)      || 'maxSize'
    }

    @Unroll("financingSources '#financingSources' should result in '#error'")
    def "test formAPart1a financingSources constraints"() {
        when:
        domain.financingSources = financingSources

        then:
        validateConstraints(domain, 'financingSources', error)

        where:
        financingSources    || error
        null                || 'nullable'
        ''                  || 'blank'
        ' '                 || 'blank'
        getLongString(1000) || 'valid'
        getLongString(1001) || 'maxSize'
    }

    @Unroll("scope '#scope' should result in '#error'")
    def "test formAPart1a scope constraints"() {
        when:
        domain.scope = scope

        then:
        validateConstraints(domain, 'scope', error)

        where:
        scope                || error
        null                 || 'nullable'
        getLongString(10000) || 'valid'
        getLongString(10001) || 'maxSize'
    }

    /*  @Unroll("address '#address' should result in '#error'")
      def "test formAPart1a address constraints"() {
          when:
          domain.location = address

          then:
          validateConstraints(domain, 'location', error)

          where:
          address                                  || error
  //        null                                     || 'nullable'
          new Address(street1: getLongString(100)) || 'valid'
          new Address(street1: getLongString(101)) || 'maxSize'
      }*/

    @Unroll("address '#street1' should result in '#error'")
    def "test formAPart1a address constraints"() {
        when:
//        FormAPart1a test = FormAPart1a.build()
        Address address = new Address()
        address.street1 = street1
        domain.location = address


        then:
        validateConstraints(domain, 'location.street1', error)

        where:
        street1 || error
//        null                                     || 'nullable'
        getLongString(100) || 'valid'
        getLongString(101) || 'maxSize'
    }

}
