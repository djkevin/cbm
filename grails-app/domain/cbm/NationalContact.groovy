package cbm

class NationalContact {

    static auditable = true
    static belongsTo = [stateParty: StateParty]
    static embedded = ['location']

    String title
    String firstName
    String lastName
    String position
    Address location
    String telephone
    String fax
    String email
    String url

    static constraints = {
        title inList: ["Mr", "Ms", "Dr"], blank: false
        firstName maxSize: 100, blank: false
        lastName maxSize: 100, blank: false
        position maxSize: 100, nullable: true
        location nullable: true
        telephone matches: /^\+\d{1,3}[\s.()-]*(\d[\s.()-]*){5,12}(x\d*)?$/, maxSize: 20, blank: false
        fax maxSize: 20, nullable: true
        email email: true, nullable: true
        url maxSize: 100, nullable: true
    }

    String toString() {
        "${title} ${firstName} ${lastName}"
    }
}
