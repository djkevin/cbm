package cbm

import cbm.report.Report
import cbm.usermgt.User
import grails.transaction.Transactional

@Transactional
class SecurityService {
    def springSecurityService


    public boolean canView(Report report) {
        User user = springSecurityService.getCurrentUser()
        return user?.stateParty == report?.stateParty
    }
}
