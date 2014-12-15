package cbm.admin

import cbm.Address
import cbm.constants.Title

class NationalContact {

    static auditable = true
    static belongsTo = [stateParty: StateParty]
    static embedded = ['location']

    Title title
    String firstName
    String lastName
    String position
    Address location
    String telephone
    String fax
    String email
    String url
    Country country
    String organization

    static transients = ['name']

    static constraints = {
        title nullable: true
        firstName maxSize: 100, nullable: true
        lastName maxSize: 100, nullable: true
        position maxSize: 100, nullable: true
        location nullable: true
        telephone nullable: true, maxSize: 20, blank: false, matches: /^[0-9()-.\s \/]+$/ /*matches: /^\+\d{1,3}[\s.()-]*(\d[\s.()-]*){5,12}(x\d*)?$/,*/
        fax maxSize: 20, nullable: true, matches: /^[0-9()-.\s \/]+$/
        email email: true, nullable: true
        url maxSize: 100, nullable: true, url: true
        country nullable: false
        organization maxSize: 100, nullable: true, validator: { organization, object ->
            def err = true
            if ((!object.lastName || !object.firstName) && !organization) {        //either fName+lastName or Organisation must be filled in
                err = 'cbm.admin.nationalContact.organization.blank.message'
            }
            err
        }

    }

    String toString() {
        if (title && firstName && lastName) {
            "${title} ${firstName} ${lastName}"
        } else if (organization) {
            "${organization}"
        } else {
            "incomplete"
        }

    }

    String getName() {
        if (!lastName || !firstName){
            ""
        }else{
            "${firstName} ${lastName}"
        }

    }

}
