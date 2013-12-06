package cbm

import grails.plugin.springsecurity.annotation.Secured

class IndexController {

    @Secured(['ROLE_ADMIN'])
    def index() { }
}
