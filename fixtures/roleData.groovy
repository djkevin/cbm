/**
 * Created with IntelliJ IDEA.
 * User: jutliah
 * Date: 5/26/14
 * Time: 5:24 PM
 * To change this template use File | Settings | File Templates.
 */


import cbm.admin.Country
import cbm.admin.StateParty
import cbm.usermgt.SecRole
import cbm.usermgt.SecUserSecRole
import cbm.usermgt.User
import org.joda.time.LocalDate



/** create application roles */
fixture {

	roleViewer(SecRole) {
        authority = 'ROLE_VIEWER'
    }
	
    roleEditor(SecRole) {
        authority = 'ROLE_EDITOR'
    }
	
	roleSubmitter(SecRole) {
		authority = 'ROLE_SUBMITTER'
	}
	
	roleAdmin(SecRole) {
		authority = 'ROLE_ADMIN'
	}
}
