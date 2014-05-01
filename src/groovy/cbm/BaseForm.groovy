package cbm

abstract class BaseForm {

    static auditable = true

    String title
    String formStatus
    String visibility
    Date dateCreated
    Date lastUpdated


    static constraints = {

        formStatus inList: ['Draft', 'Completed']
        visibility inList: ['Public', 'Private']
    }

}
