package cbm.usermgt

class SecRole {

    String authority

    static mapping = {
        cache true
    }

    static constraints = {
        authority inList: ["ROLE_USER", "ROLE_ADMIN"], blank: false, unique: true
    }

    String toString() {
        authority
    }
}
