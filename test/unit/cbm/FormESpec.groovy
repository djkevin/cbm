package cbm

import cbm.form.FormE
import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormE)
class FormESpec extends AbstractConstraintsSpec {

    def setup() {
        mockForConstraintsTests(FormE, [new FormE()])
    }

    def cleanup() {
    }


    @Unroll("additionalComments '#additionalComments' with declaration '#developmentAndMeansOfDelivery' should result in '#error'")
    def "test additional comments should be filled if any declaration is made"() {

        when:
        domain.additionalComments = additionalComments
        domain.developmentAndMeansOfDelivery = developmentAndMeansOfDelivery

        then:
        validateConstraints(domain, 'additionalComments', error)

        where:
        additionalComments  || error                                              || developmentAndMeansOfDelivery
        ''                  || 'formE.additionalComments.development.blank.error' || developmentAndMeansOfDeliveryWithDeclaration()
        ''|| 'valid'||developmentAndMeansOfDeliveryWithoutDeclaration()
    }

    DeclarationOfMeasures developmentAndMeansOfDeliveryWithDeclaration() {
        return new DeclarationOfMeasures(legislation: "Yes")
    }
    DeclarationOfMeasures developmentAndMeansOfDeliveryWithoutDeclaration() {
        return new DeclarationOfMeasures()
    }


}
