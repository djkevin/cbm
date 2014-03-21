package cbm

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class   IndexController {

    def index() {
        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            println "redirecting to admin"
            redirect controller: "admin", action:"index"
        }

        if (SpringSecurityUtils.ifAllGranted('ROLE_USER')) {
            println "redirecting to report page"
            redirect controller: "report", action:"index"
        }


    }
}
