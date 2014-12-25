package cbm.admin

import grails.transaction.Transactional

@Transactional
class StatePartyService {

    void save(StateParty stateParty) {
        stateParty.save()
    }

    void delete(StateParty stateParty) {
        stateParty.delete()
    }

    void delete(long statePartyId) {
        def stateParty = StateParty.load(statePartyId)
        stateParty.delete()
    }
}
