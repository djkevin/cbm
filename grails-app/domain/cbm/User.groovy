package cbm

class User extends SecUser {

    StateParty stateParty

    static constraints = {
        stateParty nullable: true
    }
}
