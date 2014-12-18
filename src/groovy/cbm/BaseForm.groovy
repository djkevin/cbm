package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility

abstract class BaseForm {

    static auditable = true

    String title
    FormStatus formStatus  /** draft or completed */
	
	/** indicates whether this form can be viewed by the general public or not. If not, then it can be only viewed by State Parties. */
    Visibility visibility
    
	Date dateCreated
    Date lastUpdated


    static constraints = {

        formStatus blank:false
        visibility blank:false
    }

}
