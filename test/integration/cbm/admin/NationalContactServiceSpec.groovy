package cbm.admin

import grails.test.spock.IntegrationSpec

class NationalContactServiceSpec extends IntegrationSpec {

    def nationalContactService

    def setup() {
           println "in setup"
    }

    def cleanup() {
    }

    void "test save national contact"() {
        given:"A new National Contact is created"
            def nationalContact = new NationalContact(firstName: 'a', lastName: 'a', country: Country.findByIso3('CHE'))

        when:"The domain is saved"
            nationalContactService.save(nationalContact)

        then:"A new record is created"
           // nationalContact.id != null
            NationalContact.count == 1

    }
}
