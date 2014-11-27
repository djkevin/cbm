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
import cbm.usermgt.AdminUser


/** 
 * Create various users and grant them roles.
 * Should be used for DEV or TEST environments only.
 * In PROD users should be created through SQL scripts 
 * or (if it exists) through the admin interface of the application.  
 */
fixture {

	// ------------- the admin user
	
	userAdmin(AdminUser) {
		username = "admin"
		password = "adminpass"
	}

	userRoleAdmin(SecUserSecRole) {
		secUser = userAdmin
		secRole = SecRole.findByAuthority('ROLE_ADMIN')
	}
	
	// ------------- users for some state parties, each user with a specific role.
	
	cheViewer(User) { 
		username="cheViewer"
		password="chepass"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))		
	}
	cheEditor(User) {
		username="cheEditor"
		password="chepass"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))
	}
	cheSubmitter(User) {
		username="cheSubmitter"
		password="chepass"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))
	}

	cheViewerRole(SecUserSecRole) {
		secUser = cheViewer
		secRole = SecRole.findByAuthority('ROLE_VIEWER')
	}
	cheEditorRole(SecUserSecRole) {
		secUser = cheEditor
		secRole = SecRole.findByAuthority('ROLE_EDITOR')
	}
	cheSubmitterRole(SecUserSecRole) {
		secUser = cheSubmitter
		secRole = SecRole.findByAuthority('ROLE_SUBMITTER')
	}
	
	// -------------- users for some state parties 
	
	user15(User) {
		username = "bel"
		password = "Sunning Bushings"
		stateParty = StateParty.findByCountry(Country.findByIso3("BEL"))
	}  	
	user145(User) {
		username = "swe"
		password = "Rationalizing Trustfulness"
		stateParty = StateParty.findByCountry(Country.findByIso3("SWE"))
	}
	user146(User) {
		username = "che"
		password = "Capitalising Immunology"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))
	}    
	user160(User) {
		username = "gbr"
		password = "Compared Jacaranda"
		stateParty = StateParty.findByCountry(Country.findByIso3("GBR"))
	}
	user161(User) {
		username = "usa"
		password = "Kickstarting Limerick"
		stateParty = StateParty.findByCountry(Country.findByIso3("USA"))
	}
	user162(User) {
		username = "ury"
		password = "Imagined Warranties"
		stateParty = StateParty.findByCountry(Country.findByIso3("URY"))
	} 	

    roleUser(SecRole) {
        authority = 'ROLE_USER'
    }
	
    userRoleSWE(SecUserSecRole) {
        secUser = user145
        secRole = roleUser
    }
	
    userRoleUS(SecUserSecRole) {
        secUser = user161
        secRole = roleUser
    }

    userRoleUK(SecUserSecRole) {
        secUser = user160
        secRole = roleUser
    }

    userRole162(SecUserSecRole) {
        secUser = user162
        secRole = roleUser
    }
	
    userRoleBEL(SecUserSecRole) {
        secUser = user15
        secRole = roleUser
    }
	
    userRoleCHE(SecUserSecRole) {
        secUser = user146
        secRole = roleUser
    }

}
