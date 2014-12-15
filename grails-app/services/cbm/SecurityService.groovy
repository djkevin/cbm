package cbm

import cbm.report.Report
import cbm.usermgt.AdminUser
import cbm.usermgt.SecUser
import cbm.usermgt.User
import grails.transaction.Transactional

@Transactional
class SecurityService {
	
    def springSecurityService


	/**
	 * Determine if the current user can view a given report.
	 * @param report
	 * @return true if the current user can view the report, false otherwise.
	 */
    public boolean canView(Report report) {
        SecUser user = springSecurityService.getCurrentUser()		
		return canView(user, report)
    }

	/**
	 * Determine if a given user can view a given report.
	 * @param user
	 * @param report
	 * @return true if the user can view the report, false otherwise.
	 */
    public boolean canView(SecUser user, Report report){
		if (user instanceof AdminUser) return true
		
        return user?.stateParty == report?.stateParty
    }
	
}
