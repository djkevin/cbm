package cbm

abstract class BaseForm {

    //static auditable = true

    String title
    String formStatus
	
	/** indicates whether this form can be viewed by the general public or not. If not, then it can be only viewed by State Parties. */
    String visibility
    
	Date dateCreated
    Date lastUpdated


    static constraints = {

        formStatus inList: ['Draft', 'Completed']
        visibility inList: ['Public', 'Private']
    }

}
