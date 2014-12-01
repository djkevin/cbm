package cbm

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.util.Environment

@Secured(["isAuthenticated()"]) // the index is available to all who manage to login to the system. No distinction by granted role.
class   IndexController {

    def index() {
		if (Environment.getCurrent()==Environment.DEVELOPMENT) {
			// simply render the index.gsp
		} else {	
			// in TEST or PROD render the admin or report page, depending on granted roles. 
			// This can be problematic if a user is granted both ADMIN role AND another role (any other role)! 
			// In principle users with ADMIN role should have NO other roles assigned, otherwise there's conflict of interest!
			// TODO: In the admin screens, make sure user can be granted only ADMIN role, or only other roles.
		 		
	        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
	            println "redirecting to admin"
	            redirect controller: "admin", action:"index"
	        } else { // all roles except ADMIN have the report page as default page.
				println "redirecting to report page"
				redirect controller: "report", action:"index"
			}
		}

    }
}
