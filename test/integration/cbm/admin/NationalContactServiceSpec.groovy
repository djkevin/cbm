package cbm.admin

import grails.test.spock.IntegrationSpec

class NationalContactServiceSpec extends IntegrationSpec {

    def nationalContactService

    def setup() {    }

    def cleanup() {    }

    void "Test save national contact"() {
        given: "A new National Contact is created for a StateParty"
            def country = Country.findByIso3('CHE')
            def nationalContact = new NationalContact(firstName: 'a', lastName: 'a', country:country, stateParty: StateParty.findByCountry(country))

        when: "The domain is saved"
            nationalContactService.save(nationalContact)

        then: "A new nationalContact is created"
            nationalContact.id != null
            NationalContact.count() == 1

    }
    void "Test delete national contact"() {
        given: "A new National Contact is created for a StateParty"
            def country = Country.findByIso3('CHE')
            def nationalContact = new NationalContact(firstName: 'a', lastName: 'a', country:country, stateParty: StateParty.findByCountry(country)).save()

        when: "The instance is deleted"
            nationalContactService.delete(nationalContact)

        then: "The nationalContact is deleted"
            NationalContact.count() == 0

    }

    void "Test delete national contact by id"() {
        given: "A new National Contact is created for a StateParty"
            def country = Country.findByIso3('CHE')
            def nationalContact = new NationalContact(firstName: 'a', lastName: 'a', country:country, stateParty: StateParty.findByCountry(country)).save()

        when: "The instance is deleted"
            nationalContactService.delete(nationalContact.id)

        then: "The nationalContact is deleted"
            NationalContact.count() == 0

    }
}
