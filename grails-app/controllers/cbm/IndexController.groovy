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
	        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
	            println "redirecting to admin"
	            redirect controller: "admin", action:"index"
	        }
	
	        if (SpringSecurityUtils.ifAllGranted('ROLE_USER')) {
	            println "redirecting to report page"
	            redirect controller: "report", action:"index"
	        }
			
			if (SpringSecurityUtils.ifAllGranted('ROLE_VIEWER')) {
				println "redirecting to report page"
				redirect controller: "report", action:"index"
			}
		}

    }
}
