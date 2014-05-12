package cbm

import cbm.admin.StateParty

class User extends SecUser {

    StateParty stateParty

    static constraints = {
        stateParty nullable: true
    }
}
