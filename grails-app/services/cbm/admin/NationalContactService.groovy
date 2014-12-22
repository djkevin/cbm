package cbm.admin

import grails.transaction.Transactional

@Transactional
class NationalContactService {

    /**
     * saves to the db. used for both create and update
     * @param nationalContact
     */
    void save(NationalContact nationalContact) {
        nationalContact.save() // No need to set flush:true - the transaction does it
    }


    void delete(NationalContact nationalContact) {
        nationalContact.delete()
    }

    void delete(long nationalContactId) {
        def nationalContact = NationalContact.load(nationalContactId)
        nationalContact.delete()
    }
}
