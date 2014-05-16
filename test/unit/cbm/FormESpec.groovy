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
         def developmentAndMeansOfDelivery = new DeclarationOfMeasures(legislation: true, regulation: true, otherMeasures: true, amendedSinceLastYear: false)
        mockForConstraintsTests(FormE, [new FormE(formStatus: 'Draft')])
        domain.developmentAndMeansOfDelivery = developmentAndMeansOfDelivery

        println("domain: " + domain)
    }

    def cleanup() {
    }

    @Unroll("additionalComments '#additionalComments' should result in '#error'")
    def "test additional comments should be filled if any declaration is made"() {

        when:
        domain.additionalComments = additionalComments


//        def developmentAndMeansOfDelivery = new DeclarationOfMeasures(legislation: true, regulation: true, otherMeasures: true, amendedSinceLastYear: false)
//        domain.setDevelopmentAndMeansOfDelivery(developmentAndMeansOfDelivery)

        then:
        validateConstraints(domain, 'additionalComments', error)

        where:
        additionalComments || error
//        ''                 || 'existing declaration, cannot be null'
        getLongString(2000)      || 'valid'
        getLongString(2001)      || 'maxSize'

    }

    /*def "test additionalComments constraint"() {
        setup:
        mockForConstraintsTests(FormE, [new FormE()] )
        mockDomain(DeclarationOfMeasures)
        def developmentAndMeansOfDelivery = new DeclarationOfMeasures(legislation: true, regulation: true, otherMeasures: true, amendedSinceLastYear: false)
        def exportsOfMicroOrganisms = new DeclarationOfMeasures(legislation: true, regulation: true, otherMeasures: true, amendedSinceLastYear: false)
        def importsOfMicroOrganisms = new DeclarationOfMeasures(legislation: true, regulation: true, otherMeasures: true, amendedSinceLastYear: false)
        def biosafetyAndBioSecurity = new DeclarationOfMeasures(legislation: true, regulation: true, otherMeasures: true, amendedSinceLastYear: false)

        def formE = new FormE(
                developmentAndMeansOfDelivery: developmentAndMeansOfDelivery,
                exportsOfMicroOrganisms: exportsOfMicroOrganisms,
                importsOfMicroOrganisms: importsOfMicroOrganisms,
                biosafetyAndBioSecurity: biosafetyAndBioSecurity,
                formStatus: 'Draft',
                visibility: 'Public',
                title: 'test',
                dateCreated: new Date(),
                lastUpdated: new Date()

        ).save()

        when:

        formE.validate()

        then:
        false
       // formE.errors.hasFieldErrors("additionalComments")


    }*/
}
