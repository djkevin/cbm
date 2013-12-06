package cbm

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
class IndexController {

    def index() { }
}
