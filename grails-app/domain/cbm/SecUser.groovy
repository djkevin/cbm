package cbm

class SecUser {

    // static belongsTo = [stateParty: StateParty]
    transient springSecurityService

    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    //To allow retrieval of country_id afer login
    StateParty stateParty

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, unique: true
        password blank: false
    }

    static mapping = {
        password column: '`password`'
    }

    Set<SecRole> getAuthorities() {
        SecUserSecRole.findAllBySecUser(this).collect { it.secRole } as Set
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }
}
